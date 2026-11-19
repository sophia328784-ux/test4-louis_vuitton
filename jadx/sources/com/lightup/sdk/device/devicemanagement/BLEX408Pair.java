package com.lightup.sdk.device.devicemanagement;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u0010R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\n¨\u0006\u0011"}, d2 = {"Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;", "", "leftDevice", "Lcom/lightup/sdk/device/devicemanagement/BLELightup;", "rightDevice", "<init>", "(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V", "getLeftDevice", "()Lcom/lightup/sdk/device/devicemanagement/BLELightup;", "setLeftDevice", "(Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V", "getRightDevice", "setRightDevice", "found", "", "getName", "", "library"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BLEX408Pair {
    private BLELightup leftDevice;
    private BLELightup rightDevice;

    public /* synthetic */ BLEX408Pair(BLELightup bLELightup, BLELightup bLELightup2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : bLELightup, (i2 & 2) != 0 ? null : bLELightup2);
    }

    public final boolean found() {
        return (this.leftDevice == null || this.rightDevice == null) ? false : true;
    }

    public final BLELightup getLeftDevice() {
        return this.leftDevice;
    }

    public final String getName() {
        BLELightup bLELightup = this.leftDevice;
        String name = bLELightup != null ? bLELightup.getName() : null;
        BLELightup bLELightup2 = this.rightDevice;
        return d21.j(name, bLELightup2 != null ? bLELightup2.getName() : null);
    }

    public final BLELightup getRightDevice() {
        return this.rightDevice;
    }

    public final void setLeftDevice(BLELightup bLELightup) {
        this.leftDevice = bLELightup;
    }

    public final void setRightDevice(BLELightup bLELightup) {
        this.rightDevice = bLELightup;
    }

    public BLEX408Pair(BLELightup bLELightup, BLELightup bLELightup2) {
        this.leftDevice = bLELightup;
        this.rightDevice = bLELightup2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BLEX408Pair() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }
}
