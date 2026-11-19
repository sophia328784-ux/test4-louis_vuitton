package com.networkbench.agent.impl.util;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f38371a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f38372b = "appmonitor";

    private e() {
    }

    private static String a(Object... objArr) {
        if (objArr == null || objArr.length <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Object obj : objArr) {
            if (obj != null) {
                sb.append(obj.toString());
            }
        }
        return sb.toString();
    }

    public static int b(Object obj, String str) {
        if (f38371a) {
            return Log.d(obj.getClass().getSimpleName(), str);
        }
        return -1;
    }

    public static int c(Object obj, String str) {
        if (f38371a) {
            return Log.i(obj.getClass().getSimpleName(), str);
        }
        return -1;
    }

    public static int d(Object obj, String str) {
        if (f38371a) {
            return Log.w(obj.getClass().getSimpleName(), str);
        }
        return -1;
    }

    public static int e(Object obj, String str) {
        if (f38371a) {
            return Log.e(obj.getClass().getSimpleName(), str);
        }
        return -1;
    }

    public static int b(String str, String str2) {
        if (!f38371a || str2 == null) {
            return -1;
        }
        return Log.d(str, str2);
    }

    public static int c(String str, String str2) {
        if (!f38371a || str2 == null) {
            return -1;
        }
        return Log.i(str, str2);
    }

    public static int d(String str, String str2) {
        if (!f38371a || str2 == null) {
            return -1;
        }
        return Log.w(str, str2);
    }

    public static int e(String str, Object... objArr) {
        if (f38371a) {
            return Log.e(str, a(objArr));
        }
        return -1;
    }

    public static int b(String str, Object... objArr) {
        if (f38371a) {
            return Log.d(str, a(objArr));
        }
        return -1;
    }

    public static int c(String str, Object... objArr) {
        if (f38371a) {
            return Log.i(str, a(objArr));
        }
        return -1;
    }

    public static int d(String str, Object... objArr) {
        if (f38371a) {
            return Log.w(str, a(objArr));
        }
        return -1;
    }

    public static int e(String str, String str2, Throwable th) {
        if (!f38371a || str2 == null) {
            return -1;
        }
        return Log.e(str, str2, th);
    }

    public static int b(String str, String str2, Throwable th) {
        if (!f38371a || str2 == null) {
            return -1;
        }
        return Log.d(str, str2, th);
    }

    public static int c(String str, String str2, Throwable th) {
        if (!f38371a || str2 == null) {
            return -1;
        }
        return Log.i(str, str2, th);
    }

    public static int d(String str, String str2, Throwable th) {
        if (!f38371a || str2 == null) {
            return -1;
        }
        return Log.w(str, str2, th);
    }

    public static int e(String str, String str2) {
        if (!f38371a || str2 == null) {
            return -1;
        }
        return Log.e(str, str2);
    }

    public static int b(String str) {
        if (!f38371a || str == null) {
            return -1;
        }
        return Log.i(f38372b, str);
    }

    public static int c(String str) {
        if (!f38371a || str == null) {
            return -1;
        }
        return Log.d(f38372b, str);
    }

    public static int d(String str) {
        if (!f38371a || str == null) {
            return -1;
        }
        return Log.v(f38372b, str);
    }

    public static int a(Object obj) {
        if (!f38371a || obj == null) {
            return -1;
        }
        return Log.i(f38372b, obj.toString());
    }

    public static int a(String str, String str2) {
        if (!f38371a || str2 == null) {
            return -1;
        }
        return Log.v(str, str2);
    }

    public static void a(Throwable th) {
        th.getMessage();
    }

    public static int a(String str, Object... objArr) {
        if (f38371a) {
            return Log.v(str, a(objArr));
        }
        return -1;
    }

    public static void a(String str) {
        f38372b = str;
    }

    public static int a(String str, String str2, Throwable th) {
        if (!f38371a || str2 == null) {
            return -1;
        }
        return Log.v(str, str2, th);
    }

    public static int a(Object obj, String str) {
        if (f38371a) {
            return Log.v(obj.getClass().getSimpleName(), str);
        }
        return -1;
    }
}
