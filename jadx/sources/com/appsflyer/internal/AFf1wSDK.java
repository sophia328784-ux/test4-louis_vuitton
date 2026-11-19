package com.appsflyer.internal;

import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class AFf1wSDK {
    private static final long registerClient;

    static {
        Duration.Companion companion = Duration.INSTANCE;
        registerClient = Duration.e(DurationKt.g(3, DurationUnit.SECONDS));
    }
}
