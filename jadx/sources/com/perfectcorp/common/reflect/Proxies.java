package com.perfectcorp.common.reflect;

import com.perfectcorp.thirdparty.com.google.common.base.Strings;
import defpackage.md;
import defpackage.oo0;
import java.lang.reflect.Proxy;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Proxies {
    public static Object a(Class cls, Object obj) {
        Objects.requireNonNull(obj);
        oo0 oo0Var = new oo0(obj, 1);
        if (cls.isInterface()) {
            return cls.cast(Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, oo0Var));
        }
        md.n(Strings.a("%s is not an interface", cls));
        return null;
    }
}
