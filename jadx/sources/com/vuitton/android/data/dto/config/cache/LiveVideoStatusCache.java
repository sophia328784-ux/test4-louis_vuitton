package com.vuitton.android.data.dto.config.cache;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.c70;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0087\u0081\u0002\u0018\u0000 \u00022\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/data/dto/config/cache/LiveVideoStatusCache;", "", "Companion", "LIVE", "LIVE_UPCOMING", "LIVE_DONE", "LIVE_REPLAY", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final class LiveVideoStatusCache {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LiveVideoStatusCache[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final LiveVideoStatusCache LIVE;
    public static final LiveVideoStatusCache LIVE_DONE;
    public static final LiveVideoStatusCache LIVE_REPLAY;
    public static final LiveVideoStatusCache LIVE_UPCOMING;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/config/cache/LiveVideoStatusCache$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/config/cache/LiveVideoStatusCache;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<LiveVideoStatusCache> serializer() {
            return (KSerializer) LiveVideoStatusCache.$cachedSerializer$delegate.getF71699b();
        }
    }

    static {
        LiveVideoStatusCache liveVideoStatusCache = new LiveVideoStatusCache("LIVE", 0);
        LIVE = liveVideoStatusCache;
        LiveVideoStatusCache liveVideoStatusCache2 = new LiveVideoStatusCache("LIVE_UPCOMING", 1);
        LIVE_UPCOMING = liveVideoStatusCache2;
        LiveVideoStatusCache liveVideoStatusCache3 = new LiveVideoStatusCache("LIVE_DONE", 2);
        LIVE_DONE = liveVideoStatusCache3;
        LiveVideoStatusCache liveVideoStatusCache4 = new LiveVideoStatusCache("LIVE_REPLAY", 3);
        LIVE_REPLAY = liveVideoStatusCache4;
        LiveVideoStatusCache[] liveVideoStatusCacheArr = {liveVideoStatusCache, liveVideoStatusCache2, liveVideoStatusCache3, liveVideoStatusCache4};
        $VALUES = liveVideoStatusCacheArr;
        $ENTRIES = EnumEntriesKt.a(liveVideoStatusCacheArr);
        INSTANCE = new Companion(null);
        $cachedSerializer$delegate = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new c70(26));
    }

    public static LiveVideoStatusCache valueOf(String str) {
        return (LiveVideoStatusCache) Enum.valueOf(LiveVideoStatusCache.class, str);
    }

    public static LiveVideoStatusCache[] values() {
        return (LiveVideoStatusCache[]) $VALUES.clone();
    }
}
