package com.vuitton.android.data.dto.immersivearticle;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.universal.agent.Product;
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
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012B9\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fBI\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u000b\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;", "", "", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductModelDto;", Product.TYPE, "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductImageStyleDto;", "imageStyle", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductDisplayStyleDto;", "displayStyle", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;", "ratio", "<init>", "(Ljava/util/List;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductImageStyleDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductDisplayStyleDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductImageStyleDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductDisplayStyleDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ImmersiveArticleProductsDataDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy[] f45900e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f45901a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmersiveArticleProductImageStyleDto f45902b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmersiveArticleProductDisplayStyleDto f45903c;
    public final ImmersiveArticleSizeCardDto d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ImmersiveArticleProductsDataDto> serializer() {
            return ImmersiveArticleProductsDataDto$$serializer.f45904a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f45900e = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new l30(5)), LazyKt.a(lazyThreadSafetyMode, new l30(6)), LazyKt.a(lazyThreadSafetyMode, new l30(7)), LazyKt.a(lazyThreadSafetyMode, new l30(8))};
    }

    public /* synthetic */ ImmersiveArticleProductsDataDto(int i2, List list, ImmersiveArticleProductImageStyleDto immersiveArticleProductImageStyleDto, ImmersiveArticleProductDisplayStyleDto immersiveArticleProductDisplayStyleDto, ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, ImmersiveArticleProductsDataDto$$serializer.f45904a.getF19850b());
            throw null;
        }
        this.f45901a = list;
        if ((i2 & 2) == 0) {
            this.f45902b = null;
        } else {
            this.f45902b = immersiveArticleProductImageStyleDto;
        }
        if ((i2 & 4) == 0) {
            this.f45903c = null;
        } else {
            this.f45903c = immersiveArticleProductDisplayStyleDto;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = immersiveArticleSizeCardDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleProductsDataDto)) {
            return false;
        }
        ImmersiveArticleProductsDataDto immersiveArticleProductsDataDto = (ImmersiveArticleProductsDataDto) obj;
        return Intrinsics.c(this.f45901a, immersiveArticleProductsDataDto.f45901a) && this.f45902b == immersiveArticleProductsDataDto.f45902b && this.f45903c == immersiveArticleProductsDataDto.f45903c && this.d == immersiveArticleProductsDataDto.d;
    }

    public final int hashCode() {
        int iHashCode = this.f45901a.hashCode() * 31;
        ImmersiveArticleProductImageStyleDto immersiveArticleProductImageStyleDto = this.f45902b;
        int iHashCode2 = (iHashCode + (immersiveArticleProductImageStyleDto == null ? 0 : immersiveArticleProductImageStyleDto.hashCode())) * 31;
        ImmersiveArticleProductDisplayStyleDto immersiveArticleProductDisplayStyleDto = this.f45903c;
        int iHashCode3 = (iHashCode2 + (immersiveArticleProductDisplayStyleDto == null ? 0 : immersiveArticleProductDisplayStyleDto.hashCode())) * 31;
        ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto = this.d;
        return iHashCode3 + (immersiveArticleSizeCardDto != null ? immersiveArticleSizeCardDto.hashCode() : 0);
    }

    public final String toString() {
        return "ImmersiveArticleProductsDataDto(products=" + this.f45901a + ", imageStyle=" + this.f45902b + ", displayStyle=" + this.f45903c + ", ratio=" + this.d + ")";
    }

    public ImmersiveArticleProductsDataDto(List<ImmersiveArticleProductModelDto> list, ImmersiveArticleProductImageStyleDto immersiveArticleProductImageStyleDto, ImmersiveArticleProductDisplayStyleDto immersiveArticleProductDisplayStyleDto, ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto) {
        list.getClass();
        this.f45901a = list;
        this.f45902b = immersiveArticleProductImageStyleDto;
        this.f45903c = immersiveArticleProductDisplayStyleDto;
        this.d = immersiveArticleSizeCardDto;
    }

    public /* synthetic */ ImmersiveArticleProductsDataDto(List list, ImmersiveArticleProductImageStyleDto immersiveArticleProductImageStyleDto, ImmersiveArticleProductDisplayStyleDto immersiveArticleProductDisplayStyleDto, ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i2 & 2) != 0 ? null : immersiveArticleProductImageStyleDto, (i2 & 4) != 0 ? null : immersiveArticleProductDisplayStyleDto, (i2 & 8) != 0 ? null : immersiveArticleSizeCardDto);
    }
}
