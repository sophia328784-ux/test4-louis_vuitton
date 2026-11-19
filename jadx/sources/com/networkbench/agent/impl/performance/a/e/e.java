package com.networkbench.agent.impl.performance.a.e;

import android.util.Pair;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class e {
    public static String a(Object[] objArr, String str) {
        if (objArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Object obj : objArr) {
            if (z) {
                z = false;
            } else {
                sb.append(str);
            }
            sb.append(obj.toString());
        }
        return sb.toString();
    }

    public static Map<String, String> b(List<Pair<String, String>> list) {
        Object obj;
        if (a(list)) {
            return Collections.EMPTY_MAP;
        }
        HashMap map = new HashMap();
        for (Pair<String, String> pair : list) {
            if (pair != null && (obj = pair.first) != null) {
                map.put(obj, pair.second);
            }
        }
        return map;
    }

    public static String[] a(Set<String> set) {
        String[] strArr = new String[set.size()];
        Iterator<String> it = set.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            strArr[i2] = it.next();
            i2++;
        }
        return strArr;
    }

    public static boolean a(List<?> list) {
        return list == null || list.size() == 0;
    }
}
