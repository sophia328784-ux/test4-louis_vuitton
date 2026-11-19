package com.google.android.gms.dynamic;

import android.os.IBinder;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.d21;
import defpackage.md;
import defpackage.r81;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes2.dex */
public final class ObjectWrapper<T> extends IObjectWrapper.Stub {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f29386a;

    public ObjectWrapper(Object obj) {
        this.f29386a = obj;
    }

    public static Object G2(IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper instanceof ObjectWrapper) {
            return ((ObjectWrapper) iObjectWrapper).f29386a;
        }
        IBinder iBinderAsBinder = iObjectWrapper.asBinder();
        Field[] declaredFields = iBinderAsBinder.getClass().getDeclaredFields();
        Field field = null;
        int i2 = 0;
        for (Field field2 : declaredFields) {
            if (!field2.isSynthetic()) {
                i2++;
                field = field2;
            }
        }
        if (i2 != 1) {
            int length = declaredFields.length;
            md.n(d21.f(length, "Unexpected number of IObjectWrapper declared fields: ", new StringBuilder(String.valueOf(length).length() + 53)));
            return null;
        }
        Preconditions.h(field);
        if (field.isAccessible()) {
            md.n("IObjectWrapper declared field not private!");
            return null;
        }
        field.setAccessible(true);
        try {
            return field.get(iBinderAsBinder);
        } catch (IllegalAccessException e2) {
            r81.j("Could not access the field in remoteBinder.", e2);
            return null;
        } catch (NullPointerException e3) {
            r81.j("Binder object is null.", e3);
            return null;
        }
    }
}
