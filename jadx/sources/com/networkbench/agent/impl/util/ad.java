package com.networkbench.agent.impl.util;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes2.dex */
public final class ad {
    public static Field a(Class<?> cls, Class<?> cls2) throws d {
        Field[] declaredFields = cls.getDeclaredFields();
        Field field = null;
        for (int i2 = 0; i2 < declaredFields.length; i2++) {
            if (cls2.isAssignableFrom(declaredFields[i2].getType())) {
                if (field != null) {
                    throw new d("Field is ambiguous: " + field.getName() + ", " + declaredFields[i2].getName());
                }
                field = declaredFields[i2];
            }
        }
        if (field != null) {
            field.setAccessible(true);
            return field;
        }
        b.a(field);
        throw new d("Could not find field matching type: ".concat(cls2.getName()));
    }

    public static Object b(Field field, Object obj) {
        if (field == null || obj == null) {
            return null;
        }
        field.setAccessible(true);
        try {
            return field.get(obj);
        } catch (ThreadDeath e2) {
            throw e2;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String b(String str, String str2) {
        try {
            Class<?> cls = Class.forName(str);
            return (String) cls.getField(str2).get(cls);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static <C, T> void a(Field field, C c2, T t) throws d {
        if (field == null) {
            b.a(field);
            return;
        }
        field.setAccessible(true);
        try {
            field.set(c2, t);
        } catch (ThreadDeath e2) {
            throw e2;
        } catch (Throwable th) {
            throw new d("Unable to set field", th);
        }
    }

    public static <C, F> F a(Field field, C c2) throws d {
        if (field == null) {
            b.a(field);
            return null;
        }
        field.setAccessible(true);
        try {
            return (F) field.get(c2);
        } catch (ThreadDeath e2) {
            throw e2;
        } catch (Throwable th) {
            throw new d("Unable to get value of field", th);
        }
    }

    public static Field a(Class cls, Class cls2, boolean z) throws com.networkbench.agent.impl.socket.a.a {
        Field[] declaredFields = cls.getDeclaredFields();
        Field field = null;
        for (int i2 = 0; i2 < declaredFields.length; i2++) {
            if (cls2.isAssignableFrom(declaredFields[i2].getType())) {
                if (field == null) {
                    field = declaredFields[i2];
                } else {
                    throw new com.networkbench.agent.impl.socket.a.a("Field is ambiguous: " + field.getName() + ", " + declaredFields[i2].getName());
                }
            }
        }
        if (field != null) {
            field.setAccessible(true);
            return field;
        }
        if (z) {
            throw new com.networkbench.agent.impl.socket.a.a("Could not find field matching type: ".concat(cls2.getName()));
        }
        return field;
    }

    public static void a(Class<?> cls, Object obj, Object obj2) throws IllegalAccessException, IllegalArgumentException {
        Field[] fields = cls.getFields();
        for (int i2 = 0; i2 < fields.length; i2++) {
            fields[i2].setAccessible(true);
            Field field = fields[i2];
            field.set(obj2, field.get(obj));
        }
    }

    public static void a(AccessibleObject accessibleObject, AccessibleObject[] accessibleObjectArr) {
        b.a(accessibleObject);
        if (accessibleObject != null) {
            accessibleObject.setAccessible(true);
        }
        if (accessibleObjectArr == null || accessibleObjectArr.length <= 0) {
            return;
        }
        a(accessibleObjectArr);
    }

    public static void a(AccessibleObject[] accessibleObjectArr) {
        b.a(accessibleObjectArr);
        for (AccessibleObject accessibleObject : accessibleObjectArr) {
            b.a(accessibleObject);
            if (accessibleObject != null) {
                accessibleObject.setAccessible(true);
            }
        }
    }

    public static <T> T a(Object obj, String str) throws Exception {
        Field fieldA = a((Class) obj.getClass(), str);
        if (fieldA == null) {
            return null;
        }
        fieldA.setAccessible(true);
        return (T) fieldA.get(obj);
    }

    private static Field a(Class cls, String str) throws Exception {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e2) {
            Class superclass = cls.getSuperclass();
            if (superclass != null) {
                return a(superclass, str);
            }
            throw e2;
        }
    }

    public static String a(String str, String str2) {
        try {
            Class<?> cls = Class.forName(str);
            return (String) cls.getMethod(str2, null).invoke(cls, null);
        } catch (Throwable unused) {
            return null;
        }
    }
}
