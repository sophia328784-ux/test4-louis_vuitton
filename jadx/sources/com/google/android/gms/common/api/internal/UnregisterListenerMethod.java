package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;

/* JADX INFO: loaded from: classes2.dex */
public abstract class UnregisterListenerMethod<A extends Api.AnyClient, L> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ListenerHolder.ListenerKey f29066a;

    public UnregisterListenerMethod(ListenerHolder.ListenerKey listenerKey) {
        this.f29066a = listenerKey;
    }
}
