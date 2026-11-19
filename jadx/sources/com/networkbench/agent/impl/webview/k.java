package com.networkbench.agent.impl.webview;

import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes2.dex */
public final class k {
    public static Field a(Class<?> cls, Class<?> cls2, boolean z) {
        Field[] declaredFields = cls.getDeclaredFields();
        Field field = null;
        for (int i2 = 0; i2 < declaredFields.length; i2++) {
            if (cls2.isAssignableFrom(declaredFields[i2].getType())) {
                field = declaredFields[i2];
            }
        }
        if (field == null) {
            return field;
        }
        field.setAccessible(true);
        return field;
    }

    public static Object a(Field field, Object obj) {
        if (field == null) {
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
}
