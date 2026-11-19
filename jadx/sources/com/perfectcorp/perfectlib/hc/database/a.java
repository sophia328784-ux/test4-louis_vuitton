package com.perfectcorp.perfectlib.hc.database;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
final class a implements Callable<Void> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Runnable f40256a;

    public a(Runnable runnable) {
        this.f40256a = runnable;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Void call() throws Exception {
        this.f40256a.run();
        return null;
    }
}
