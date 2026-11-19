package com.perfectcorp.thirdparty.com.google.common.util.concurrent;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public abstract class w {
    public static Executor a() {
        return k.f42431a;
    }

    public static Executor b(Executor executor, b bVar) {
        executor.getClass();
        if (executor == k.f42431a) {
            return executor;
        }
        x xVar = new x();
        xVar.f42441c = executor;
        xVar.d = bVar;
        xVar.f42440b = true;
        return xVar;
    }
}
