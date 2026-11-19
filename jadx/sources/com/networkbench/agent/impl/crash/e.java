package com.networkbench.agent.impl.crash;

import android.text.TextUtils;
import com.networkbench.com.google.gson.JsonObject;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Map<String, String> f36649a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static com.networkbench.agent.impl.c.e f36650b = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static List<String> f36651c = new Vector();

    public static class a extends LinkedHashMap<String, String> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final int f36652a = 20;

        @Override // java.util.LinkedHashMap
        public boolean removeEldestEntry(Map.Entry<String, String> entry) {
            return size() > 20;
        }
    }

    public static void a(String str, String str2) {
        if (str.length() > 64 || str2.length() > 100) {
            f36650b.a("Set User Crash Setting failed, key :" + str + " value : " + str2);
        } else {
            f36649a.put(str, str2);
            com.networkbench.agent.impl.data.a.h.a(str, str2);
        }
        f36650b.a("setUserCrashSetting : " + f36649a.size());
    }

    public static void b(String str, String str2) {
        if (str == null) {
            f36650b.a("Set User Crash Setting failed, key is null!");
            return;
        }
        if (TextUtils.isEmpty(str2)) {
            f36649a.put(str, str2);
        } else {
            int length = str2.length();
            if (length > 100) {
                length = 100;
            }
            f36649a.put(str, str2.substring(0, length));
            com.networkbench.agent.impl.data.a.h.a(str, str2);
        }
        f36650b.a("setUserCrashSetting : " + f36649a.size());
    }

    public static void b(String str) {
        f36651c.add(str);
    }

    public static JsonObject a() {
        try {
            f36650b.a("getCustInfo : " + f36649a.size());
            JsonObject jsonObject = new JsonObject();
            for (String str : f36649a.keySet()) {
                jsonObject.addProperty(str, f36649a.get(str));
            }
            return jsonObject;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static boolean a(String str) {
        return f36651c.contains(str);
    }
}
