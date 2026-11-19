package com.google.android.gms.internal.measurement;

import android.content.Context;
import com.google.common.base.Supplier;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzqe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f30825a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Supplier f30826b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Supplier f30827c;
    public final Supplier d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile int f30828e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CopyOnWriteArrayList f30829f = new CopyOnWriteArrayList();
    public final Object g = new Object();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile ListenableFuture f30830h = null;

    public zzqe(Context context, Supplier supplier, Supplier supplier2, Supplier supplier3) {
        this.f30825a = context;
        this.f30826b = supplier;
        this.f30827c = supplier2;
        this.d = supplier3;
    }
}
