package com.vuitton.android.data.dto.immersivearticle;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.linktype.LinkTypeDto;
import defpackage.m10;
import defpackage.n00;
import defpackage.o60;
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
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001d\u001cB\u0091\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0015\u0010\u0016B\u008f\u0001\b\u0010\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019¢\u0006\u0004\b\u0015\u0010\u001b¨\u0006\u001e"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDataDto;", "", "", "title", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;", "titleFont", "surtitle", "surtitleFont", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;", "ratio", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoDto;", "video", "", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleLookCardDto;", "looks", "link", "Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;", "linkType", "Lcom/vuitton/android/data/dto/common/AssetDto;", "asset", ConfigurationName.DOWNLOAD_PLUGIN_URL, "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoDto;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoDto;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ImmersiveArticleCtaDataDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45802a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmersiveArticleFontDto f45803b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45804c;
    public final ImmersiveArticleFontDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ImmersiveArticleSizeCardDto f45805e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ImmersiveArticleVideoDto f45806f;
    public final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f45807h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LinkTypeDto f45808i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AssetDto f45809j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f45810k;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDataDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDataDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ImmersiveArticleCtaDataDto> serializer() {
            return ImmersiveArticleCtaDataDto$$serializer.f45811a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        l = new Lazy[]{null, LazyKt.a(lazyThreadSafetyMode, new m10(16)), null, LazyKt.a(lazyThreadSafetyMode, new m10(17)), LazyKt.a(lazyThreadSafetyMode, new m10(18)), null, LazyKt.a(lazyThreadSafetyMode, new m10(19)), null, null, null, null};
    }

    public /* synthetic */ ImmersiveArticleCtaDataDto(int i2, String str, ImmersiveArticleFontDto immersiveArticleFontDto, String str2, ImmersiveArticleFontDto immersiveArticleFontDto2, ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, ImmersiveArticleVideoDto immersiveArticleVideoDto, List list, String str3, LinkTypeDto linkTypeDto, AssetDto assetDto, String str4, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45802a = null;
        } else {
            this.f45802a = str;
        }
        if ((i2 & 2) == 0) {
            this.f45803b = null;
        } else {
            this.f45803b = immersiveArticleFontDto;
        }
        if ((i2 & 4) == 0) {
            this.f45804c = null;
        } else {
            this.f45804c = str2;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = immersiveArticleFontDto2;
        }
        if ((i2 & 16) == 0) {
            this.f45805e = null;
        } else {
            this.f45805e = immersiveArticleSizeCardDto;
        }
        if ((i2 & 32) == 0) {
            this.f45806f = null;
        } else {
            this.f45806f = immersiveArticleVideoDto;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = list;
        }
        if ((i2 & 128) == 0) {
            this.f45807h = null;
        } else {
            this.f45807h = str3;
        }
        if ((i2 & 256) == 0) {
            this.f45808i = null;
        } else {
            this.f45808i = linkTypeDto;
        }
        if ((i2 & 512) == 0) {
            this.f45809j = null;
        } else {
            this.f45809j = assetDto;
        }
        if ((i2 & 1024) == 0) {
            this.f45810k = null;
        } else {
            this.f45810k = str4;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleCtaDataDto)) {
            return false;
        }
        ImmersiveArticleCtaDataDto immersiveArticleCtaDataDto = (ImmersiveArticleCtaDataDto) obj;
        return Intrinsics.c(this.f45802a, immersiveArticleCtaDataDto.f45802a) && this.f45803b == immersiveArticleCtaDataDto.f45803b && Intrinsics.c(this.f45804c, immersiveArticleCtaDataDto.f45804c) && this.d == immersiveArticleCtaDataDto.d && this.f45805e == immersiveArticleCtaDataDto.f45805e && Intrinsics.c(this.f45806f, immersiveArticleCtaDataDto.f45806f) && Intrinsics.c(this.g, immersiveArticleCtaDataDto.g) && Intrinsics.c(this.f45807h, immersiveArticleCtaDataDto.f45807h) && this.f45808i == immersiveArticleCtaDataDto.f45808i && Intrinsics.c(this.f45809j, immersiveArticleCtaDataDto.f45809j) && Intrinsics.c(this.f45810k, immersiveArticleCtaDataDto.f45810k);
    }

    public final int hashCode() {
        String str = this.f45802a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        ImmersiveArticleFontDto immersiveArticleFontDto = this.f45803b;
        int iHashCode2 = (iHashCode + (immersiveArticleFontDto == null ? 0 : immersiveArticleFontDto.hashCode())) * 31;
        String str2 = this.f45804c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        ImmersiveArticleFontDto immersiveArticleFontDto2 = this.d;
        int iHashCode4 = (iHashCode3 + (immersiveArticleFontDto2 == null ? 0 : immersiveArticleFontDto2.hashCode())) * 31;
        ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto = this.f45805e;
        int iHashCode5 = (iHashCode4 + (immersiveArticleSizeCardDto == null ? 0 : immersiveArticleSizeCardDto.hashCode())) * 31;
        ImmersiveArticleVideoDto immersiveArticleVideoDto = this.f45806f;
        int iHashCode6 = (iHashCode5 + (immersiveArticleVideoDto == null ? 0 : immersiveArticleVideoDto.hashCode())) * 31;
        List list = this.g;
        int iHashCode7 = (iHashCode6 + (list == null ? 0 : list.hashCode())) * 31;
        String str3 = this.f45807h;
        int iHashCode8 = (iHashCode7 + (str3 == null ? 0 : str3.hashCode())) * 31;
        LinkTypeDto linkTypeDto = this.f45808i;
        int iHashCode9 = (iHashCode8 + (linkTypeDto == null ? 0 : linkTypeDto.hashCode())) * 31;
        AssetDto assetDto = this.f45809j;
        int iHashCode10 = (iHashCode9 + (assetDto == null ? 0 : assetDto.hashCode())) * 31;
        String str4 = this.f45810k;
        return iHashCode10 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ImmersiveArticleCtaDataDto(title=");
        sb.append(this.f45802a);
        sb.append(", titleFont=");
        sb.append(this.f45803b);
        sb.append(", surtitle=");
        sb.append(this.f45804c);
        sb.append(", surtitleFont=");
        sb.append(this.d);
        sb.append(", ratio=");
        sb.append(this.f45805e);
        sb.append(", video=");
        sb.append(this.f45806f);
        sb.append(", looks=");
        o60.B(", link=", this.f45807h, ", linkType=", sb, this.g);
        sb.append(this.f45808i);
        sb.append(", asset=");
        sb.append(this.f45809j);
        sb.append(", url=");
        return n00.r(this.f45810k, ")", sb);
    }

    public ImmersiveArticleCtaDataDto() {
        this((String) null, (ImmersiveArticleFontDto) null, (String) null, (ImmersiveArticleFontDto) null, (ImmersiveArticleSizeCardDto) null, (ImmersiveArticleVideoDto) null, (List) null, (String) null, (LinkTypeDto) null, (AssetDto) null, (String) null, 2047, (DefaultConstructorMarker) null);
    }

    public ImmersiveArticleCtaDataDto(String str, ImmersiveArticleFontDto immersiveArticleFontDto, String str2, ImmersiveArticleFontDto immersiveArticleFontDto2, ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, ImmersiveArticleVideoDto immersiveArticleVideoDto, List<ImmersiveArticleLookCardDto> list, String str3, LinkTypeDto linkTypeDto, AssetDto assetDto, String str4) {
        this.f45802a = str;
        this.f45803b = immersiveArticleFontDto;
        this.f45804c = str2;
        this.d = immersiveArticleFontDto2;
        this.f45805e = immersiveArticleSizeCardDto;
        this.f45806f = immersiveArticleVideoDto;
        this.g = list;
        this.f45807h = str3;
        this.f45808i = linkTypeDto;
        this.f45809j = assetDto;
        this.f45810k = str4;
    }

    public /* synthetic */ ImmersiveArticleCtaDataDto(String str, ImmersiveArticleFontDto immersiveArticleFontDto, String str2, ImmersiveArticleFontDto immersiveArticleFontDto2, ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, ImmersiveArticleVideoDto immersiveArticleVideoDto, List list, String str3, LinkTypeDto linkTypeDto, AssetDto assetDto, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : immersiveArticleFontDto, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : immersiveArticleFontDto2, (i2 & 16) != 0 ? null : immersiveArticleSizeCardDto, (i2 & 32) != 0 ? null : immersiveArticleVideoDto, (i2 & 64) != 0 ? null : list, (i2 & 128) != 0 ? null : str3, (i2 & 256) != 0 ? null : linkTypeDto, (i2 & 512) != 0 ? null : assetDto, (i2 & 1024) != 0 ? null : str4);
    }
}
