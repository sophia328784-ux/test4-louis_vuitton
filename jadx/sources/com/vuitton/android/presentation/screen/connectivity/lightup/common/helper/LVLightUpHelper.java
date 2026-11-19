package com.vuitton.android.presentation.screen.connectivity.lightup.common.helper;

import com.lightup.sdk.animation.CreatorProject;
import com.lightup.sdk.device.enums.DeviceMode;
import com.lightup.sdk.device.enums.LightupDeviceType;
import com.lightup.sdk.device.helpers.LightupHelper;
import com.lightup.sdk.device.helpers.LightupHelperInterface;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class LVLightUpHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static LightupDeviceType f56151a;

    public static void a() {
        LightupHelper lightupHelperA = LVLightUpHelperInstance.a();
        LightupDeviceType lightupDeviceType = f56151a;
        if (lightupDeviceType != null) {
            lightupHelperA.disconnect(lightupDeviceType);
        } else {
            Intrinsics.h("lightUpDeviceType");
            throw null;
        }
    }

    public static CreatorProject b() {
        List<CreatorProject> list;
        LightupHelper lightupHelperA = LVLightUpHelperInstance.a();
        LightupDeviceType lightupDeviceType = f56151a;
        if (lightupDeviceType == null) {
            Intrinsics.h("lightUpDeviceType");
            throw null;
        }
        LightupHelperInterface deviceHelper = lightupHelperA.getDeviceHelper(lightupDeviceType);
        CreatorProject currentlyPlayingAnimation = deviceHelper != null ? deviceHelper.getCurrentlyPlayingAnimation() : null;
        LightupHelper lightupHelperA2 = LVLightUpHelperInstance.a();
        LightupDeviceType lightupDeviceType2 = f56151a;
        if (lightupDeviceType2 == null) {
            Intrinsics.h("lightUpDeviceType");
            throw null;
        }
        LightupHelperInterface deviceHelper2 = lightupHelperA2.getDeviceHelper(lightupDeviceType2);
        List<CreatorProject> deviceAnimations = deviceHelper2 != null ? deviceHelper2.getDeviceAnimations() : null;
        return (currentlyPlayingAnimation != null || (list = deviceAnimations) == null || list.isEmpty()) ? currentlyPlayingAnimation : deviceAnimations.get(0);
    }

    public static boolean c() {
        LightupHelper lightupHelperA = LVLightUpHelperInstance.a();
        LightupDeviceType lightupDeviceType = f56151a;
        if (lightupDeviceType != null) {
            LightupHelperInterface deviceHelper = lightupHelperA.getDeviceHelper(lightupDeviceType);
            return deviceHelper != null && deviceHelper.isConnected();
        }
        Intrinsics.h("lightUpDeviceType");
        throw null;
    }

    public static boolean d() {
        LightupHelper lightupHelperA = LVLightUpHelperInstance.a();
        LightupDeviceType lightupDeviceType = f56151a;
        if (lightupDeviceType != null) {
            LightupHelperInterface deviceHelper = lightupHelperA.getDeviceHelper(lightupDeviceType);
            return deviceHelper != null && deviceHelper.isReady();
        }
        Intrinsics.h("lightUpDeviceType");
        throw null;
    }

    public static void e(DeviceMode deviceMode) {
        deviceMode.getClass();
        LightupHelper lightupHelperA = LVLightUpHelperInstance.a();
        LightupDeviceType lightupDeviceType = f56151a;
        if (lightupDeviceType == null) {
            Intrinsics.h("lightUpDeviceType");
            throw null;
        }
        LightupHelperInterface deviceHelper = lightupHelperA.getDeviceHelper(lightupDeviceType);
        if (deviceHelper != null) {
            deviceHelper.setMode(deviceMode);
        }
    }
}
