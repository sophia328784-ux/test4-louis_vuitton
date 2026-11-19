package com.vuitton.android.presentation.screen.connectivity.lightup.common.interfaces;

import com.lightup.sdk.device.devicemanagement.LightupDevice;
import com.lightup.sdk.device.enums.LightupDeviceType;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/interfaces/LightUpScanFragmentInterface;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/interfaces/LightUpFragmentInterface;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface LightUpScanFragmentInterface extends LightUpFragmentInterface {
    void A();

    void h(LightupDevice lightupDevice, LightupDeviceType lightupDeviceType);
}
