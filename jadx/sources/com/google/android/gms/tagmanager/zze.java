package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.tagmanager.ModuleDescriptor;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
abstract class zze {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile DynamiteModule f32081a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile zzt f32082b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final HashMap f32083c = new HashMap();
    public static final HashMap d = new HashMap();

    public static Object a(Class cls, String str) {
        try {
            Class<?> cls2 = Class.forName(str);
            for (Class<?> cls3 : cls2.getInterfaces()) {
                if (cls3.equals(cls)) {
                    try {
                        return cls2.getConstructor(null).newInstance(null);
                    } catch (IllegalAccessException | InstantiationException | NoSuchMethodException | SecurityException | InvocationTargetException unused) {
                    }
                }
            }
        } catch (ClassNotFoundException unused2) {
            String.valueOf(str).concat(" can't be found in the application.");
        }
        return null;
    }

    public static DynamiteModule b(Context context) {
        DynamiteModule dynamiteModuleC;
        DynamiteModule dynamiteModule = f32081a;
        if (dynamiteModule != null) {
            return dynamiteModule;
        }
        synchronized (zze.class) {
            try {
                dynamiteModuleC = f32081a;
                if (f32081a == null) {
                    dynamiteModuleC = DynamiteModule.c(context, DynamiteModule.f29390f, ModuleDescriptor.MODULE_ID);
                    f32081a = dynamiteModuleC;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return dynamiteModuleC;
    }

    public static zzt c(Context context) {
        zzt zztVarAsInterface;
        zzt zztVar = f32082b;
        if (zztVar != null) {
            return zztVar;
        }
        synchronized (zze.class) {
            zztVarAsInterface = f32082b;
            if (zztVarAsInterface == null) {
                try {
                    zztVarAsInterface = zzs.asInterface(b(context).b("com.google.android.gms.tagmanager.TagManagerApiImpl"));
                    f32082b = zztVarAsInterface;
                } catch (DynamiteModule.LoadingException e2) {
                    throw new RuntimeException(e2);
                }
            }
        }
        return zztVarAsInterface;
    }
}
