package com.google.android.datatransport.runtime.scheduling.persistence;

import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
abstract class EventStoreConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AutoValue_EventStoreConfig f28100a;

    public static abstract class Builder {
    }

    static {
        AutoValue_EventStoreConfig.Builder builder = new AutoValue_EventStoreConfig.Builder();
        builder.f28093a = 10485760L;
        builder.f28094b = 200;
        builder.f28095c = 10000;
        builder.d = 604800000L;
        builder.f28096e = 81920;
        String strConcat = builder.f28093a == null ? " maxStorageSizeInBytes" : "";
        if (builder.f28094b == null) {
            strConcat = strConcat.concat(" loadBatchSize");
        }
        if (builder.f28095c == null) {
            strConcat = strConcat.concat(" criticalSectionEnterTimeoutMs");
        }
        if (builder.d == null) {
            strConcat = strConcat.concat(" eventCleanUpAge");
        }
        if (builder.f28096e == null) {
            strConcat = strConcat.concat(" maxBlobByteSizePerRow");
        }
        if (strConcat.isEmpty()) {
            f28100a = new AutoValue_EventStoreConfig(builder.f28093a.longValue(), builder.d.longValue(), builder.f28094b.intValue(), builder.f28095c.intValue(), builder.f28096e.intValue());
        } else {
            md.k("Missing required properties:".concat(strConcat));
        }
    }
}
