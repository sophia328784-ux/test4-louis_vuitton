package com.perfectcorp.perfectlib;

import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;

/* JADX INFO: loaded from: classes3.dex */
public final class AccessoryFunctionalities {
    public final boolean isNecklaceLiveEnabled;
    public final boolean isNecklacePhotoEnabled;

    public AccessoryFunctionalities(com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a aVar) {
        this.isNecklaceLiveEnabled = aVar.getBoolean("5ba67514-b41e-44ad-9f1b-ef4d16a4bef2", true);
        this.isNecklacePhotoEnabled = aVar.getBoolean("fccc5881-4bd9-41cf-b821-42a70a38c352", true);
    }

    public final String toString() {
        MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("AccessoryFunctionalities");
        toStringHelper.c("isNecklaceLiveEnabled", this.isNecklaceLiveEnabled);
        toStringHelper.c("isNecklacePhotoEnabled", this.isNecklacePhotoEnabled);
        return toStringHelper.toString();
    }

    public AccessoryFunctionalities() {
        this.isNecklaceLiveEnabled = false;
        this.isNecklacePhotoEnabled = false;
    }
}
