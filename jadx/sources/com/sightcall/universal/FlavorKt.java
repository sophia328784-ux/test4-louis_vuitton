package com.sightcall.universal;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0006\u0010\u0005\u001a\u00020\u0004\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"AppTypeInstalled", "", "AppTypeInstant", "isInstalledApp", "", "isInstantApp", "sdk_installedRelease"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class FlavorKt {
    private static final String AppTypeInstalled = "installed";
    private static final String AppTypeInstant = "instant";

    public static final boolean isInstalledApp() {
        return true;
    }

    public static final boolean isInstantApp() {
        return false;
    }
}
