package com.perfectcorp.thirdparty.io.reactivex.disposables;

import com.perfectcorp.thirdparty.io.reactivex.functions.Action;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Disposables {
    public static Disposable a(Action action) {
        return new a(action);
    }

    public static Disposable b(Runnable runnable) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(runnable, "run is null");
        return new d(runnable);
    }
}
