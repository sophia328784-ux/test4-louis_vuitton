package com.vuitton.android.data.dto.product.vto;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.zu0;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00192\u00020\u0001:\u0002\u001a\u0019Bm\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013Bq\b\u0010\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u0012\u0010\u0018¨\u0006\u001b"}, d2 = {"Lcom/vuitton/android/data/dto/product/vto/ShadeFinderRequestDto;", "", "Lcom/vuitton/android/data/dto/product/vto/CheekboneDto;", "cheekbone", "Lcom/vuitton/android/data/dto/product/vto/EyelidDto;", "eyelid", "Lcom/vuitton/android/data/dto/product/vto/EyebrowDto;", "eyebrow", "", "faceShape", "", "lipShape", "Lcom/vuitton/android/data/dto/product/vto/NoseDto;", "nose", "Lcom/vuitton/android/data/dto/product/vto/FaceColorDto;", "color", "Lcom/vuitton/android/data/dto/product/vto/MetadataDto;", "metadata", "<init>", "(Lcom/vuitton/android/data/dto/product/vto/CheekboneDto;Lcom/vuitton/android/data/dto/product/vto/EyelidDto;Lcom/vuitton/android/data/dto/product/vto/EyebrowDto;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/product/vto/NoseDto;Lcom/vuitton/android/data/dto/product/vto/FaceColorDto;Lcom/vuitton/android/data/dto/product/vto/MetadataDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/product/vto/CheekboneDto;Lcom/vuitton/android/data/dto/product/vto/EyelidDto;Lcom/vuitton/android/data/dto/product/vto/EyebrowDto;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/product/vto/NoseDto;Lcom/vuitton/android/data/dto/product/vto/FaceColorDto;Lcom/vuitton/android/data/dto/product/vto/MetadataDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ShadeFinderRequestDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Lazy[] f46544i = {null, null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new zu0(14)), null, null, null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CheekboneDto f46545a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EyelidDto f46546b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EyebrowDto f46547c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f46548e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final NoseDto f46549f;
    public final FaceColorDto g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MetadataDto f46550h;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/product/vto/ShadeFinderRequestDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/product/vto/ShadeFinderRequestDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ShadeFinderRequestDto> serializer() {
            return ShadeFinderRequestDto$$serializer.f46551a;
        }
    }

    public /* synthetic */ ShadeFinderRequestDto(int i2, CheekboneDto cheekboneDto, EyelidDto eyelidDto, EyebrowDto eyebrowDto, String str, List list, NoseDto noseDto, FaceColorDto faceColorDto, MetadataDto metadataDto, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f46545a = null;
        } else {
            this.f46545a = cheekboneDto;
        }
        if ((i2 & 2) == 0) {
            this.f46546b = null;
        } else {
            this.f46546b = eyelidDto;
        }
        if ((i2 & 4) == 0) {
            this.f46547c = null;
        } else {
            this.f46547c = eyebrowDto;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str;
        }
        if ((i2 & 16) == 0) {
            this.f46548e = null;
        } else {
            this.f46548e = list;
        }
        if ((i2 & 32) == 0) {
            this.f46549f = null;
        } else {
            this.f46549f = noseDto;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = faceColorDto;
        }
        if ((i2 & 128) == 0) {
            this.f46550h = null;
        } else {
            this.f46550h = metadataDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShadeFinderRequestDto)) {
            return false;
        }
        ShadeFinderRequestDto shadeFinderRequestDto = (ShadeFinderRequestDto) obj;
        return Intrinsics.c(this.f46545a, shadeFinderRequestDto.f46545a) && Intrinsics.c(this.f46546b, shadeFinderRequestDto.f46546b) && Intrinsics.c(this.f46547c, shadeFinderRequestDto.f46547c) && Intrinsics.c(this.d, shadeFinderRequestDto.d) && Intrinsics.c(this.f46548e, shadeFinderRequestDto.f46548e) && Intrinsics.c(this.f46549f, shadeFinderRequestDto.f46549f) && Intrinsics.c(this.g, shadeFinderRequestDto.g) && Intrinsics.c(this.f46550h, shadeFinderRequestDto.f46550h);
    }

    public final int hashCode() {
        CheekboneDto cheekboneDto = this.f46545a;
        int iHashCode = (cheekboneDto == null ? 0 : cheekboneDto.hashCode()) * 31;
        EyelidDto eyelidDto = this.f46546b;
        int iHashCode2 = (iHashCode + (eyelidDto == null ? 0 : eyelidDto.hashCode())) * 31;
        EyebrowDto eyebrowDto = this.f46547c;
        int iHashCode3 = (iHashCode2 + (eyebrowDto == null ? 0 : eyebrowDto.hashCode())) * 31;
        String str = this.d;
        int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        List list = this.f46548e;
        int iHashCode5 = (iHashCode4 + (list == null ? 0 : list.hashCode())) * 31;
        NoseDto noseDto = this.f46549f;
        int iHashCode6 = (iHashCode5 + (noseDto == null ? 0 : noseDto.hashCode())) * 31;
        FaceColorDto faceColorDto = this.g;
        int iHashCode7 = (iHashCode6 + (faceColorDto == null ? 0 : faceColorDto.hashCode())) * 31;
        MetadataDto metadataDto = this.f46550h;
        return iHashCode7 + (metadataDto != null ? metadataDto.hashCode() : 0);
    }

    public final String toString() {
        return "ShadeFinderRequestDto(cheekbone=" + this.f46545a + ", eyelid=" + this.f46546b + ", eyebrow=" + this.f46547c + ", faceShape=" + this.d + ", lipShape=" + this.f46548e + ", nose=" + this.f46549f + ", color=" + this.g + ", metadata=" + this.f46550h + ")";
    }

    public ShadeFinderRequestDto() {
        this((CheekboneDto) null, (EyelidDto) null, (EyebrowDto) null, (String) null, (List) null, (NoseDto) null, (FaceColorDto) null, (MetadataDto) null, 255, (DefaultConstructorMarker) null);
    }

    public ShadeFinderRequestDto(CheekboneDto cheekboneDto, EyelidDto eyelidDto, EyebrowDto eyebrowDto, String str, List<String> list, NoseDto noseDto, FaceColorDto faceColorDto, MetadataDto metadataDto) {
        this.f46545a = cheekboneDto;
        this.f46546b = eyelidDto;
        this.f46547c = eyebrowDto;
        this.d = str;
        this.f46548e = list;
        this.f46549f = noseDto;
        this.g = faceColorDto;
        this.f46550h = metadataDto;
    }

    public /* synthetic */ ShadeFinderRequestDto(CheekboneDto cheekboneDto, EyelidDto eyelidDto, EyebrowDto eyebrowDto, String str, List list, NoseDto noseDto, FaceColorDto faceColorDto, MetadataDto metadataDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : cheekboneDto, (i2 & 2) != 0 ? null : eyelidDto, (i2 & 4) != 0 ? null : eyebrowDto, (i2 & 8) != 0 ? null : str, (i2 & 16) != 0 ? null : list, (i2 & 32) != 0 ? null : noseDto, (i2 & 64) != 0 ? null : faceColorDto, (i2 & 128) != 0 ? null : metadataDto);
    }
}
