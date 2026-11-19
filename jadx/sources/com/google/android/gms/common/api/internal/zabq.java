package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.api.GoogleApi;

/* JADX INFO: loaded from: classes2.dex */
public final class zabq extends zaad {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GoogleApi f29086b;

    public zabq(GoogleApi googleApi) {
        super("Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.");
        this.f29086b = googleApi;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final Looper a() {
        return this.f29086b.g;
    }

    public final BaseImplementation$ApiMethodImpl b(BaseImplementation$ApiMethodImpl baseImplementation$ApiMethodImpl) {
        this.f29086b.h(1, baseImplementation$ApiMethodImpl);
        return baseImplementation$ApiMethodImpl;
    }
}
