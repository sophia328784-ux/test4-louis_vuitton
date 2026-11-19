package com.perfectcorp.thirdparty.com.google.common.util.concurrent;

/* JADX INFO: loaded from: classes3.dex */
final class g implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ int f42421a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ ListenableFuture f42422b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private /* synthetic */ f.a f42423c;

    public g(f.a aVar, int i2, ListenableFuture listenableFuture) {
        this.f42423c = aVar;
        this.f42421a = i2;
        this.f42422b = listenableFuture;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f42423c.a(this.f42421a, this.f42422b);
        } finally {
            this.f42423c.e();
        }
    }
}
