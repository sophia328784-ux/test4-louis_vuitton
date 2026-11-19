package com.google.android.gms.internal.common;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzj {
    public static Object a(Class cls, String str, zzi... zziVarArr) {
        int length = zziVarArr.length;
        Class<?>[] clsArr = new Class[length];
        Object[] objArr = new Object[length];
        for (int i2 = 0; i2 < zziVarArr.length; i2++) {
            zzi zziVar = zziVarArr[i2];
            zziVar.getClass();
            clsArr[i2] = zziVar.f29819a;
            objArr[i2] = zziVarArr[i2].f29820b;
        }
        return cls.getDeclaredMethod(str, clsArr).invoke(null, objArr);
    }
}
