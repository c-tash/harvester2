package ru.umeta.harvester.timer;


import ru.umeta.harvesting.base.IHarvester;
import ru.umeta.harvesting.base.model.Query;

import java.io.File;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.HashMap;
import java.util.Map;

public class ModuleEngine {

    private final static Map<String, URLClassLoader> hashMap = new HashMap<>();

    public static int executeClassMethod(String path, String name, Query query) {
        try {
            if (!hashMap.containsKey(path)) {
                File file = new File(path);
                URL jarUrl = new URL("jar", "", "file:" + file.getAbsolutePath() + "!/");
                hashMap.put(path,
                        new URLClassLoader(new URL[]{jarUrl}, ModuleEngine.class.getClassLoader()));
            }

            Class harvesterClass = Class.forName(name, true, hashMap.get(path));
            IHarvester harvesterInstance = (IHarvester) harvesterClass.newInstance();
            return harvesterInstance.harvest(query);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

}
