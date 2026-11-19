package com.sightcall.universal.di;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0014\u0010\u0000\u001a\u00020\u00018@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"sdkInjector", "Lcom/sightcall/universal/di/SDKInjectorI;", "getSdkInjector", "()Lcom/sightcall/universal/di/SDKInjectorI;", "sdk_installedRelease"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class SDKInjector {
    public static final SDKInjectorI getSdkInjector() {
        return SDKInjectorI.INSTANCE.getInjector();
    }
}
