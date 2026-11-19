package com.vuitton.android.data.dto.immersivearticle;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.universal.agent.Product;
import com.vuitton.android.data.dto.producttiny.ProductTinyDto;
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
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B%\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nB?\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;", "", "", "Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto;", Product.TYPE, "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductImageStyleDto;", "imageStyle", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductDisplayStyleDto;", "displayStyle", "<init>", "(Ljava/util/List;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductImageStyleDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductDisplayStyleDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductImageStyleDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductDisplayStyleDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ImmersiveArticleProductListDataDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f45877a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmersiveArticleProductImageStyleDto f45878b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmersiveArticleProductDisplayStyleDto f45879c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ImmersiveArticleProductListDataDto> serializer() {
            return ImmersiveArticleProductListDataDto$$serializer.f45880a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        d = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new l30(0)), LazyKt.a(lazyThreadSafetyMode, new l30(1)), LazyKt.a(lazyThreadSafetyMode, new l30(2))};
    }

    public /* synthetic */ ImmersiveArticleProductListDataDto(int i2, List list, ImmersiveArticleProductImageStyleDto immersiveArticleProductImageStyleDto, ImmersiveArticleProductDisplayStyleDto immersiveArticleProductDisplayStyleDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, ImmersiveArticleProductListDataDto$$serializer.f45880a.getF19850b());
            throw null;
        }
        this.f45877a = list;
        this.f45878b = immersiveArticleProductImageStyleDto;
        this.f45879c = immersiveArticleProductDisplayStyleDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleProductListDataDto)) {
            return false;
        }
        ImmersiveArticleProductListDataDto immersiveArticleProductListDataDto = (ImmersiveArticleProductListDataDto) obj;
        return Intrinsics.c(this.f45877a, immersiveArticleProductListDataDto.f45877a) && this.f45878b == immersiveArticleProductListDataDto.f45878b && this.f45879c == immersiveArticleProductListDataDto.f45879c;
    }

    public final int hashCode() {
        return this.f45879c.hashCode() + ((this.f45878b.hashCode() + (this.f45877a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "ImmersiveArticleProductListDataDto(products=" + this.f45877a + ", imageStyle=" + this.f45878b + ", displayStyle=" + this.f45879c + ")";
    }

    public ImmersiveArticleProductListDataDto(List<ProductTinyDto> list, ImmersiveArticleProductImageStyleDto immersiveArticleProductImageStyleDto, ImmersiveArticleProductDisplayStyleDto immersiveArticleProductDisplayStyleDto) {
        list.getClass();
        immersiveArticleProductImageStyleDto.getClass();
        immersiveArticleProductDisplayStyleDto.getClass();
        this.f45877a = list;
        this.f45878b = immersiveArticleProductImageStyleDto;
        this.f45879c = immersiveArticleProductDisplayStyleDto;
    }
}
