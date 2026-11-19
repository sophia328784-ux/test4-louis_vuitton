package com.vuitton.android.data.dto.config.cache;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.ew;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/android/data/dto/config/cache/FeedConfigCache;", "", "Lcom/vuitton/android/data/dto/config/cache/FeatureThemeCache;", "theme", "<init>", "(Lcom/vuitton/android/data/dto/config/cache/FeatureThemeCache;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/config/cache/FeatureThemeCache;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class FeedConfigCache {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Lazy[] f45506b = {LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new ew(25))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FeatureThemeCache f45507a;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/config/cache/FeedConfigCache$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/config/cache/FeedConfigCache;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<FeedConfigCache> serializer() {
            return FeedConfigCache$$serializer.f45508a;
        }
    }

    public /* synthetic */ FeedConfigCache(int i2, FeatureThemeCache featureThemeCache, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 == (i2 & 1)) {
            this.f45507a = featureThemeCache;
        } else {
            PluginExceptionsKt.b(i2, 1, FeedConfigCache$$serializer.f45508a.getF19838b());
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FeedConfigCache) && this.f45507a == ((FeedConfigCache) obj).f45507a;
    }

    public final int hashCode() {
        return this.f45507a.hashCode();
    }

    public final String toString() {
        return "FeedConfigCache(theme=" + this.f45507a + ")";
    }

    public FeedConfigCache(FeatureThemeCache featureThemeCache) {
        featureThemeCache.getClass();
        this.f45507a = featureThemeCache;
    }
}
