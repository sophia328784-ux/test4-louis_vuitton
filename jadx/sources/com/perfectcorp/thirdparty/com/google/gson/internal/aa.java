package com.perfectcorp.thirdparty.com.google.gson.internal;

import defpackage.mt;
import java.lang.reflect.Modifier;

/* JADX INFO: loaded from: classes3.dex */
public abstract class aa {
    public static /* synthetic */ void b(Class cls) {
        String name;
        String str;
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            name = cls.getName();
            str = "Interface can't be instantiated! Interface name: ";
        } else {
            if (!Modifier.isAbstract(modifiers)) {
                return;
            }
            name = cls.getName();
            str = "Abstract class can't be instantiated! Class name: ";
        }
        mt.i(str.concat(name));
    }

    public abstract Object a(Class cls);
}
