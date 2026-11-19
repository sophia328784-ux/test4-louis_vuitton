package com.vuitton.android.presentation.screen.connectivity.lightup.common.manager;

import com.lightup.sdk.device.enums.LightupDeviceType;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class LVLightUpMonitoringManager$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f56160a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int[] f56161b;

    static {
        int[] iArr = new int[LightupDeviceType.values().length];
        try {
            iArr[LightupDeviceType.KEEPALL.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[LightupDeviceType.X408PAIR.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        f56160a = iArr;
        int[] iArr2 = new int[LVLightUpDeviceType.values().length];
        try {
            iArr2[LVLightUpDeviceType.KEEPALL.ordinal()] = 1;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr2[LVLightUpDeviceType.X408PAIR.ordinal()] = 2;
        } catch (NoSuchFieldError unused4) {
        }
        f56161b = iArr2;
    }
}
