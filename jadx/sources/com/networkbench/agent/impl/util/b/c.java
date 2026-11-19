package com.networkbench.agent.impl.util.b;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    public static <T> T a(Object obj, String str, T t, boolean z) {
        if (obj != null) {
            try {
                if (z) {
                    Field field = (Field) Class.class.getDeclaredMethod("getDeclaredField", String.class).invoke(obj.getClass(), str);
                    field.setAccessible(true);
                    return (T) field.get(obj);
                }
                Field declaredField = obj.getClass().getDeclaredField(str);
                declaredField.setAccessible(true);
                return (T) declaredField.get(obj);
            } catch (Exception unused) {
            }
        }
        return t;
    }

    public static boolean b(Class<?> cls, String str, Object obj) throws Exception {
        return new a(cls, str).c(obj);
    }

    public static <T> T a(Class<?> cls, String str, Object obj) throws Exception {
        return (T) new a(cls, str).a(obj);
    }

    public static boolean a(Class<?> cls, String str, Object obj, Object obj2) throws Exception {
        return new a(cls, str).a(obj, obj2);
    }

    public static <T> T a(Class<?> cls, String str, Object obj, Object... objArr) throws Exception {
        return (T) new b(cls, str, new Class[0]).a(obj, objArr);
    }

    public static <T> T a(Class<?> cls, String str) throws Exception {
        return (T) new a(cls, str).a();
    }

    public static <T> T a(Object obj, String str, T t) {
        return (T) a(obj, str, (Object) t, true);
    }

    public static <T> T a(Object obj, String str, boolean z) {
        return (T) a(obj, str, (Object) null, z);
    }

    public static Method a(Object obj, boolean z, String str, Class<?>... clsArr) {
        try {
            if (z) {
                Method method = (Method) Class.class.getDeclaredMethod("getDeclaredMethod", String.class, Class[].class).invoke(obj.getClass(), str, clsArr);
                method.setAccessible(true);
                return method;
            }
            Method declaredMethod = obj.getClass().getDeclaredMethod(str, clsArr);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Exception unused) {
            return null;
        }
    }
}
