package com.networkbench.agent.impl.util;

import android.util.LruCache;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class ac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final LruCache<String, Class<?>> f38303a = new LruCache<>(64);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Set<String> f38304b = new HashSet();

    public static Class<?> a(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        Class<?> cls = null;
        for (int i2 = 0; i2 < strArr.length; i2++) {
            try {
                LruCache<String, Class<?>> lruCache = f38303a;
                Class<?> cls2 = lruCache.get(strArr[i2]);
                if (cls2 == null && !f38304b.contains(strArr[i2])) {
                    cls2 = Class.forName(strArr[i2]);
                    lruCache.put(strArr[i2], cls2);
                }
                cls = cls2;
            } catch (Throwable unused) {
                f38304b.add(strArr[i2]);
                cls = null;
            }
            if (cls != null) {
                break;
            }
        }
        return cls;
    }

    public static Method b(Class<?> cls, String str, Class<?>... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    public static <T> T a(String[] strArr, Object obj, String... strArr2) {
        Class<?> clsA = a(strArr);
        if (clsA != null) {
            return (T) a(clsA, obj, strArr2);
        }
        return null;
    }

    public static <T> T a(Class<?> cls, Object obj, String... strArr) {
        Field fieldA = a(cls, strArr);
        if (fieldA == null) {
            return null;
        }
        try {
            return (T) fieldA.get(obj);
        } catch (IllegalAccessException | Exception unused) {
            return null;
        }
    }

    public static Class<?> a(String str) {
        try {
            LruCache<String, Class<?>> lruCache = f38303a;
            Class<?> cls = lruCache.get(str);
            if (cls != null || f38304b.contains(str)) {
                return cls;
            }
            Class<?> cls2 = Class.forName(str);
            lruCache.put(str, cls2);
            return cls2;
        } catch (ClassNotFoundException unused) {
            f38304b.add(str);
            return null;
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static boolean a(Object obj, String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return false;
        }
        boolean zIsInstance = false;
        for (String str : strArr) {
            try {
                LruCache<String, Class<?>> lruCache = f38303a;
                Class<?> cls = lruCache.get(str);
                if (cls == null && !f38304b.contains(str)) {
                    cls = Class.forName(str);
                    lruCache.put(str, cls);
                }
                if (cls != null) {
                    zIsInstance = cls.isInstance(obj);
                }
            } catch (Throwable unused) {
                f38304b.add(str);
            }
            if (zIsInstance) {
                break;
            }
        }
        return zIsInstance;
    }

    public static <T> T a(Object obj, String str, Object... objArr) {
        Class[] clsArr = new Class[objArr.length];
        for (int i2 = 0; i2 < objArr.length; i2++) {
            clsArr[i2] = objArr[i2].getClass();
        }
        Method methodB = b(obj.getClass(), str, clsArr);
        if (methodB == null) {
            return null;
        }
        try {
            return (T) methodB.invoke(obj, objArr);
        } catch (Exception unused) {
            return null;
        }
    }

    public static <T> T a(Class<?> cls, String str, Object... objArr) {
        if (cls == null) {
            return null;
        }
        Class[] clsArr = new Class[objArr.length];
        for (int i2 = 0; i2 < objArr.length; i2++) {
            clsArr[i2] = objArr[i2].getClass();
        }
        Method methodB = b(cls, str, clsArr);
        if (methodB != null) {
            try {
                return (T) methodB.invoke(null, objArr);
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static Method a(Class<?> cls, String str, Class<?>... clsArr) {
        while (cls != Object.class) {
            try {
                Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
                if (declaredMethod != null) {
                    return declaredMethod;
                }
            } catch (NoSuchMethodException unused) {
                cls = cls.getSuperclass();
            }
        }
        return null;
    }

    public static Field a(Class<?> cls, String... strArr) {
        if (strArr != null) {
            try {
                if (strArr.length != 0) {
                    Field declaredField = null;
                    for (String str : strArr) {
                        try {
                            declaredField = cls.getDeclaredField(str);
                        } catch (NoSuchFieldException unused) {
                            declaredField = null;
                        }
                        if (declaredField != null) {
                            break;
                        }
                    }
                    if (declaredField == null) {
                        return null;
                    }
                    declaredField.setAccessible(true);
                    return declaredField;
                }
            } catch (Exception unused2) {
            }
        }
        return null;
    }

    public static Field a(Class<?> cls, String str) {
        while (cls != Object.class) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                declaredField.setAccessible(true);
                return declaredField;
            } catch (NoSuchFieldException unused) {
                cls = cls.getSuperclass();
            }
        }
        return null;
    }

    public static <T> T a(Object obj, String str) {
        Field fieldA = a(obj.getClass(), str);
        if (fieldA == null) {
            return null;
        }
        try {
            return (T) fieldA.get(obj);
        } catch (IllegalAccessException unused) {
            return null;
        }
    }
}
