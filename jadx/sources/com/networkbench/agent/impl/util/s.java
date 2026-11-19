package com.networkbench.agent.impl.util;

import android.text.TextUtils;
import com.sightcall.universal.media.offline.FileUtils;
import java.io.Serializable;
import java.net.InetAddress;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f38398a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f38399b = com.networkbench.agent.impl.c.f.a();

    private s() {
    }

    public static String a(Serializable serializable) {
        if (serializable == null) {
            return "";
        }
        try {
            String[] strArrSplit = serializable.toString().split("/");
            if (strArrSplit != null && strArrSplit.length == 2) {
                if (!TextUtils.isEmpty(strArrSplit[0])) {
                    return strArrSplit[0];
                }
                String str = strArrSplit[1];
                if (str != null) {
                    return str.contains(":") ? strArrSplit[1].split(":")[0] : strArrSplit[1];
                }
            }
        } catch (Throwable unused) {
        }
        return "";
    }

    public static String b(Serializable serializable) {
        if (serializable == null) {
            return "";
        }
        try {
            String[] strArrSplit = serializable.toString().split("/");
            if (strArrSplit != null && strArrSplit.length == 2 && !TextUtils.isEmpty(strArrSplit[1])) {
                if (strArrSplit[1].contains(FileUtils.HIDDEN_PREFIX) && strArrSplit[1].contains(":")) {
                    return strArrSplit[1].split(":")[0];
                }
                return strArrSplit[1];
            }
        } catch (Throwable unused) {
        }
        return "";
    }

    public static Map<String, Object> a(Map<String, List<String>> map) {
        List<String> list;
        TreeMap treeMap = new TreeMap();
        if (map != null) {
            for (String str : map.keySet()) {
                if (str != null && (list = map.get(str)) != null && list.size() > 0) {
                    treeMap.put(str, list.get(0));
                }
            }
        }
        return treeMap;
    }

    public static boolean a(int i2) {
        return i2 == 80 || i2 == 443;
    }

    public static String a(String str) {
        if (str == null) {
            return "";
        }
        try {
            return new URL(str).getHost();
        } catch (Throwable th) {
            f38399b.a("getHostFromUrl is error:" + th.getMessage() + ", url:" + str);
            return "";
        }
    }

    public static String a(InetAddress[] inetAddressArr) {
        StringBuilder sb = new StringBuilder();
        if (inetAddressArr != null && inetAddressArr.length > 0) {
            for (InetAddress inetAddress : inetAddressArr) {
                sb.append(inetAddress.toString());
                sb.append(";");
            }
        }
        return sb.toString();
    }
}
