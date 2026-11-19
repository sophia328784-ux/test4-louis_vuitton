package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseImplementation$ApiMethodImpl<R extends Result, A extends Api.AnyClient> extends BasePendingResult<R> implements BaseImplementation$ResultHolder<R> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseImplementation$ApiMethodImpl(Api api, GoogleApiClient googleApiClient) {
        super(googleApiClient);
        Preconditions.i(googleApiClient, "GoogleApiClient must not be null");
        Preconditions.i(api, "Api must not be null");
    }

    public abstract void i(Api.AnyClient anyClient);

    public final void j(Status status) {
        Preconditions.b(!status.W1(), "Failed result must not be success");
        f(c(status));
    }
}
