package com.google.android.gms.internal.measurement;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.common.util.concurrent.AsyncCallable;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.SettableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
final class zzkv extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AtomicBoolean f30694a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f30695b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SettableFuture f30696c;
    public final /* synthetic */ AsyncCallable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Executor f30697e;

    public zzkv(AtomicBoolean atomicBoolean, Context context, SettableFuture settableFuture, AsyncCallable asyncCallable, Executor executor) {
        this.f30694a = atomicBoolean;
        this.f30695b = context;
        this.f30696c = settableFuture;
        this.d = asyncCallable;
        this.f30697e = executor;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (this.f30694a.compareAndSet(false, true)) {
            try {
                this.f30695b.unregisterReceiver(this);
            } catch (IllegalArgumentException unused) {
            }
            this.f30696c.setFuture(Futures.k(this.d, this.f30697e));
        }
    }
}
