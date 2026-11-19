package com.perfectcorp.thirdparty.com.google.common.util.concurrent;

import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes3.dex */
public class ListenableFutureTask<V> extends FutureTask<V> implements ListenableFuture<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m f42385a;

    private ListenableFutureTask(Callable<V> callable) {
        super(callable);
        this.f42385a = new m();
    }

    public static <V> ListenableFutureTask<V> create(Callable<V> callable) {
        return new ListenableFutureTask<>(callable);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture
    public void addListener(Runnable runnable, Executor executor) {
        m mVar = this.f42385a;
        mVar.getClass();
        Preconditions.d(runnable, "Runnable was null.");
        Preconditions.d(executor, "Executor was null.");
        synchronized (mVar) {
            try {
                if (mVar.f42434b) {
                    m.a(runnable, executor);
                } else {
                    mVar.f42433a = new m.a(runnable, executor, mVar.f42433a);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.util.concurrent.FutureTask
    public void done() {
        m mVar = this.f42385a;
        synchronized (mVar) {
            try {
                if (mVar.f42434b) {
                    return;
                }
                mVar.f42434b = true;
                m.a aVar = mVar.f42433a;
                m.a aVar2 = null;
                mVar.f42433a = null;
                while (aVar != null) {
                    m.a aVar3 = aVar.f42437c;
                    aVar.f42437c = aVar2;
                    aVar2 = aVar;
                    aVar = aVar3;
                }
                while (aVar2 != null) {
                    m.a(aVar2.f42435a, aVar2.f42436b);
                    aVar2 = aVar2.f42437c;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
