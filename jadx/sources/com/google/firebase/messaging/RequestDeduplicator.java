package com.google.firebase.messaging;

import androidx.collection.ArrayMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
class RequestDeduplicator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Executor f35274a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayMap f35275b = new ArrayMap();

    public interface GetTokenRequest {
    }

    public RequestDeduplicator(ExecutorService executorService) {
        this.f35274a = executorService;
    }
}
