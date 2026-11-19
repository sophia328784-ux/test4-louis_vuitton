package com.perfectcorp.thirdparty.com.google.common.util.concurrent;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes3.dex */
final class x implements Executor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f42440b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Executor f42441c;
    public /* synthetic */ b d;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        try {
            this.f42441c.execute(new y(this, runnable));
        } catch (RejectedExecutionException e2) {
            if (this.f42440b) {
                this.d.setException(e2);
            }
        }
    }
}
