package com.vuitton.android.presentation.screen.connectivity.lightup.common.helper;

import android.content.Context;
import android.os.Build;
import androidx.core.content.ContextCompat;
import com.lightup.sdk.device.SpecificProperties;
import com.lightup.sdk.device.enums.LightupDeviceType;
import com.lightup.sdk.device.helpers.LightupHelper;
import com.lightup.sdk.device.helpers.LightupHelperInterface;
import com.lightup.sdk.device.model.WalkingModeConfig;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.BaseLightUpActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class LVLightUpHelperInstance {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static LightupHelper f56155a;

    public static LightupHelper a() {
        LightupHelper lightupHelper = f56155a;
        if (lightupHelper != null) {
            return lightupHelper;
        }
        Intrinsics.h("lightUpHelper");
        throw null;
    }

    public static void b(Context context, BaseLightUpActivity baseLightUpActivity, LightupDeviceType lightupDeviceType) {
        context.getClass();
        lightupDeviceType.getClass();
        if (Build.VERSION.SDK_INT >= 31 && ContextCompat.checkSelfPermission(context, "android.permission.BLUETOOTH_CONNECT") != 0) {
            throw new SecurityException("BLUETOOTH_CONNECT permission is required on Android 12+");
        }
        if (f56155a == null) {
            f56155a = new LightupHelper(SpecificProperties.KEEPALL_TOPOLOGY_ID, context, baseLightUpActivity);
        }
        if (lightupDeviceType == LightupDeviceType.KEEPALL) {
            LightupHelper.setAdminMode$default(a(), true, null, 2, null);
            WalkingModeConfig defaultKeepAllWalkingConfig = LightupHelper.INSTANCE.getDefaultKeepAllWalkingConfig();
            defaultKeepAllWalkingConfig.getClass();
            LightupHelperInterface deviceHelper = a().getDeviceHelper(lightupDeviceType);
            if (deviceHelper != null) {
                deviceHelper.setWalkingModeConfig(defaultKeepAllWalkingConfig, new LVLightUpHelper$setDefaultWalkingMode$1());
                return;
            }
            return;
        }
        if (lightupDeviceType == LightupDeviceType.X408PAIR) {
            LightupHelper.setAdminMode$default(a(), false, null, 2, null);
            WalkingModeConfig defaultX408WalkingConfig = LightupHelper.INSTANCE.getDefaultX408WalkingConfig();
            defaultX408WalkingConfig.getClass();
            LightupHelperInterface deviceHelper2 = a().getDeviceHelper(lightupDeviceType);
            if (deviceHelper2 != null) {
                deviceHelper2.setWalkingModeConfig(defaultX408WalkingConfig, new LVLightUpHelper$setDefaultWalkingMode$1());
            }
        }
    }
}
