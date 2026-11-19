package com.google.android.gms.internal.measurement;

import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzpw implements Runnable {
    private final /* synthetic */ ListenableFuture zza;

    public /* synthetic */ zzpw(ListenableFuture listenableFuture) {
        this.zza = listenableFuture;
    }

    @Override // java.lang.Runnable
    public final /* synthetic */ void run() {
        try {
            Futures.d(this.zza);
        } catch (ExecutionException e2) {
            zzrn.b().post(new Runnable() { // from class: com.google.android.gms.internal.measurement.zzpv
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    throw new RuntimeException(e2.getCause());
                }
            });
        }
    }
}
