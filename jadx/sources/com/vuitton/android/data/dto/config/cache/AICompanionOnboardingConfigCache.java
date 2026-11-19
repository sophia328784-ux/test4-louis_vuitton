package com.vuitton.android.data.dto.config.cache;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.v;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB%\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB9\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache;", "", "", "backgroundColor", "Lcom/vuitton/android/data/dto/config/cache/FeatureThemeCache;", "theme", "Lcom/vuitton/android/data/dto/config/cache/AssetVideoCache;", "video", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/config/cache/FeatureThemeCache;Lcom/vuitton/android/data/dto/config/cache/AssetVideoCache;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/config/cache/FeatureThemeCache;Lcom/vuitton/android/data/dto/config/cache/AssetVideoCache;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class AICompanionOnboardingConfigCache {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new v(4)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45455a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FeatureThemeCache f45456b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetVideoCache f45457c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AICompanionOnboardingConfigCache> serializer() {
            return AICompanionOnboardingConfigCache$$serializer.f45458a;
        }
    }

    public /* synthetic */ AICompanionOnboardingConfigCache(int i2, String str, FeatureThemeCache featureThemeCache, AssetVideoCache assetVideoCache, SerializationConstructorMarker serializationConstructorMarker) {
        if (4 != (i2 & 4)) {
            PluginExceptionsKt.b(i2, 4, AICompanionOnboardingConfigCache$$serializer.f45458a.getF19838b());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f45455a = null;
        } else {
            this.f45455a = str;
        }
        if ((i2 & 2) == 0) {
            this.f45456b = FeatureThemeCache.LIGHT;
        } else {
            this.f45456b = featureThemeCache;
        }
        this.f45457c = assetVideoCache;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AICompanionOnboardingConfigCache)) {
            return false;
        }
        AICompanionOnboardingConfigCache aICompanionOnboardingConfigCache = (AICompanionOnboardingConfigCache) obj;
        return Intrinsics.c(this.f45455a, aICompanionOnboardingConfigCache.f45455a) && this.f45456b == aICompanionOnboardingConfigCache.f45456b && Intrinsics.c(this.f45457c, aICompanionOnboardingConfigCache.f45457c);
    }

    public final int hashCode() {
        String str = this.f45455a;
        int iHashCode = str == null ? 0 : str.hashCode();
        return this.f45457c.hashCode() + ((this.f45456b.hashCode() + (iHashCode * 31)) * 31);
    }

    public final String toString() {
        return "AICompanionOnboardingConfigCache(backgroundColor=" + this.f45455a + ", theme=" + this.f45456b + ", video=" + this.f45457c + ")";
    }

    public AICompanionOnboardingConfigCache(String str, FeatureThemeCache featureThemeCache, AssetVideoCache assetVideoCache) {
        featureThemeCache.getClass();
        assetVideoCache.getClass();
        this.f45455a = str;
        this.f45456b = featureThemeCache;
        this.f45457c = assetVideoCache;
    }

    public /* synthetic */ AICompanionOnboardingConfigCache(String str, FeatureThemeCache featureThemeCache, AssetVideoCache assetVideoCache, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? FeatureThemeCache.LIGHT : featureThemeCache, assetVideoCache);
    }
}
