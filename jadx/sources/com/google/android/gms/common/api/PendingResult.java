package com.google.android.gms.common.api;

import com.google.android.gms.common.api.Result;

/* JADX INFO: loaded from: classes2.dex */
public abstract class PendingResult<R extends Result> {

    public interface StatusListener {
        void a(Status status);
    }

    public void a(StatusListener statusListener) {
        throw new UnsupportedOperationException();
    }

    public abstract Result b();
}
