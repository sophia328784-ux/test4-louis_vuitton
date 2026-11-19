package com.bumptech.glide.module;

import android.content.Context;
import defpackage.cj;
import defpackage.pq0;
import defpackage.r81;
import defpackage.v7;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class ManifestParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f24910a;

    public ManifestParser(Context context) {
        this.f24910a = context;
    }

    public static GlideModule a(String str) {
        try {
            Class<?> cls = Class.forName(str);
            try {
                Object objNewInstance = cls.getDeclaredConstructor(null).newInstance(null);
                if (objNewInstance instanceof GlideModule) {
                    return (GlideModule) objNewInstance;
                }
                v7.h(cj.i(objNewInstance, "Expected instanceof GlideModule, but found: "));
                return null;
            } catch (IllegalAccessException e2) {
                b(cls, e2);
                throw null;
            } catch (InstantiationException e3) {
                b(cls, e3);
                throw null;
            } catch (NoSuchMethodException e4) {
                b(cls, e4);
                throw null;
            } catch (InvocationTargetException e5) {
                b(cls, e5);
                throw null;
            }
        } catch (ClassNotFoundException e6) {
            r81.j("Unable to find GlideModule implementation", e6);
            return null;
        }
    }

    public static void b(Class cls, ReflectiveOperationException reflectiveOperationException) {
        throw new RuntimeException(pq0.m(cls, "Unable to instantiate GlideModule implementation for "), reflectiveOperationException);
    }
}
