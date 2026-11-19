package com.google.android.gms.common.api;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BasePendingResult;

/* JADX INFO: loaded from: classes2.dex */
final class zad<R extends Result> extends BasePendingResult<R> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Result f29136k;

    public zad(GoogleApiClient googleApiClient, Result result) {
        super(googleApiClient);
        this.f29136k = result;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final Result c(Status status) {
        return this.f29136k;
    }
}
