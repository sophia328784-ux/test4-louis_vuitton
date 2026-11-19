package com.networkbench.agent.impl.logtrack;

import defpackage.v7;
import java.io.File;
import java.io.FileFilter;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class Logan {
    public static int STACK_INVOKE_INDEX = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static OnLoganProtocolStatus f37438a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static d f37439b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static boolean f37440c = false;

    public class a implements FileFilter {
        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return file.isFile() && file.getName().contains(j.f37510a);
        }
    }

    public static void a(File file) {
        File[] fileArrListFiles;
        if (file == null || !file.exists() || (fileArrListFiles = file.listFiles()) == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isFile() && file2.length() == 0) {
                file2.delete();
            }
        }
    }

    public static void d(String str, String str2, int i2) {
        d dVar = f37439b;
        if (dVar != null) {
            dVar.a(str, i2, c.LOG_LEVEL_DEBUG, str2, System.currentTimeMillis());
        } else {
            v7.h("Please initialize Logan first");
        }
    }

    public static void deleteAllCopyFile(File file) {
        File[] fileArrListFiles;
        if (file == null || !file.exists() || (fileArrListFiles = file.listFiles(new a())) == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            file2.delete();
        }
    }

    public static void e(String str, String str2, int i2) {
        d dVar = f37439b;
        if (dVar != null) {
            dVar.a(str, i2, c.LOG_LEVEL_ERROR, str2, System.currentTimeMillis());
        } else {
            v7.h("Please initialize Logan first");
        }
    }

    public static void f() {
        d dVar = f37439b;
        if (dVar != null) {
            dVar.a();
        } else {
            v7.h("Please initialize Logan first");
        }
    }

    public static Map<String, Long> getAllFilesInfo() {
        File[] fileArrA;
        d dVar = f37439b;
        if (dVar == null) {
            v7.h("Please initialize Logan first");
            return null;
        }
        File fileB = dVar.b();
        if (!fileB.exists() || (fileArrA = j.a(fileB)) == null) {
            return null;
        }
        if (fileArrA.length > 1) {
            j.a(fileArrA);
        }
        HashMap map = new HashMap();
        for (File file : fileArrA) {
            try {
                map.put(j.a(Long.parseLong(file.getName())), Long.valueOf(file.length()));
            } catch (NumberFormatException unused) {
            }
        }
        return map;
    }

    public static void i(String str, String str2, int i2) {
        d dVar = f37439b;
        if (dVar != null) {
            dVar.a(str, i2, c.LOG_LEVEL_INFO, str2, System.currentTimeMillis());
        } else {
            v7.h("Please initialize Logan first");
        }
    }

    public static void init(LoganConfig loganConfig) {
        d dVarA = d.a(loganConfig);
        f37439b = dVarA;
        if (dVarA != null) {
            deleteAllCopyFile(dVarA.b());
            a(f37439b.b());
        }
    }

    public static void s(String str, String str2, String str3, String str4, String str5, String str6, String str7, SendLogCallback sendLogCallback) {
        HashMap map = new HashMap();
        map.put("fileDate", str2);
        map.put("appId", str3);
        map.put("unionId", str4);
        map.put("deviceId", str5);
        map.put("buildVersion", str6);
        map.put("appVersion", str7);
        map.put("platform", "1");
        s(str, str2, map, sendLogCallback);
    }

    public static void setDebug(boolean z) {
        f37440c = z;
    }

    public static void setOnLoganProtocolStatus(OnLoganProtocolStatus onLoganProtocolStatus) {
        f37438a = onLoganProtocolStatus;
    }

    public static void v(String str, String str2, int i2) {
        d dVar = f37439b;
        if (dVar != null) {
            dVar.a(str, i2, c.LOG_LEVEL_VERBOSE, str2, System.currentTimeMillis());
        } else {
            v7.h("Please initialize Logan first");
        }
    }

    public static void w(String str, String str2, int i2) {
        d dVar = f37439b;
        if (dVar != null) {
            dVar.a(str, i2, c.LOG_LEVEL_WARNING, str2, System.currentTimeMillis());
        } else {
            v7.h("Please initialize Logan first");
        }
    }

    public static void a(String str, int i2) {
        OnLoganProtocolStatus onLoganProtocolStatus = f37438a;
        if (onLoganProtocolStatus != null) {
            onLoganProtocolStatus.loganProtocolStatus(str, i2);
        }
    }

    public static void s(String[] strArr, SendLogRunnable sendLogRunnable) {
        d dVar = f37439b;
        if (dVar != null) {
            dVar.a(strArr, sendLogRunnable);
        } else {
            v7.h("Please initialize Logan first");
        }
    }

    public static void s(String str, String str2, Map<String, String> map, SendLogCallback sendLogCallback) {
        if (f37439b != null) {
            i iVar = new i();
            iVar.a(str);
            iVar.a(sendLogCallback);
            iVar.a(map);
            f37439b.a(new String[]{str2}, iVar);
            return;
        }
        v7.h("Please initialize Logan first");
    }
}
