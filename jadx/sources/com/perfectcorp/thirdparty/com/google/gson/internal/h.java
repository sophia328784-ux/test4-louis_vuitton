package com.perfectcorp.thirdparty.com.google.gson.internal;

import defpackage.bm;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes3.dex */
final class h implements x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final aa f42527a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Class f42528b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Type f42529c;

    public h(Type type, Class cls) {
        aa aeVar;
        this.f42528b = cls;
        this.f42529c = type;
        try {
            try {
                try {
                    Class<?> cls2 = Class.forName("sun.misc.Unsafe");
                    Field declaredField = cls2.getDeclaredField("theUnsafe");
                    declaredField.setAccessible(true);
                    aeVar = new ab(cls2.getMethod("allocateInstance", Class.class), declaredField.get(null));
                } catch (Exception unused) {
                    aeVar = new ae();
                }
            } catch (Exception unused2) {
                Method declaredMethod = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                declaredMethod.setAccessible(true);
                aeVar = new ad(declaredMethod);
            }
        } catch (Exception unused3) {
            Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
            declaredMethod2.setAccessible(true);
            int iIntValue = ((Integer) declaredMethod2.invoke(null, Object.class)).intValue();
            Method declaredMethod3 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
            declaredMethod3.setAccessible(true);
            aeVar = new ac(declaredMethod3, iIntValue);
        }
        this.f42527a = aeVar;
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.internal.x
    public final Object a() {
        try {
            return this.f42527a.a(this.f42528b);
        } catch (Exception e2) {
            bm.h("Unable to invoke no-args constructor for ", this.f42529c, ". Register an InstanceCreator with Gson for this type may fix this problem.", e2);
            return null;
        }
    }
}
