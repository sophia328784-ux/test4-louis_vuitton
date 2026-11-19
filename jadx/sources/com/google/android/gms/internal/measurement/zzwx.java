package com.google.android.gms.internal.measurement;

import com.google.common.util.concurrent.AsyncCallable;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes2.dex */
public final class zzwx implements AsyncCallable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzws f31058a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AsyncCallable f31059b;

    public zzwx(zzws zzwsVar, AsyncCallable asyncCallable) {
        this.f31058a = zzwsVar;
        this.f31059b = asyncCallable;
    }

    @Override // com.google.common.util.concurrent.AsyncCallable
    public final ListenableFuture call() {
        zzwq zzwqVarC = zzvy.c();
        zzws zzwsVarB = zzvy.b(zzwqVarC, this.f31058a);
        try {
            ListenableFuture listenableFutureCall = this.f31059b.call();
            zzvy.b(zzwqVarC, zzwsVarB);
            listenableFutureCall.getClass();
            return listenableFutureCall;
        } catch (Throwable th) {
            try {
                zzvu.a(th);
                throw th;
            } catch (Throwable th2) {
                zzvy.b(zzwqVarC, zzwsVarB);
                throw th2;
            }
        }
    }

    public final String toString() {
        AsyncCallable asyncCallable = this.f31059b;
        StringBuilder sb = new StringBuilder(asyncCallable.toString().length() + 14);
        sb.append("propagating=[");
        sb.append(asyncCallable);
        sb.append("]");
        return sb.toString();
    }
}
