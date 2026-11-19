package com.perfectcorp.perfectlib;

import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes3.dex */
public final class HandFunctionalities {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f39625a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f39626b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f39627c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f39628e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f39629f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f39630h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f39631i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f39632j;

    public HandFunctionalities(com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a aVar) {
        this.f39625a = aVar.getBoolean("4dc308f1-eada-4e49-aa1e-0b3bfd3d509e", true);
        this.f39626b = aVar.getBoolean("25f91c6e-7522-4294-8a86-c2349ecfa982", true);
        this.f39627c = aVar.getBoolean("adbd8b48-5bcb-465b-9079-c0ad816007b5", true);
        this.d = aVar.getBoolean("ca796e8e-5512-43a9-baa7-8cfafb16051c", true);
        this.f39628e = aVar.getBoolean("9fb8b2f9-c36b-4bdf-ae05-ba0ac6a4eeea", true);
        this.f39629f = aVar.getBoolean("05b09271-4b74-40f1-8281-752cee3036c2", true);
        this.g = aVar.getBoolean("6e526351-5032-48d2-8f3e-961c82d8af39", true);
        this.f39630h = aVar.getBoolean("8a4482f9-6238-4c9d-a238-14fca3e7abab", true);
        this.f39631i = aVar.getBoolean("46b597e9-62f2-4b6b-9503-f8166528db97", true);
        this.f39632j = aVar.getBoolean("772a8c80-37ad-4fec-81d0-30da76c322e2", true);
    }

    public final String toString() {
        MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("HandFunctionalities");
        toStringHelper.c("isNailLiveEnabled", this.f39625a);
        toStringHelper.c("isNailPhotoEnabled", this.f39626b);
        toStringHelper.c("isRingLiveEnabled", this.f39627c);
        toStringHelper.c("isRingPhotoEnabled", this.d);
        toStringHelper.c("isWatchLiveEnabled", this.f39628e);
        toStringHelper.c("isWatchPhotoEnabled", this.f39629f);
        toStringHelper.c("isBraceletLiveEnabled", this.g);
        toStringHelper.c("isBraceletPhotoEnabled", this.f39630h);
        toStringHelper.c("isJewelryLiveEnabled", this.f39631i);
        toStringHelper.c("isJewelryPhotoEnabled", this.f39632j);
        return toStringHelper.toString();
    }

    public HandFunctionalities() {
        this.f39625a = false;
        this.f39626b = false;
        this.f39627c = false;
        this.d = false;
        this.f39628e = false;
        this.f39629f = false;
        this.g = false;
        this.f39630h = false;
        this.f39631i = false;
        this.f39632j = false;
    }
}
