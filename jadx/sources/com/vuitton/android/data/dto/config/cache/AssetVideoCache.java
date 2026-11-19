package com.vuitton.android.data.dto.config.cache;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.fc;
import defpackage.g5;
import defpackage.n00;
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
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013BA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u0002¢\u0006\u0004\b\f\u0010\rBa\b\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\f\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/data/dto/config/cache/AssetVideoCache;", "", "", "videoId", ConfigurationName.DOWNLOAD_PLUGIN_URL, "placeholder", "subtitle", "", "eventStartTimeInUTC", "Lcom/vuitton/android/data/dto/config/cache/LiveVideoStatusCache;", "liveVideoStatus", "streamUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/vuitton/android/data/dto/config/cache/LiveVideoStatusCache;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/vuitton/android/data/dto/config/cache/LiveVideoStatusCache;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class AssetVideoCache {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Lazy[] f45475h = {null, null, null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new g5(29)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45476a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45478c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Long f45479e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LiveVideoStatusCache f45480f;
    public final String g;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/config/cache/AssetVideoCache$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/config/cache/AssetVideoCache;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AssetVideoCache> serializer() {
            return AssetVideoCache$$serializer.f45481a;
        }
    }

    public AssetVideoCache(String str, String str2, String str3, String str4, Long l, LiveVideoStatusCache liveVideoStatusCache, String str5) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        liveVideoStatusCache.getClass();
        str5.getClass();
        this.f45476a = str;
        this.f45477b = str2;
        this.f45478c = str3;
        this.d = str4;
        this.f45479e = l;
        this.f45480f = liveVideoStatusCache;
        this.g = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AssetVideoCache)) {
            return false;
        }
        AssetVideoCache assetVideoCache = (AssetVideoCache) obj;
        return Intrinsics.c(this.f45476a, assetVideoCache.f45476a) && Intrinsics.c(this.f45477b, assetVideoCache.f45477b) && Intrinsics.c(this.f45478c, assetVideoCache.f45478c) && Intrinsics.c(this.d, assetVideoCache.d) && Intrinsics.c(this.f45479e, assetVideoCache.f45479e) && this.f45480f == assetVideoCache.f45480f && Intrinsics.c(this.g, assetVideoCache.g);
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(fc.b(this.f45476a.hashCode() * 31, 31, this.f45477b), 31, this.f45478c), 31, this.d);
        Long l = this.f45479e;
        return this.g.hashCode() + ((this.f45480f.hashCode() + ((iB + (l == null ? 0 : l.hashCode())) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("AssetVideoCache(videoId=", this.f45476a, ", url=", this.f45477b, ", placeholder=");
        cj.C(sbS, this.f45478c, ", subtitle=", this.d, ", eventStartTimeInUTC=");
        sbS.append(this.f45479e);
        sbS.append(", liveVideoStatus=");
        sbS.append(this.f45480f);
        sbS.append(", streamUrl=");
        return n00.r(this.g, ")", sbS);
    }

    public /* synthetic */ AssetVideoCache(int i2, String str, String str2, String str3, String str4, Long l, LiveVideoStatusCache liveVideoStatusCache, String str5, SerializationConstructorMarker serializationConstructorMarker) {
        if (127 != (i2 & CertificateBody.profileType)) {
            PluginExceptionsKt.b(i2, CertificateBody.profileType, AssetVideoCache$$serializer.f45481a.getF19838b());
            throw null;
        }
        this.f45476a = str;
        this.f45477b = str2;
        this.f45478c = str3;
        this.d = str4;
        this.f45479e = l;
        this.f45480f = liveVideoStatusCache;
        this.g = str5;
    }
}
