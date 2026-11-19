package com.google.android.gms.internal.measurement;

import android.net.Uri;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzvb extends zztf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzafc f30997a;

    public zzvb(zzafc zzafcVar) {
        this.f30997a = zzafcVar;
    }

    @Override // com.google.android.gms.internal.measurement.zztf
    public final ListenableFuture a(final IOException iOException, zztg zztgVar) {
        if (!(iOException.getCause() instanceof zzaeh)) {
            return Futures.f(iOException);
        }
        ListenableFuture listenableFutureG = Futures.g(this.f30997a);
        final zzui zzuiVar = ((zzty) zztgVar).f30951a;
        AsyncFunction asyncFunction = new AsyncFunction() { // from class: com.google.android.gms.internal.measurement.zzuf
            @Override // com.google.common.util.concurrent.AsyncFunction
            public final /* synthetic */ ListenableFuture apply(Object obj) throws IOException {
                zzui zzuiVar2 = zzuiVar;
                zzuiVar2.c((Uri) Futures.d(zzuiVar2.f30967b), obj);
                return Futures.h();
            }
        };
        int i2 = zzxa.f31062a;
        return Futures.c(Futures.m(listenableFutureG, new zzwy(zzvy.a(), asyncFunction), zzuiVar.d), IOException.class, new AsyncFunction() { // from class: com.google.android.gms.internal.measurement.zzva
            @Override // com.google.common.util.concurrent.AsyncFunction
            public final /* synthetic */ ListenableFuture apply(Object obj) throws IOException {
                IOException iOException2 = iOException;
                iOException2.addSuppressed((IOException) obj);
                throw iOException2;
            }
        }, MoreExecutors.b());
    }
}
