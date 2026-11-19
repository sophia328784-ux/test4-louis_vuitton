package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.api.ApiException;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzml implements AsyncFunction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzml f30742a = new zzml();

    @Override // com.google.common.util.concurrent.AsyncFunction
    public final ListenableFuture apply(Object obj) {
        ApiException apiException = (ApiException) obj;
        throw new zzmk(apiException.f28974b.f29008b, apiException.getMessage(), apiException);
    }
}
