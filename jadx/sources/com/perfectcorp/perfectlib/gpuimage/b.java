package com.perfectcorp.perfectlib.gpuimage;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes3.dex */
final class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Bitmap f40178a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ a f40179b;

    public b(a aVar, Bitmap bitmap) {
        this.f40179b = aVar;
        this.f40178a = bitmap;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f40179b.f40175a = this.f40178a;
    }
}
