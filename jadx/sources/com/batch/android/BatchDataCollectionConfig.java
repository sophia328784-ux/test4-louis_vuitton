package com.batch.android;

/* JADX INFO: loaded from: classes2.dex */
public class BatchDataCollectionConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Boolean f22748a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Boolean f22749b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Boolean f22750c;

    public interface Editor {
        void edit(BatchDataCollectionConfig batchDataCollectionConfig);
    }

    public Boolean isDeviceBrandEnabled() {
        return this.f22749b;
    }

    public Boolean isDeviceModelEnabled() {
        return this.f22750c;
    }

    public Boolean isGeoIpEnabled() {
        return this.f22748a;
    }

    public BatchDataCollectionConfig setDeviceBrandEnabled(boolean z) {
        this.f22749b = Boolean.valueOf(z);
        return this;
    }

    public BatchDataCollectionConfig setDeviceModelEnabled(boolean z) {
        this.f22750c = Boolean.valueOf(z);
        return this;
    }

    public BatchDataCollectionConfig setGeoIPEnabled(boolean z) {
        this.f22748a = Boolean.valueOf(z);
        return this;
    }

    public String toString() {
        return "BatchDataCollectionConfig{geoIPEnabled=" + this.f22748a + ", deviceBrandEnabled=" + this.f22749b + ", deviceModelEnabled=" + this.f22750c + '}';
    }
}
