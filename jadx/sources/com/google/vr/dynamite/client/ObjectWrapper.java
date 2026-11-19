package com.google.vr.dynamite.client;

import android.content.Context;
import android.os.IBinder;
import defpackage.md;
import defpackage.r81;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes2.dex */
public final class ObjectWrapper<T> extends c {
    private final T wrappedObject;

    /* JADX WARN: Multi-variable type inference failed */
    public ObjectWrapper(Context context) {
        this.wrappedObject = context;
    }

    public static <T> T unwrap(IObjectWrapper iObjectWrapper, Class<T> cls) {
        if (iObjectWrapper == null) {
            return null;
        }
        if (iObjectWrapper instanceof ObjectWrapper) {
            return ((ObjectWrapper) iObjectWrapper).wrappedObject;
        }
        IBinder iBinderAsBinder = iObjectWrapper.asBinder();
        Field field = null;
        for (Field field2 : iBinderAsBinder.getClass().getDeclaredFields()) {
            if (!field2.isSynthetic()) {
                if (field != null) {
                    field = null;
                    break;
                }
                field = field2;
            }
        }
        if (field == null) {
            md.n("The concrete class implementing IObjectWrapper must have exactly *one* declared private field for the wrapped object.  Preferably, this is an instance of the ObjectWrapper<T> class.");
            return null;
        }
        if (field.isAccessible()) {
            md.n("The concrete class implementing IObjectWrapper must have exactly one declared *private* field for the wrapped object. Preferably, this is an instance of the ObjectWrapper<T> class.");
            return null;
        }
        field.setAccessible(true);
        try {
            Object obj = field.get(iBinderAsBinder);
            if (obj == null) {
                return null;
            }
            if (cls.isInstance(obj)) {
                return cls.cast(obj);
            }
            throw new IllegalArgumentException("remoteBinder is the wrong class.");
        } catch (IllegalAccessException e2) {
            r81.j("Could not access the field in remoteBinder.", e2);
            return null;
        } catch (IllegalArgumentException e3) {
            r81.j("remoteBinder is the wrong class.", e3);
            return null;
        } catch (NullPointerException e4) {
            r81.j("Binder object is null.", e4);
            return null;
        }
    }
}
