package com.perfectcorp.common;

import dalvik.system.PathClassLoader;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class PfCommonsJni {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static List f39156a;

    public static String a() {
        return new File(((PathClassLoader) PfCommons.b().getClassLoader()).findLibrary("perfect")).getParent();
    }
}
