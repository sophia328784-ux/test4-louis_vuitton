package com.linkplay.bonjour.manage;

import com.linkplay.bonjour.model.LinkPlayService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class ServiceManager {
    private static Map<String, LinkPlayService> serviceMap = new HashMap();

    public static void add(String str, LinkPlayService linkPlayService) {
        synchronized (ServiceManager.class) {
            serviceMap.put(str, linkPlayService);
        }
    }

    public static void clear() {
        synchronized (ServiceManager.class) {
            serviceMap.clear();
        }
    }

    public static LinkPlayService get(String str) {
        LinkPlayService linkPlayService;
        synchronized (ServiceManager.class) {
            linkPlayService = serviceMap.get(str);
        }
        return linkPlayService;
    }

    public static List<LinkPlayService> getAll() {
        ArrayList arrayList;
        synchronized (ServiceManager.class) {
            try {
                Set<Map.Entry<String, LinkPlayService>> setEntrySet = serviceMap.entrySet();
                arrayList = new ArrayList();
                Iterator<Map.Entry<String, LinkPlayService>> it = setEntrySet.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().getValue());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return arrayList;
    }

    public static void remove(String str) {
        synchronized (ServiceManager.class) {
            serviceMap.remove(str);
        }
    }
}
