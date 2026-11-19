package com.google.android.gms.common.util;

import android.os.Process;
import android.os.WorkSource;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public abstract class WorkSourceUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Method f29346a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Method f29347b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Method f29348c;
    public static final Method d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Boolean f29349e;

    static {
        Method method;
        Method method2;
        Method method3;
        Method method4;
        Class cls = Integer.TYPE;
        Process.myUid();
        try {
            method = WorkSource.class.getMethod("add", cls);
        } catch (Exception unused) {
            method = null;
        }
        f29346a = method;
        try {
            method2 = WorkSource.class.getMethod("add", cls, String.class);
        } catch (Exception unused2) {
            method2 = null;
        }
        f29347b = method2;
        try {
            method3 = WorkSource.class.getMethod("size", null);
        } catch (Exception unused3) {
            method3 = null;
        }
        f29348c = method3;
        try {
            WorkSource.class.getMethod("get", cls);
        } catch (Exception unused4) {
        }
        try {
            WorkSource.class.getMethod("getName", cls);
        } catch (Exception unused5) {
        }
        try {
            WorkSource.class.getMethod("createWorkChain", null);
        } catch (Exception unused6) {
        }
        try {
            Class.forName("android.os.WorkSource$WorkChain").getMethod("addNode", cls, String.class);
        } catch (Exception unused7) {
        }
        try {
            method4 = WorkSource.class.getMethod("isEmpty", null);
            try {
                method4.setAccessible(true);
            } catch (Exception unused8) {
            }
        } catch (Exception unused9) {
            method4 = null;
        }
        d = method4;
        f29349e = null;
    }

    public static void a(WorkSource workSource, int i2, String str) {
        Method method = f29347b;
        if (method != null) {
            if (str == null) {
                str = "";
            }
            try {
                method.invoke(workSource, Integer.valueOf(i2), str);
                return;
            } catch (Exception e2) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e2);
                return;
            }
        }
        Method method2 = f29346a;
        if (method2 != null) {
            try {
                method2.invoke(workSource, Integer.valueOf(i2));
            } catch (Exception e3) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e3);
            }
        }
    }

    public static boolean b(WorkSource workSource) {
        int iIntValue;
        Method method = d;
        if (method != null) {
            try {
                Object objInvoke = method.invoke(workSource, null);
                Preconditions.h(objInvoke);
                return ((Boolean) objInvoke).booleanValue();
            } catch (Exception unused) {
            }
        }
        Method method2 = f29348c;
        if (method2 != null) {
            try {
                Object objInvoke2 = method2.invoke(workSource, null);
                Preconditions.h(objInvoke2);
                iIntValue = ((Integer) objInvoke2).intValue();
            } catch (Exception e2) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e2);
                iIntValue = 0;
            }
        } else {
            iIntValue = 0;
        }
        return iIntValue == 0;
    }
}
