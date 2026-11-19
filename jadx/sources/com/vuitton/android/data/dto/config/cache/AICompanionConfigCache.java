package com.vuitton.android.data.dto.config.cache;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.v;
import java.util.List;
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
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB!\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bB5\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;", "", "", "", "suggestions", "Lcom/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache;", "onboarding", "<init>", "(Ljava/util/List;Lcom/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Lcom/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class AICompanionConfigCache {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy[] f45451c = {LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new v(2)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f45452a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AICompanionOnboardingConfigCache f45453b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AICompanionConfigCache> serializer() {
            return AICompanionConfigCache$$serializer.f45454a;
        }
    }

    public /* synthetic */ AICompanionConfigCache(int i2, List list, AICompanionOnboardingConfigCache aICompanionOnboardingConfigCache, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, AICompanionConfigCache$$serializer.f45454a.getF19838b());
            throw null;
        }
        this.f45452a = list;
        this.f45453b = aICompanionOnboardingConfigCache;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AICompanionConfigCache)) {
            return false;
        }
        AICompanionConfigCache aICompanionConfigCache = (AICompanionConfigCache) obj;
        return Intrinsics.c(this.f45452a, aICompanionConfigCache.f45452a) && Intrinsics.c(this.f45453b, aICompanionConfigCache.f45453b);
    }

    public final int hashCode() {
        List list = this.f45452a;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        AICompanionOnboardingConfigCache aICompanionOnboardingConfigCache = this.f45453b;
        return iHashCode + (aICompanionOnboardingConfigCache != null ? aICompanionOnboardingConfigCache.hashCode() : 0);
    }

    public final String toString() {
        return "AICompanionConfigCache(suggestions=" + this.f45452a + ", onboarding=" + this.f45453b + ")";
    }

    public AICompanionConfigCache(List<String> list, AICompanionOnboardingConfigCache aICompanionOnboardingConfigCache) {
        this.f45452a = list;
        this.f45453b = aICompanionOnboardingConfigCache;
    }
}
