package com.appsflyer.internal;

import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class AFe1oSDK {
    private static final long AFKeystoreWrapper;

    static {
        Duration.Companion companion = Duration.INSTANCE;
        AFKeystoreWrapper = Duration.e(DurationKt.g(3, DurationUnit.SECONDS));
    }
}
