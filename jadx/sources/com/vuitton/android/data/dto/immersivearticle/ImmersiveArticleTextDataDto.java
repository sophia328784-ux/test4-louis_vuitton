package com.vuitton.android.data.dto.immersivearticle;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import defpackage.l30;
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
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u001e2\u00020\u0001:\u0002\u001f\u001eB\u009b\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b\u0017\u0010\u0018B\u0099\u0001\b\u0010\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u001b¢\u0006\u0004\b\u0017\u0010\u001d¨\u0006 "}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto;", "", "", "title", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;", "titleFont", "surtitle", "surtitleFont", "description", "descriptionFont", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;", "ratio", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextModuleTypeDto;", "moduleType", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextModuleAlignmentDto;", "alignment", "Lcom/vuitton/android/data/dto/common/AssetDto;", "asset", "", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;", "ctas", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDisclaimerDto;", "disclaimer", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextModuleTypeDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextModuleAlignmentDto;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/util/List;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDisclaimerDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextModuleTypeDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextModuleAlignmentDto;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/util/List;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDisclaimerDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ImmersiveArticleTextDataDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45924a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmersiveArticleFontDto f45925b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45926c;
    public final ImmersiveArticleFontDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f45927e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ImmersiveArticleFontDto f45928f;
    public final ImmersiveArticleSizeCardDto g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ImmersiveArticleTextModuleTypeDto f45929h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ImmersiveArticleTextModuleAlignmentDto f45930i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AssetDto f45931j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final List f45932k;
    public final ImmersiveArticleTextDisclaimerDto l;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ImmersiveArticleTextDataDto> serializer() {
            return ImmersiveArticleTextDataDto$$serializer.f45933a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        m = new Lazy[]{null, LazyKt.a(lazyThreadSafetyMode, new l30(12)), null, LazyKt.a(lazyThreadSafetyMode, new l30(13)), null, LazyKt.a(lazyThreadSafetyMode, new l30(14)), LazyKt.a(lazyThreadSafetyMode, new l30(15)), LazyKt.a(lazyThreadSafetyMode, new l30(16)), LazyKt.a(lazyThreadSafetyMode, new l30(17)), null, LazyKt.a(lazyThreadSafetyMode, new l30(18)), null};
    }

    public /* synthetic */ ImmersiveArticleTextDataDto(int i2, String str, ImmersiveArticleFontDto immersiveArticleFontDto, String str2, ImmersiveArticleFontDto immersiveArticleFontDto2, String str3, ImmersiveArticleFontDto immersiveArticleFontDto3, ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, ImmersiveArticleTextModuleTypeDto immersiveArticleTextModuleTypeDto, ImmersiveArticleTextModuleAlignmentDto immersiveArticleTextModuleAlignmentDto, AssetDto assetDto, List list, ImmersiveArticleTextDisclaimerDto immersiveArticleTextDisclaimerDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, ImmersiveArticleTextDataDto$$serializer.f45933a.getF19838b());
            throw null;
        }
        this.f45924a = str;
        if ((i2 & 2) == 0) {
            this.f45925b = null;
        } else {
            this.f45925b = immersiveArticleFontDto;
        }
        if ((i2 & 4) == 0) {
            this.f45926c = null;
        } else {
            this.f45926c = str2;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = immersiveArticleFontDto2;
        }
        if ((i2 & 16) == 0) {
            this.f45927e = null;
        } else {
            this.f45927e = str3;
        }
        if ((i2 & 32) == 0) {
            this.f45928f = null;
        } else {
            this.f45928f = immersiveArticleFontDto3;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = immersiveArticleSizeCardDto;
        }
        if ((i2 & 128) == 0) {
            this.f45929h = null;
        } else {
            this.f45929h = immersiveArticleTextModuleTypeDto;
        }
        if ((i2 & 256) == 0) {
            this.f45930i = null;
        } else {
            this.f45930i = immersiveArticleTextModuleAlignmentDto;
        }
        if ((i2 & 512) == 0) {
            this.f45931j = null;
        } else {
            this.f45931j = assetDto;
        }
        if ((i2 & 1024) == 0) {
            this.f45932k = null;
        } else {
            this.f45932k = list;
        }
        if ((i2 & 2048) == 0) {
            this.l = null;
        } else {
            this.l = immersiveArticleTextDisclaimerDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleTextDataDto)) {
            return false;
        }
        ImmersiveArticleTextDataDto immersiveArticleTextDataDto = (ImmersiveArticleTextDataDto) obj;
        return Intrinsics.c(this.f45924a, immersiveArticleTextDataDto.f45924a) && this.f45925b == immersiveArticleTextDataDto.f45925b && Intrinsics.c(this.f45926c, immersiveArticleTextDataDto.f45926c) && this.d == immersiveArticleTextDataDto.d && Intrinsics.c(this.f45927e, immersiveArticleTextDataDto.f45927e) && this.f45928f == immersiveArticleTextDataDto.f45928f && this.g == immersiveArticleTextDataDto.g && this.f45929h == immersiveArticleTextDataDto.f45929h && this.f45930i == immersiveArticleTextDataDto.f45930i && Intrinsics.c(this.f45931j, immersiveArticleTextDataDto.f45931j) && Intrinsics.c(this.f45932k, immersiveArticleTextDataDto.f45932k) && Intrinsics.c(this.l, immersiveArticleTextDataDto.l);
    }

    public final int hashCode() {
        String str = this.f45924a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        ImmersiveArticleFontDto immersiveArticleFontDto = this.f45925b;
        int iHashCode2 = (iHashCode + (immersiveArticleFontDto == null ? 0 : immersiveArticleFontDto.hashCode())) * 31;
        String str2 = this.f45926c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        ImmersiveArticleFontDto immersiveArticleFontDto2 = this.d;
        int iHashCode4 = (iHashCode3 + (immersiveArticleFontDto2 == null ? 0 : immersiveArticleFontDto2.hashCode())) * 31;
        String str3 = this.f45927e;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        ImmersiveArticleFontDto immersiveArticleFontDto3 = this.f45928f;
        int iHashCode6 = (iHashCode5 + (immersiveArticleFontDto3 == null ? 0 : immersiveArticleFontDto3.hashCode())) * 31;
        ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto = this.g;
        int iHashCode7 = (iHashCode6 + (immersiveArticleSizeCardDto == null ? 0 : immersiveArticleSizeCardDto.hashCode())) * 31;
        ImmersiveArticleTextModuleTypeDto immersiveArticleTextModuleTypeDto = this.f45929h;
        int iHashCode8 = (iHashCode7 + (immersiveArticleTextModuleTypeDto == null ? 0 : immersiveArticleTextModuleTypeDto.hashCode())) * 31;
        ImmersiveArticleTextModuleAlignmentDto immersiveArticleTextModuleAlignmentDto = this.f45930i;
        int iHashCode9 = (iHashCode8 + (immersiveArticleTextModuleAlignmentDto == null ? 0 : immersiveArticleTextModuleAlignmentDto.hashCode())) * 31;
        AssetDto assetDto = this.f45931j;
        int iHashCode10 = (iHashCode9 + (assetDto == null ? 0 : assetDto.hashCode())) * 31;
        List list = this.f45932k;
        int iHashCode11 = (iHashCode10 + (list == null ? 0 : list.hashCode())) * 31;
        ImmersiveArticleTextDisclaimerDto immersiveArticleTextDisclaimerDto = this.l;
        return iHashCode11 + (immersiveArticleTextDisclaimerDto != null ? immersiveArticleTextDisclaimerDto.hashCode() : 0);
    }

    public final String toString() {
        return "ImmersiveArticleTextDataDto(title=" + this.f45924a + ", titleFont=" + this.f45925b + ", surtitle=" + this.f45926c + ", surtitleFont=" + this.d + ", description=" + this.f45927e + ", descriptionFont=" + this.f45928f + ", ratio=" + this.g + ", moduleType=" + this.f45929h + ", alignment=" + this.f45930i + ", asset=" + this.f45931j + ", ctas=" + this.f45932k + ", disclaimer=" + this.l + ")";
    }

    public ImmersiveArticleTextDataDto(String str, ImmersiveArticleFontDto immersiveArticleFontDto, String str2, ImmersiveArticleFontDto immersiveArticleFontDto2, String str3, ImmersiveArticleFontDto immersiveArticleFontDto3, ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, ImmersiveArticleTextModuleTypeDto immersiveArticleTextModuleTypeDto, ImmersiveArticleTextModuleAlignmentDto immersiveArticleTextModuleAlignmentDto, AssetDto assetDto, List<ImmersiveArticleCtaDto> list, ImmersiveArticleTextDisclaimerDto immersiveArticleTextDisclaimerDto) {
        this.f45924a = str;
        this.f45925b = immersiveArticleFontDto;
        this.f45926c = str2;
        this.d = immersiveArticleFontDto2;
        this.f45927e = str3;
        this.f45928f = immersiveArticleFontDto3;
        this.g = immersiveArticleSizeCardDto;
        this.f45929h = immersiveArticleTextModuleTypeDto;
        this.f45930i = immersiveArticleTextModuleAlignmentDto;
        this.f45931j = assetDto;
        this.f45932k = list;
        this.l = immersiveArticleTextDisclaimerDto;
    }

    public /* synthetic */ ImmersiveArticleTextDataDto(String str, ImmersiveArticleFontDto immersiveArticleFontDto, String str2, ImmersiveArticleFontDto immersiveArticleFontDto2, String str3, ImmersiveArticleFontDto immersiveArticleFontDto3, ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, ImmersiveArticleTextModuleTypeDto immersiveArticleTextModuleTypeDto, ImmersiveArticleTextModuleAlignmentDto immersiveArticleTextModuleAlignmentDto, AssetDto assetDto, List list, ImmersiveArticleTextDisclaimerDto immersiveArticleTextDisclaimerDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : immersiveArticleFontDto, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : immersiveArticleFontDto2, (i2 & 16) != 0 ? null : str3, (i2 & 32) != 0 ? null : immersiveArticleFontDto3, (i2 & 64) != 0 ? null : immersiveArticleSizeCardDto, (i2 & 128) != 0 ? null : immersiveArticleTextModuleTypeDto, (i2 & 256) != 0 ? null : immersiveArticleTextModuleAlignmentDto, (i2 & 512) != 0 ? null : assetDto, (i2 & 1024) != 0 ? null : list, (i2 & 2048) != 0 ? null : immersiveArticleTextDisclaimerDto);
    }
}
