package com.google.android.gms.internal.measurement;

import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes2.dex */
public final class zzwy implements AsyncFunction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzws f31060a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AsyncFunction f31061b;

    public zzwy(zzws zzwsVar, AsyncFunction asyncFunction) {
        this.f31060a = zzwsVar;
        this.f31061b = asyncFunction;
    }

    @Override // com.google.common.util.concurrent.AsyncFunction
    public final ListenableFuture apply(Object obj) {
        zzwq zzwqVarC = zzvy.c();
        zzws zzwsVarB = zzvy.b(zzwqVarC, this.f31060a);
        try {
            ListenableFuture listenableFutureApply = this.f31061b.apply(obj);
            if (listenableFutureApply == null) {
                throw new IllegalStateException("AsyncFunction should return a ListenableFuture instead of null.");
            }
            zzvy.b(zzwqVarC, zzwsVarB);
            return listenableFutureApply;
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
        AsyncFunction asyncFunction = this.f31061b;
        StringBuilder sb = new StringBuilder(asyncFunction.toString().length() + 14);
        sb.append("propagating=[");
        sb.append(asyncFunction);
        sb.append("]");
        return sb.toString();
    }
}
