package com.vuitton.android.presentation.screen.connectivity.lightup.common.manager;

import com.lightup.sdk.device.devicemanagement.LightupDevice;
import com.lightup.sdk.device.enums.PairOrientation;
import com.lightup.sdk.device.features.process.monitoring.LightupMonitoringListener;
import com.vuitton.android.presentation.screen.connectivity.lightup.LightUpActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;", "Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SneakerMonitoringManager implements LightupMonitoringListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SneakerMonitoringManager f56163a = new SneakerMonitoringManager();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static LightUpActivity f56164b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static LightupDevice f56165c;
    public static Boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Boolean f56166e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static Boolean f56167f;
    public static Boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static Boolean f56168h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f56169i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f56170j;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56171a;

        static {
            int[] iArr = new int[PairOrientation.values().length];
            try {
                iArr[PairOrientation.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PairOrientation.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f56171a = iArr;
        }
    }

    @Override // com.lightup.sdk.device.features.process.monitoring.LightupMonitoringListener
    public final void onAnimationPlaying() {
        LightUpActivity lightUpActivity = f56164b;
        if (lightUpActivity != null) {
            lightUpActivity.J();
        }
    }

    @Override // com.lightup.sdk.device.features.process.monitoring.LightupMonitoringListener
    public final void onBatteryLevel(PairOrientation pairOrientation, int i2, boolean z) {
        pairOrientation.getClass();
        int[] iArr = WhenMappings.f56171a;
        int i3 = iArr[pairOrientation.ordinal()];
        boolean z2 = true;
        if (i3 == 1) {
            f56169i = i2;
        } else if (i3 == 2) {
            f56170j = i2;
        }
        LightUpActivity lightUpActivity = f56164b;
        if (lightUpActivity != null) {
            lightUpActivity.N(pairOrientation);
        }
        if (f56167f == null || g == null) {
            int i4 = iArr[pairOrientation.ordinal()];
            if (i4 == 1) {
                f56167f = Boolean.valueOf(z);
            } else if (i4 == 2) {
                g = Boolean.valueOf(z);
            }
        }
        Boolean bool = f56167f;
        if (bool == null || g == null) {
            return;
        }
        if (f56168h == null) {
            Boolean bool2 = Boolean.TRUE;
            if (!bool.equals(bool2) && !Intrinsics.c(g, bool2)) {
                z2 = false;
            }
            f56168h = Boolean.valueOf(z2);
            LightUpActivity lightUpActivity2 = f56164b;
            if (lightUpActivity2 != null) {
                lightUpActivity2.L(z);
                return;
            }
            return;
        }
        int i5 = iArr[pairOrientation.ordinal()];
        if (i5 != 1) {
            if (i5 != 2 || Intrinsics.c(g, Boolean.valueOf(z))) {
                return;
            }
        } else if (Intrinsics.c(f56167f, Boolean.valueOf(z))) {
            return;
        }
        int i6 = iArr[pairOrientation.ordinal()];
        if (i6 == 1) {
            f56167f = Boolean.valueOf(z);
        } else if (i6 == 2) {
            g = Boolean.valueOf(z);
        }
        Boolean bool3 = f56167f;
        Boolean bool4 = Boolean.TRUE;
        if (!Intrinsics.c(bool3, bool4) && !Intrinsics.c(g, bool4)) {
            z2 = false;
        }
        Boolean boolValueOf = Boolean.valueOf(z2);
        f56168h = boolValueOf;
        LightUpActivity lightUpActivity3 = f56164b;
        if (lightUpActivity3 != null) {
            lightUpActivity3.L(boolValueOf.equals(bool4));
        }
    }

    @Override // com.lightup.sdk.device.features.process.monitoring.LightupMonitoringListener
    public final void onDeviceStatusChanged() {
        LightUpActivity lightUpActivity = f56164b;
        if (lightUpActivity != null) {
            lightUpActivity.onDeviceStatusChanged();
        }
    }

    @Override // com.lightup.sdk.device.features.process.monitoring.LightupMonitoringListener
    public final void onNewAnimationsAvailable() {
        d = Boolean.TRUE;
        LightUpActivity lightUpActivity = f56164b;
        if (lightUpActivity != null) {
            lightUpActivity.K();
        }
    }

    @Override // com.lightup.sdk.device.features.process.monitoring.LightupMonitoringListener
    public final void onRequiresAnimationsUpdate() {
        f56166e = Boolean.TRUE;
        LightUpActivity lightUpActivity = f56164b;
        if (lightUpActivity != null) {
            lightUpActivity.M();
        }
    }
}
