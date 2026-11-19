package com.lightup.sdk.device.ble.scanner.listeners;

import com.lightup.sdk.device.devicemanagement.BLEX408Pair;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&¨\u0006\tÀ\u0006\u0003"}, d2 = {"Lcom/lightup/sdk/device/ble/scanner/listeners/X408PairScanProcessListener;", "", "onDeviceFound", "", "device", "Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;", "onScanEnd", "cancelled", "", "library"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface X408PairScanProcessListener {
    void onDeviceFound(BLEX408Pair device);

    void onScanEnd(boolean cancelled);
}
