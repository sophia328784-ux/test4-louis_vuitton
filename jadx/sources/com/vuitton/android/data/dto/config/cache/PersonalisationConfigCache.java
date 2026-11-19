package com.vuitton.android.data.dto.config.cache;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.ul0;
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
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/config/cache/PersonalisationConfigCache;", "", "", "dynamicYieldCampaign", "Lcom/vuitton/android/data/dto/config/cache/RegionCache;", "preferredServer", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/config/cache/RegionCache;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/config/cache/RegionCache;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class PersonalisationConfigCache {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy[] f45523c = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new ul0(21))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45524a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RegionCache f45525b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/config/cache/PersonalisationConfigCache$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/config/cache/PersonalisationConfigCache;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<PersonalisationConfigCache> serializer() {
            return PersonalisationConfigCache$$serializer.f45526a;
        }
    }

    public /* synthetic */ PersonalisationConfigCache(int i2, String str, RegionCache regionCache, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, PersonalisationConfigCache$$serializer.f45526a.getF19838b());
            throw null;
        }
        this.f45524a = str;
        this.f45525b = regionCache;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PersonalisationConfigCache)) {
            return false;
        }
        PersonalisationConfigCache personalisationConfigCache = (PersonalisationConfigCache) obj;
        return Intrinsics.c(this.f45524a, personalisationConfigCache.f45524a) && this.f45525b == personalisationConfigCache.f45525b;
    }

    public final int hashCode() {
        String str = this.f45524a;
        return this.f45525b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
    }

    public final String toString() {
        return "PersonalisationConfigCache(dynamicYieldCampaign=" + this.f45524a + ", preferredServer=" + this.f45525b + ")";
    }

    public PersonalisationConfigCache(String str, RegionCache regionCache) {
        regionCache.getClass();
        this.f45524a = str;
        this.f45525b = regionCache;
    }
}
