package com.vuitton.android.data.dto.immersivearticle;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import defpackage.a;
import defpackage.fc;
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
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012BI\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fBS\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\t\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u000b\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleWallpaperDataDto;", "", "", "title", "ctaText", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;", "ratio", "Lcom/vuitton/android/data/dto/common/AssetDto;", "asset", "", "wallpapers", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ImmersiveArticleWallpaperDataDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Lazy[] f45963f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45964a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45965b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmersiveArticleSizeCardDto f45966c;
    public final AssetDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f45967e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleWallpaperDataDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleWallpaperDataDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ImmersiveArticleWallpaperDataDto> serializer() {
            return ImmersiveArticleWallpaperDataDto$$serializer.f45968a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f45963f = new Lazy[]{null, null, LazyKt.a(lazyThreadSafetyMode, new l30(22)), null, LazyKt.a(lazyThreadSafetyMode, new l30(23))};
    }

    public /* synthetic */ ImmersiveArticleWallpaperDataDto(int i2, String str, String str2, ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, AssetDto assetDto, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45964a = null;
        } else {
            this.f45964a = str;
        }
        if ((i2 & 2) == 0) {
            this.f45965b = null;
        } else {
            this.f45965b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f45966c = null;
        } else {
            this.f45966c = immersiveArticleSizeCardDto;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = assetDto;
        }
        if ((i2 & 16) == 0) {
            this.f45967e = null;
        } else {
            this.f45967e = list;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleWallpaperDataDto)) {
            return false;
        }
        ImmersiveArticleWallpaperDataDto immersiveArticleWallpaperDataDto = (ImmersiveArticleWallpaperDataDto) obj;
        return Intrinsics.c(this.f45964a, immersiveArticleWallpaperDataDto.f45964a) && Intrinsics.c(this.f45965b, immersiveArticleWallpaperDataDto.f45965b) && this.f45966c == immersiveArticleWallpaperDataDto.f45966c && Intrinsics.c(this.d, immersiveArticleWallpaperDataDto.d) && Intrinsics.c(this.f45967e, immersiveArticleWallpaperDataDto.f45967e);
    }

    public final int hashCode() {
        String str = this.f45964a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f45965b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto = this.f45966c;
        int iHashCode3 = (iHashCode2 + (immersiveArticleSizeCardDto == null ? 0 : immersiveArticleSizeCardDto.hashCode())) * 31;
        AssetDto assetDto = this.d;
        int iHashCode4 = (iHashCode3 + (assetDto == null ? 0 : assetDto.hashCode())) * 31;
        List list = this.f45967e;
        return iHashCode4 + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ImmersiveArticleWallpaperDataDto(title=", this.f45964a, ", ctaText=", this.f45965b, ", ratio=");
        sbS.append(this.f45966c);
        sbS.append(", asset=");
        sbS.append(this.d);
        sbS.append(", wallpapers=");
        return a.o(sbS, this.f45967e, ")");
    }

    public ImmersiveArticleWallpaperDataDto() {
        this((String) null, (String) null, (ImmersiveArticleSizeCardDto) null, (AssetDto) null, (List) null, 31, (DefaultConstructorMarker) null);
    }

    public ImmersiveArticleWallpaperDataDto(String str, String str2, ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, AssetDto assetDto, List<String> list) {
        this.f45964a = str;
        this.f45965b = str2;
        this.f45966c = immersiveArticleSizeCardDto;
        this.d = assetDto;
        this.f45967e = list;
    }

    public /* synthetic */ ImmersiveArticleWallpaperDataDto(String str, String str2, ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, AssetDto assetDto, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : immersiveArticleSizeCardDto, (i2 & 8) != 0 ? null : assetDto, (i2 & 16) != 0 ? null : list);
    }
}
