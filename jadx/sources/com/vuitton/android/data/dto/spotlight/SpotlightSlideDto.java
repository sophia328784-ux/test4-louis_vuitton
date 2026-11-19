package com.vuitton.android.data.dto.spotlight;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.common.AssetVideoDto;
import com.vuitton.android.data.dto.common.FeatureThemeDto;
import defpackage.fc;
import defpackage.n00;
import defpackage.nw0;
import defpackage.pq0;
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
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u001a2\u00020\u0001:\u0002\u001b\u001aBa\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0013\u0010\u0014By\b\u0010\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\u0013\u0010\u0019¨\u0006\u001c"}, d2 = {"Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;", "", "", b.a.f24015b, "title", "Lcom/vuitton/android/data/dto/common/AssetDto;", "asset", "", "assetRatio", "Lcom/vuitton/android/data/dto/common/AssetVideoDto;", "introVideo", "outroVideo", "", "Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;", "hotspots", "Lcom/vuitton/android/data/dto/common/FeatureThemeDto;", "theme", "Lcom/vuitton/android/data/dto/spotlight/SpotlightCtaDto;", "cta", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;FLcom/vuitton/android/data/dto/common/AssetVideoDto;Lcom/vuitton/android/data/dto/common/AssetVideoDto;Ljava/util/List;Lcom/vuitton/android/data/dto/common/FeatureThemeDto;Lcom/vuitton/android/data/dto/spotlight/SpotlightCtaDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;FLcom/vuitton/android/data/dto/common/AssetVideoDto;Lcom/vuitton/android/data/dto/common/AssetVideoDto;Ljava/util/List;Lcom/vuitton/android/data/dto/common/FeatureThemeDto;Lcom/vuitton/android/data/dto/spotlight/SpotlightCtaDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class SpotlightSlideDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Lazy[] f46817j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46818a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46819b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetDto f46820c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AssetVideoDto f46821e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AssetVideoDto f46822f;
    public final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final FeatureThemeDto f46823h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final SpotlightCtaDto f46824i;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SpotlightSlideDto> serializer() {
            return SpotlightSlideDto$$serializer.f46825a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f46817j = new Lazy[]{null, null, null, null, null, null, LazyKt.a(lazyThreadSafetyMode, new nw0(21)), LazyKt.a(lazyThreadSafetyMode, new nw0(22)), null};
    }

    public /* synthetic */ SpotlightSlideDto(int i2, String str, String str2, AssetDto assetDto, float f2, AssetVideoDto assetVideoDto, AssetVideoDto assetVideoDto2, List list, FeatureThemeDto featureThemeDto, SpotlightCtaDto spotlightCtaDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (207 != (i2 & 207)) {
            PluginExceptionsKt.b(i2, 207, SpotlightSlideDto$$serializer.f46825a.getF19838b());
            throw null;
        }
        this.f46818a = str;
        this.f46819b = str2;
        this.f46820c = assetDto;
        this.d = f2;
        if ((i2 & 16) == 0) {
            this.f46821e = null;
        } else {
            this.f46821e = assetVideoDto;
        }
        if ((i2 & 32) == 0) {
            this.f46822f = null;
        } else {
            this.f46822f = assetVideoDto2;
        }
        this.g = list;
        this.f46823h = featureThemeDto;
        if ((i2 & 256) == 0) {
            this.f46824i = null;
        } else {
            this.f46824i = spotlightCtaDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SpotlightSlideDto)) {
            return false;
        }
        SpotlightSlideDto spotlightSlideDto = (SpotlightSlideDto) obj;
        return Intrinsics.c(this.f46818a, spotlightSlideDto.f46818a) && Intrinsics.c(this.f46819b, spotlightSlideDto.f46819b) && Intrinsics.c(this.f46820c, spotlightSlideDto.f46820c) && Float.compare(this.d, spotlightSlideDto.d) == 0 && Intrinsics.c(this.f46821e, spotlightSlideDto.f46821e) && Intrinsics.c(this.f46822f, spotlightSlideDto.f46822f) && Intrinsics.c(this.g, spotlightSlideDto.g) && this.f46823h == spotlightSlideDto.f46823h && Intrinsics.c(this.f46824i, spotlightSlideDto.f46824i);
    }

    public final int hashCode() {
        int iB = pq0.b((this.f46820c.hashCode() + fc.b(this.f46818a.hashCode() * 31, 31, this.f46819b)) * 31, 31, this.d);
        AssetVideoDto assetVideoDto = this.f46821e;
        int iHashCode = (iB + (assetVideoDto == null ? 0 : assetVideoDto.hashCode())) * 31;
        AssetVideoDto assetVideoDto2 = this.f46822f;
        int iHashCode2 = (this.f46823h.hashCode() + n00.a((iHashCode + (assetVideoDto2 == null ? 0 : assetVideoDto2.hashCode())) * 31, 31, this.g)) * 31;
        SpotlightCtaDto spotlightCtaDto = this.f46824i;
        return iHashCode2 + (spotlightCtaDto != null ? spotlightCtaDto.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("SpotlightSlideDto(id=", this.f46818a, ", title=", this.f46819b, ", asset=");
        sbS.append(this.f46820c);
        sbS.append(", assetRatio=");
        sbS.append(this.d);
        sbS.append(", introVideo=");
        sbS.append(this.f46821e);
        sbS.append(", outroVideo=");
        sbS.append(this.f46822f);
        sbS.append(", hotspots=");
        sbS.append(this.g);
        sbS.append(", theme=");
        sbS.append(this.f46823h);
        sbS.append(", cta=");
        sbS.append(this.f46824i);
        sbS.append(")");
        return sbS.toString();
    }

    public SpotlightSlideDto(String str, String str2, AssetDto assetDto, float f2, AssetVideoDto assetVideoDto, AssetVideoDto assetVideoDto2, List<SpotlightHotspotDto> list, FeatureThemeDto featureThemeDto, SpotlightCtaDto spotlightCtaDto) {
        str.getClass();
        str2.getClass();
        assetDto.getClass();
        list.getClass();
        featureThemeDto.getClass();
        this.f46818a = str;
        this.f46819b = str2;
        this.f46820c = assetDto;
        this.d = f2;
        this.f46821e = assetVideoDto;
        this.f46822f = assetVideoDto2;
        this.g = list;
        this.f46823h = featureThemeDto;
        this.f46824i = spotlightCtaDto;
    }

    public /* synthetic */ SpotlightSlideDto(String str, String str2, AssetDto assetDto, float f2, AssetVideoDto assetVideoDto, AssetVideoDto assetVideoDto2, List list, FeatureThemeDto featureThemeDto, SpotlightCtaDto spotlightCtaDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, assetDto, f2, (i2 & 16) != 0 ? null : assetVideoDto, (i2 & 32) != 0 ? null : assetVideoDto2, list, featureThemeDto, (i2 & 256) != 0 ? null : spotlightCtaDto);
    }
}
