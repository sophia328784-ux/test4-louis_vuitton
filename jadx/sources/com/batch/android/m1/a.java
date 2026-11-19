package com.batch.android.m1;

import com.batch.android.BatchDataCollectionConfig;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static boolean a(BatchDataCollectionConfig batchDataCollectionConfig, BatchDataCollectionConfig batchDataCollectionConfig2) {
        return ((batchDataCollectionConfig.isGeoIpEnabled() == null || batchDataCollectionConfig2.isGeoIpEnabled() == null) ? true : Objects.equals(batchDataCollectionConfig.isGeoIpEnabled(), batchDataCollectionConfig2.isGeoIpEnabled())) && ((batchDataCollectionConfig.isDeviceBrandEnabled() == null || batchDataCollectionConfig2.isDeviceBrandEnabled() == null) ? true : Objects.equals(batchDataCollectionConfig.isDeviceBrandEnabled(), batchDataCollectionConfig2.isDeviceBrandEnabled())) && ((batchDataCollectionConfig.isDeviceModelEnabled() == null || batchDataCollectionConfig2.isDeviceModelEnabled() == null) ? true : Objects.equals(batchDataCollectionConfig.isDeviceModelEnabled(), batchDataCollectionConfig2.isDeviceModelEnabled()));
    }
}
