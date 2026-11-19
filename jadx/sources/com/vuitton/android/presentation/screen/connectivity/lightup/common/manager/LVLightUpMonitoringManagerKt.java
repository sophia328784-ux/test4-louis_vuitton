package com.vuitton.android.presentation.screen.connectivity.lightup.common.manager;

import com.lightup.sdk.device.enums.LightupDeviceType;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVLightUpMonitoringManagerKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56162a;

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
            f56162a = iArr;
        }
    }

    public static final LVLightUpDeviceType a(LightupDeviceType lightupDeviceType) {
        lightupDeviceType.getClass();
        int i2 = WhenMappings.f56162a[lightupDeviceType.ordinal()];
        if (i2 == 1) {
            return LVLightUpDeviceType.KEEPALL;
        }
        if (i2 != 2) {
            return null;
        }
        return LVLightUpDeviceType.X408PAIR;
    }
}
