package com.vuitton.android.data.dto.immersivearticle;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkLegacyDto;
import defpackage.fc;
import defpackage.l30;
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
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fBM\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u000b\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSlideDto;", "", "", "title", "surtitle", "Lcom/vuitton/android/data/dto/common/AssetDto;", "asset", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;", "ratio", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;", "link", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ImmersiveArticleSlideDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Lazy[] f45910f = {null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new l30(10)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45911a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45912b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetDto f45913c;
    public final ImmersiveArticleSizeCardDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ContributionLinkLegacyDto f45914e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSlideDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSlideDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ImmersiveArticleSlideDto> serializer() {
            return ImmersiveArticleSlideDto$$serializer.f45915a;
        }
    }

    public /* synthetic */ ImmersiveArticleSlideDto(int i2, String str, String str2, AssetDto assetDto, ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, ContributionLinkLegacyDto contributionLinkLegacyDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (29 != (i2 & 29)) {
            PluginExceptionsKt.b(i2, 29, ImmersiveArticleSlideDto$$serializer.f45915a.getF19838b());
            throw null;
        }
        this.f45911a = str;
        if ((i2 & 2) == 0) {
            this.f45912b = null;
        } else {
            this.f45912b = str2;
        }
        this.f45913c = assetDto;
        this.d = immersiveArticleSizeCardDto;
        this.f45914e = contributionLinkLegacyDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleSlideDto)) {
            return false;
        }
        ImmersiveArticleSlideDto immersiveArticleSlideDto = (ImmersiveArticleSlideDto) obj;
        return Intrinsics.c(this.f45911a, immersiveArticleSlideDto.f45911a) && Intrinsics.c(this.f45912b, immersiveArticleSlideDto.f45912b) && Intrinsics.c(this.f45913c, immersiveArticleSlideDto.f45913c) && this.d == immersiveArticleSlideDto.d && Intrinsics.c(this.f45914e, immersiveArticleSlideDto.f45914e);
    }

    public final int hashCode() {
        int iHashCode = this.f45911a.hashCode() * 31;
        String str = this.f45912b;
        return this.f45914e.hashCode() + ((this.d.hashCode() + ((this.f45913c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ImmersiveArticleSlideDto(title=", this.f45911a, ", surtitle=", this.f45912b, ", asset=");
        sbS.append(this.f45913c);
        sbS.append(", ratio=");
        sbS.append(this.d);
        sbS.append(", link=");
        sbS.append(this.f45914e);
        sbS.append(")");
        return sbS.toString();
    }

    public ImmersiveArticleSlideDto(String str, String str2, AssetDto assetDto, ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, ContributionLinkLegacyDto contributionLinkLegacyDto) {
        str.getClass();
        assetDto.getClass();
        immersiveArticleSizeCardDto.getClass();
        contributionLinkLegacyDto.getClass();
        this.f45911a = str;
        this.f45912b = str2;
        this.f45913c = assetDto;
        this.d = immersiveArticleSizeCardDto;
        this.f45914e = contributionLinkLegacyDto;
    }

    public /* synthetic */ ImmersiveArticleSlideDto(String str, String str2, AssetDto assetDto, ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, ContributionLinkLegacyDto contributionLinkLegacyDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2, assetDto, immersiveArticleSizeCardDto, contributionLinkLegacyDto);
    }
}
