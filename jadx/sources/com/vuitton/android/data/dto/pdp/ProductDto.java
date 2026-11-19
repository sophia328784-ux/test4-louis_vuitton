package com.vuitton.android.data.dto.pdp;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.product.virtualtryon.VirtualTryOnDto;
import com.vuitton.foundation.model.domain.model.product.ProductId;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.gp0;
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
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000´\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 N2\u00020\u0001:\u0002ONB¡\u0004\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0012\u001a\u00020\u000e\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u0012\u0006\u0010\u0017\u001a\u00020\u000e\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001b\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u001f\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u001f\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u001f\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u001f\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u001f\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010%\u0012\u0010\b\u0002\u0010)\u001a\n\u0012\u0004\u0012\u00020(\u0018\u00010'\u0012\f\u0010+\u001a\b\u0012\u0004\u0012\u00020*0'\u0012\u0010\b\u0002\u0010,\u001a\n\u0012\u0004\u0012\u00020*\u0018\u00010'\u0012\f\u0010-\u001a\b\u0012\u0004\u0012\u00020*0'\u0012\f\u0010/\u001a\b\u0012\u0004\u0012\u00020.0'\u0012\u0010\b\u0002\u00101\u001a\n\u0012\u0004\u0012\u000200\u0018\u00010'\u0012\u0006\u00103\u001a\u000202\u0012\n\b\u0002\u00105\u001a\u0004\u0018\u000104\u0012\n\b\u0002\u00106\u001a\u0004\u0018\u00010\u0004\u0012\u0010\b\u0002\u00108\u001a\n\u0012\u0004\u0012\u000207\u0018\u00010'\u0012\n\b\u0002\u00109\u001a\u0004\u0018\u000107\u0012\u0010\b\u0002\u0010;\u001a\n\u0012\u0004\u0012\u00020:\u0018\u00010'\u0012\u0010\b\u0002\u0010=\u001a\n\u0012\u0004\u0012\u00020<\u0018\u00010'\u0012\u0010\b\u0002\u0010?\u001a\n\u0012\u0004\u0012\u00020>\u0018\u00010'\u0012\n\b\u0002\u0010@\u001a\u0004\u0018\u00010\u001f\u0012\u0006\u0010A\u001a\u00020\u000e\u0012\f\u0010C\u001a\b\u0012\u0004\u0012\u00020B0'\u0012\n\b\u0002\u0010D\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010E\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\bF\u0010GB\u0099\u0004\b\u0010\u0012\u0006\u0010I\u001a\u00020H\u0012\u0006\u0010J\u001a\u00020H\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0012\u001a\u00020\u000e\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u0012\u0006\u0010\u0017\u001a\u00020\u000e\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u001b\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u0012\b\u0010 \u001a\u0004\u0018\u00010\u001f\u0012\b\u0010!\u001a\u0004\u0018\u00010\u001f\u0012\b\u0010\"\u001a\u0004\u0018\u00010\u001f\u0012\b\u0010#\u001a\u0004\u0018\u00010\u001f\u0012\b\u0010$\u001a\u0004\u0018\u00010\u001f\u0012\b\u0010&\u001a\u0004\u0018\u00010%\u0012\u000e\u0010)\u001a\n\u0012\u0004\u0012\u00020(\u0018\u00010'\u0012\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020*\u0018\u00010'\u0012\u000e\u0010,\u001a\n\u0012\u0004\u0012\u00020*\u0018\u00010'\u0012\u000e\u0010-\u001a\n\u0012\u0004\u0012\u00020*\u0018\u00010'\u0012\u000e\u0010/\u001a\n\u0012\u0004\u0012\u00020.\u0018\u00010'\u0012\u000e\u00101\u001a\n\u0012\u0004\u0012\u000200\u0018\u00010'\u0012\b\u00103\u001a\u0004\u0018\u000102\u0012\b\u00105\u001a\u0004\u0018\u000104\u0012\b\u00106\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u00108\u001a\n\u0012\u0004\u0012\u000207\u0018\u00010'\u0012\b\u00109\u001a\u0004\u0018\u000107\u0012\u000e\u0010;\u001a\n\u0012\u0004\u0012\u00020:\u0018\u00010'\u0012\u000e\u0010=\u001a\n\u0012\u0004\u0012\u00020<\u0018\u00010'\u0012\u000e\u0010?\u001a\n\u0012\u0004\u0012\u00020>\u0018\u00010'\u0012\b\u0010@\u001a\u0004\u0018\u00010\u001f\u0012\u0006\u0010A\u001a\u00020\u000e\u0012\u000e\u0010C\u001a\n\u0012\u0004\u0012\u00020B\u0018\u00010'\u0012\b\u0010D\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010E\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010L\u001a\u0004\u0018\u00010K¢\u0006\u0004\bF\u0010M¨\u0006P"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/ProductDto;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "", "name", "commercialTag", "Lcom/vuitton/foundation/model/domain/model/product/ProductId;", "productId", "shortDescription", "detailedDescription", "webPath", "Lcom/vuitton/android/data/dto/pdp/ProductBackgroundDto;", "background", "", "locateInStore", "backInStock", "showARModel", "hideAddToWishlist", "sizeGuide", "sizeGuideId", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "contextualSizingImage", "isDiamond", "isBackOrder", "Lcom/vuitton/android/data/dto/pdp/DimensionsDto;", "dimensions", "Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;", "virtualTryOn", "Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;", "backupDisclaimer", "Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;", "color", "material", "carat", "size", "language", "Lcom/vuitton/android/data/dto/pdp/EditoDto;", "edito", "", "Lcom/vuitton/android/data/dto/pdp/MediaDto;", "medias", "Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;", "skus", "skuLook", "isRelatedTo", "Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;", "modelSizeVariations", "Lcom/vuitton/android/data/dto/pdp/PanelInformationDto;", "panelInformation", "Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;", "sellableStatus", "Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;", "customization", "packagingVariation", "Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;", "assets", "mainAsset", "Lcom/vuitton/android/data/dto/pdp/ProductDetailDto;", "details", "Lcom/vuitton/android/data/dto/pdp/HighlightDto;", "highlights", "Lcom/vuitton/android/data/dto/pdp/EditorialContentDto;", "editorialContents", "finish", "isShadeFinderEnabled", "Lcom/vuitton/android/data/dto/pdp/FinishVariationDto;", "finishVariations", "shareUrl", "fitInformationMention", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/pdp/ProductBackgroundDto;ZZZZZLjava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;ZLjava/lang/Boolean;Lcom/vuitton/android/data/dto/pdp/DimensionsDto;Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/EditoDto;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "seen1", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/pdp/ProductBackgroundDto;ZZZZZLjava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;ZLjava/lang/Boolean;Lcom/vuitton/android/data/dto/pdp/DimensionsDto;Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/EditoDto;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ProductDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] T;
    public final List A;
    public final List B;
    public final List C;
    public final List D;
    public final List E;
    public final List F;
    public final SellableStatusDto G;
    public final ProductCustomizationDto H;
    public final String I;
    public final List J;
    public final DigitalAssetProductDto K;
    public final List L;
    public final List M;
    public final List N;
    public final ProductCharacteristicsDto O;
    public final boolean P;
    public final List Q;
    public final String R;
    public final String S;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46276a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46277b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46278c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f46279e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f46280f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ProductBackgroundDto f46281h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f46282i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f46283j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f46284k;
    public final boolean l;
    public final boolean m;
    public final String n;
    public final AssetImageDto o;
    public final boolean p;
    public final Boolean q;
    public final DimensionsDto r;
    public final VirtualTryOnDto s;
    public final ProductDisclaimerDto t;
    public final ProductCharacteristicsDto u;
    public final ProductCharacteristicsDto v;
    public final ProductCharacteristicsDto w;
    public final ProductCharacteristicsDto x;
    public final ProductCharacteristicsDto y;
    public final EditoDto z;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/ProductDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/pdp/ProductDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ProductDto> serializer() {
            return ProductDto$$serializer.f46285a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        T = new Lazy[]{null, null, null, null, null, null, null, LazyKt.a(lazyThreadSafetyMode, new gp0(17)), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, LazyKt.a(lazyThreadSafetyMode, new gp0(22)), LazyKt.a(lazyThreadSafetyMode, new gp0(23)), LazyKt.a(lazyThreadSafetyMode, new gp0(24)), LazyKt.a(lazyThreadSafetyMode, new gp0(25)), LazyKt.a(lazyThreadSafetyMode, new gp0(26)), LazyKt.a(lazyThreadSafetyMode, new gp0(27)), null, null, null, LazyKt.a(lazyThreadSafetyMode, new gp0(28)), null, LazyKt.a(lazyThreadSafetyMode, new gp0(18)), LazyKt.a(lazyThreadSafetyMode, new gp0(19)), LazyKt.a(lazyThreadSafetyMode, new gp0(20)), null, null, LazyKt.a(lazyThreadSafetyMode, new gp0(21)), null, null};
    }

    public /* synthetic */ ProductDto(int i2, int i3, String str, String str2, String str3, String str4, String str5, String str6, String str7, ProductBackgroundDto productBackgroundDto, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, String str8, AssetImageDto assetImageDto, boolean z6, Boolean bool, DimensionsDto dimensionsDto, VirtualTryOnDto virtualTryOnDto, ProductDisclaimerDto productDisclaimerDto, ProductCharacteristicsDto productCharacteristicsDto, ProductCharacteristicsDto productCharacteristicsDto2, ProductCharacteristicsDto productCharacteristicsDto3, ProductCharacteristicsDto productCharacteristicsDto4, ProductCharacteristicsDto productCharacteristicsDto5, EditoDto editoDto, List list, List list2, List list3, List list4, List list5, List list6, SellableStatusDto sellableStatusDto, ProductCustomizationDto productCustomizationDto, String str9, List list7, DigitalAssetProductDto digitalAssetProductDto, List list8, List list9, List list10, ProductCharacteristicsDto productCharacteristicsDto6, boolean z7, List list11, String str10, String str11, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if ((1744871371 != (i2 & 1744871371)) || (1537 != (i3 & 1537))) {
            PluginExceptionsKt.a(new int[]{i2, i3}, new int[]{1744871371, 1537}, ProductDto$$serializer.f46285a.getF19850b());
            throw null;
        }
        this.f46276a = str;
        this.f46277b = str2;
        if ((i2 & 4) == 0) {
            this.f46278c = null;
        } else {
            this.f46278c = str3;
        }
        this.d = str4;
        if ((i2 & 16) == 0) {
            this.f46279e = null;
        } else {
            this.f46279e = str5;
        }
        if ((i2 & 32) == 0) {
            this.f46280f = null;
        } else {
            this.f46280f = str6;
        }
        this.g = str7;
        this.f46281h = productBackgroundDto;
        this.f46282i = z;
        this.f46283j = z2;
        this.f46284k = z3;
        this.l = z4;
        this.m = z5;
        if ((i2 & 8192) == 0) {
            this.n = null;
        } else {
            this.n = str8;
        }
        if ((i2 & 16384) == 0) {
            this.o = null;
        } else {
            this.o = assetImageDto;
        }
        this.p = z6;
        if ((65536 & i2) == 0) {
            this.q = null;
        } else {
            this.q = bool;
        }
        if ((131072 & i2) == 0) {
            this.r = null;
        } else {
            this.r = dimensionsDto;
        }
        if ((262144 & i2) == 0) {
            this.s = null;
        } else {
            this.s = virtualTryOnDto;
        }
        if ((524288 & i2) == 0) {
            this.t = null;
        } else {
            this.t = productDisclaimerDto;
        }
        if ((1048576 & i2) == 0) {
            this.u = null;
        } else {
            this.u = productCharacteristicsDto;
        }
        if ((2097152 & i2) == 0) {
            this.v = null;
        } else {
            this.v = productCharacteristicsDto2;
        }
        if ((4194304 & i2) == 0) {
            this.w = null;
        } else {
            this.w = productCharacteristicsDto3;
        }
        if ((8388608 & i2) == 0) {
            this.x = null;
        } else {
            this.x = productCharacteristicsDto4;
        }
        if ((16777216 & i2) == 0) {
            this.y = null;
        } else {
            this.y = productCharacteristicsDto5;
        }
        if ((33554432 & i2) == 0) {
            this.z = null;
        } else {
            this.z = editoDto;
        }
        if ((67108864 & i2) == 0) {
            this.A = null;
        } else {
            this.A = list;
        }
        this.B = list2;
        if ((268435456 & i2) == 0) {
            this.C = null;
        } else {
            this.C = list3;
        }
        this.D = list4;
        this.E = list5;
        if ((i2 & Integer.MIN_VALUE) == 0) {
            this.F = null;
        } else {
            this.F = list6;
        }
        this.G = sellableStatusDto;
        if ((i3 & 2) == 0) {
            this.H = null;
        } else {
            this.H = productCustomizationDto;
        }
        if ((i3 & 4) == 0) {
            this.I = null;
        } else {
            this.I = str9;
        }
        if ((i3 & 8) == 0) {
            this.J = null;
        } else {
            this.J = list7;
        }
        if ((i3 & 16) == 0) {
            this.K = null;
        } else {
            this.K = digitalAssetProductDto;
        }
        if ((i3 & 32) == 0) {
            this.L = null;
        } else {
            this.L = list8;
        }
        if ((i3 & 64) == 0) {
            this.M = null;
        } else {
            this.M = list9;
        }
        if ((i3 & 128) == 0) {
            this.N = null;
        } else {
            this.N = list10;
        }
        if ((i3 & 256) == 0) {
            this.O = null;
        } else {
            this.O = productCharacteristicsDto6;
        }
        this.P = z7;
        this.Q = list11;
        if ((i3 & 2048) == 0) {
            this.R = null;
        } else {
            this.R = str10;
        }
        if ((i3 & 4096) == 0) {
            this.S = null;
        } else {
            this.S = str11;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductDto)) {
            return false;
        }
        ProductDto productDto = (ProductDto) obj;
        String str = productDto.f46276a;
        SkuId.Companion companion = SkuId.INSTANCE;
        if (!Intrinsics.c(this.f46276a, str) || !Intrinsics.c(this.f46277b, productDto.f46277b) || !Intrinsics.c(this.f46278c, productDto.f46278c)) {
            return false;
        }
        String str2 = productDto.d;
        ProductId.Companion companion2 = ProductId.INSTANCE;
        return Intrinsics.c(this.d, str2) && Intrinsics.c(this.f46279e, productDto.f46279e) && Intrinsics.c(this.f46280f, productDto.f46280f) && Intrinsics.c(this.g, productDto.g) && this.f46281h == productDto.f46281h && this.f46282i == productDto.f46282i && this.f46283j == productDto.f46283j && this.f46284k == productDto.f46284k && this.l == productDto.l && this.m == productDto.m && Intrinsics.c(this.n, productDto.n) && Intrinsics.c(this.o, productDto.o) && this.p == productDto.p && Intrinsics.c(this.q, productDto.q) && Intrinsics.c(this.r, productDto.r) && Intrinsics.c(this.s, productDto.s) && Intrinsics.c(this.t, productDto.t) && Intrinsics.c(this.u, productDto.u) && Intrinsics.c(this.v, productDto.v) && Intrinsics.c(this.w, productDto.w) && Intrinsics.c(this.x, productDto.x) && Intrinsics.c(this.y, productDto.y) && Intrinsics.c(this.z, productDto.z) && Intrinsics.c(this.A, productDto.A) && Intrinsics.c(this.B, productDto.B) && Intrinsics.c(this.C, productDto.C) && Intrinsics.c(this.D, productDto.D) && Intrinsics.c(this.E, productDto.E) && Intrinsics.c(this.F, productDto.F) && Intrinsics.c(this.G, productDto.G) && Intrinsics.c(this.H, productDto.H) && Intrinsics.c(this.I, productDto.I) && Intrinsics.c(this.J, productDto.J) && Intrinsics.c(this.K, productDto.K) && Intrinsics.c(this.L, productDto.L) && Intrinsics.c(this.M, productDto.M) && Intrinsics.c(this.N, productDto.N) && Intrinsics.c(this.O, productDto.O) && this.P == productDto.P && Intrinsics.c(this.Q, productDto.Q) && Intrinsics.c(this.R, productDto.R) && Intrinsics.c(this.S, productDto.S);
    }

    public final int hashCode() {
        SkuId.Companion companion = SkuId.INSTANCE;
        int iB = fc.b(this.f46276a.hashCode() * 31, 31, this.f46277b);
        String str = this.f46278c;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        ProductId.Companion companion2 = ProductId.INSTANCE;
        int iB2 = fc.b(iHashCode, 31, this.d);
        String str2 = this.f46279e;
        int iHashCode2 = (iB2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f46280f;
        int iB3 = o60.b(o60.b(o60.b(o60.b(o60.b((this.f46281h.hashCode() + fc.b((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31, 31, this.g)) * 31, 31, this.f46282i), 31, this.f46283j), 31, this.f46284k), 31, this.l), 31, this.m);
        String str4 = this.n;
        int iHashCode3 = (iB3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        AssetImageDto assetImageDto = this.o;
        int iB4 = o60.b((iHashCode3 + (assetImageDto == null ? 0 : assetImageDto.hashCode())) * 31, 31, this.p);
        Boolean bool = this.q;
        int iHashCode4 = (iB4 + (bool == null ? 0 : bool.hashCode())) * 31;
        DimensionsDto dimensionsDto = this.r;
        int iHashCode5 = (iHashCode4 + (dimensionsDto == null ? 0 : dimensionsDto.hashCode())) * 31;
        VirtualTryOnDto virtualTryOnDto = this.s;
        int iHashCode6 = (iHashCode5 + (virtualTryOnDto == null ? 0 : virtualTryOnDto.f46497a.hashCode())) * 31;
        ProductDisclaimerDto productDisclaimerDto = this.t;
        int iHashCode7 = (iHashCode6 + (productDisclaimerDto == null ? 0 : productDisclaimerDto.hashCode())) * 31;
        ProductCharacteristicsDto productCharacteristicsDto = this.u;
        int iHashCode8 = (iHashCode7 + (productCharacteristicsDto == null ? 0 : productCharacteristicsDto.hashCode())) * 31;
        ProductCharacteristicsDto productCharacteristicsDto2 = this.v;
        int iHashCode9 = (iHashCode8 + (productCharacteristicsDto2 == null ? 0 : productCharacteristicsDto2.hashCode())) * 31;
        ProductCharacteristicsDto productCharacteristicsDto3 = this.w;
        int iHashCode10 = (iHashCode9 + (productCharacteristicsDto3 == null ? 0 : productCharacteristicsDto3.hashCode())) * 31;
        ProductCharacteristicsDto productCharacteristicsDto4 = this.x;
        int iHashCode11 = (iHashCode10 + (productCharacteristicsDto4 == null ? 0 : productCharacteristicsDto4.hashCode())) * 31;
        ProductCharacteristicsDto productCharacteristicsDto5 = this.y;
        int iHashCode12 = (iHashCode11 + (productCharacteristicsDto5 == null ? 0 : productCharacteristicsDto5.hashCode())) * 31;
        EditoDto editoDto = this.z;
        int iHashCode13 = (iHashCode12 + (editoDto == null ? 0 : editoDto.hashCode())) * 31;
        List list = this.A;
        int iA = n00.a((iHashCode13 + (list == null ? 0 : list.hashCode())) * 31, 31, this.B);
        List list2 = this.C;
        int iA2 = n00.a(n00.a((iA + (list2 == null ? 0 : list2.hashCode())) * 31, 31, this.D), 31, this.E);
        List list3 = this.F;
        int iHashCode14 = (this.G.hashCode() + ((iA2 + (list3 == null ? 0 : list3.hashCode())) * 31)) * 31;
        ProductCustomizationDto productCustomizationDto = this.H;
        int iHashCode15 = (iHashCode14 + (productCustomizationDto == null ? 0 : productCustomizationDto.hashCode())) * 31;
        String str5 = this.I;
        int iHashCode16 = (iHashCode15 + (str5 == null ? 0 : str5.hashCode())) * 31;
        List list4 = this.J;
        int iHashCode17 = (iHashCode16 + (list4 == null ? 0 : list4.hashCode())) * 31;
        DigitalAssetProductDto digitalAssetProductDto = this.K;
        int iHashCode18 = (iHashCode17 + (digitalAssetProductDto == null ? 0 : digitalAssetProductDto.hashCode())) * 31;
        List list5 = this.L;
        int iHashCode19 = (iHashCode18 + (list5 == null ? 0 : list5.hashCode())) * 31;
        List list6 = this.M;
        int iHashCode20 = (iHashCode19 + (list6 == null ? 0 : list6.hashCode())) * 31;
        List list7 = this.N;
        int iHashCode21 = (iHashCode20 + (list7 == null ? 0 : list7.hashCode())) * 31;
        ProductCharacteristicsDto productCharacteristicsDto6 = this.O;
        int iA3 = n00.a(o60.b((iHashCode21 + (productCharacteristicsDto6 == null ? 0 : productCharacteristicsDto6.hashCode())) * 31, 31, this.P), 31, this.Q);
        String str6 = this.R;
        int iHashCode22 = (iA3 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.S;
        return iHashCode22 + (str7 != null ? str7.hashCode() : 0);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        ProductId.Companion companion2 = ProductId.INSTANCE;
        StringBuilder sbS = fc.s("ProductDto(sku=", this.f46276a, ", name=", this.f46277b, ", commercialTag=");
        cj.C(sbS, this.f46278c, ", productId=", this.d, ", shortDescription=");
        cj.C(sbS, this.f46279e, ", detailedDescription=", this.f46280f, ", webPath=");
        sbS.append(this.g);
        sbS.append(", background=");
        sbS.append(this.f46281h);
        sbS.append(", locateInStore=");
        fc.y(sbS, this.f46282i, ", backInStock=", this.f46283j, ", showARModel=");
        fc.y(sbS, this.f46284k, ", hideAddToWishlist=", this.l, ", sizeGuide=");
        cj.A(", sizeGuideId=", this.n, ", contextualSizingImage=", sbS, this.m);
        sbS.append(this.o);
        sbS.append(", isDiamond=");
        sbS.append(this.p);
        sbS.append(", isBackOrder=");
        sbS.append(this.q);
        sbS.append(", dimensions=");
        sbS.append(this.r);
        sbS.append(", virtualTryOn=");
        sbS.append(this.s);
        sbS.append(", backupDisclaimer=");
        sbS.append(this.t);
        sbS.append(", color=");
        sbS.append(this.u);
        sbS.append(", material=");
        sbS.append(this.v);
        sbS.append(", carat=");
        sbS.append(this.w);
        sbS.append(", size=");
        sbS.append(this.x);
        sbS.append(", language=");
        sbS.append(this.y);
        sbS.append(", edito=");
        sbS.append(this.z);
        sbS.append(", medias=");
        a.C(sbS, this.A, ", skus=", this.B, ", skuLook=");
        a.C(sbS, this.C, ", isRelatedTo=", this.D, ", modelSizeVariations=");
        a.C(sbS, this.E, ", panelInformation=", this.F, ", sellableStatus=");
        sbS.append(this.G);
        sbS.append(", customization=");
        sbS.append(this.H);
        sbS.append(", packagingVariation=");
        d21.z(this.I, ", assets=", ", mainAsset=", sbS, this.J);
        sbS.append(this.K);
        sbS.append(", details=");
        sbS.append(this.L);
        sbS.append(", highlights=");
        a.C(sbS, this.M, ", editorialContents=", this.N, ", finish=");
        sbS.append(this.O);
        sbS.append(", isShadeFinderEnabled=");
        sbS.append(this.P);
        sbS.append(", finishVariations=");
        o60.B(", shareUrl=", this.R, ", fitInformationMention=", sbS, this.Q);
        return n00.r(this.S, ")", sbS);
    }

    public ProductDto(String str, String str2, String str3, String str4, String str5, String str6, String str7, ProductBackgroundDto productBackgroundDto, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, String str8, AssetImageDto assetImageDto, boolean z6, Boolean bool, DimensionsDto dimensionsDto, VirtualTryOnDto virtualTryOnDto, ProductDisclaimerDto productDisclaimerDto, ProductCharacteristicsDto productCharacteristicsDto, ProductCharacteristicsDto productCharacteristicsDto2, ProductCharacteristicsDto productCharacteristicsDto3, ProductCharacteristicsDto productCharacteristicsDto4, ProductCharacteristicsDto productCharacteristicsDto5, EditoDto editoDto, List list, List list2, List list3, List list4, List list5, List list6, SellableStatusDto sellableStatusDto, ProductCustomizationDto productCustomizationDto, String str9, List list7, DigitalAssetProductDto digitalAssetProductDto, List list8, List list9, List list10, ProductCharacteristicsDto productCharacteristicsDto6, boolean z7, List list11, String str10, String str11, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        str4.getClass();
        str7.getClass();
        productBackgroundDto.getClass();
        list2.getClass();
        list4.getClass();
        list5.getClass();
        sellableStatusDto.getClass();
        list11.getClass();
        this.f46276a = str;
        this.f46277b = str2;
        this.f46278c = str3;
        this.d = str4;
        this.f46279e = str5;
        this.f46280f = str6;
        this.g = str7;
        this.f46281h = productBackgroundDto;
        this.f46282i = z;
        this.f46283j = z2;
        this.f46284k = z3;
        this.l = z4;
        this.m = z5;
        this.n = str8;
        this.o = assetImageDto;
        this.p = z6;
        this.q = bool;
        this.r = dimensionsDto;
        this.s = virtualTryOnDto;
        this.t = productDisclaimerDto;
        this.u = productCharacteristicsDto;
        this.v = productCharacteristicsDto2;
        this.w = productCharacteristicsDto3;
        this.x = productCharacteristicsDto4;
        this.y = productCharacteristicsDto5;
        this.z = editoDto;
        this.A = list;
        this.B = list2;
        this.C = list3;
        this.D = list4;
        this.E = list5;
        this.F = list6;
        this.G = sellableStatusDto;
        this.H = productCustomizationDto;
        this.I = str9;
        this.J = list7;
        this.K = digitalAssetProductDto;
        this.L = list8;
        this.M = list9;
        this.N = list10;
        this.O = productCharacteristicsDto6;
        this.P = z7;
        this.Q = list11;
        this.R = str10;
        this.S = str11;
    }

    public /* synthetic */ ProductDto(String str, String str2, String str3, String str4, String str5, String str6, String str7, ProductBackgroundDto productBackgroundDto, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, String str8, AssetImageDto assetImageDto, boolean z6, Boolean bool, DimensionsDto dimensionsDto, VirtualTryOnDto virtualTryOnDto, ProductDisclaimerDto productDisclaimerDto, ProductCharacteristicsDto productCharacteristicsDto, ProductCharacteristicsDto productCharacteristicsDto2, ProductCharacteristicsDto productCharacteristicsDto3, ProductCharacteristicsDto productCharacteristicsDto4, ProductCharacteristicsDto productCharacteristicsDto5, EditoDto editoDto, List list, List list2, List list3, List list4, List list5, List list6, SellableStatusDto sellableStatusDto, ProductCustomizationDto productCustomizationDto, String str9, List list7, DigitalAssetProductDto digitalAssetProductDto, List list8, List list9, List list10, ProductCharacteristicsDto productCharacteristicsDto6, boolean z7, List list11, String str10, String str11, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : str3, str4, (i2 & 16) != 0 ? null : str5, (i2 & 32) != 0 ? null : str6, str7, productBackgroundDto, z, z2, z3, z4, z5, (i2 & 8192) != 0 ? null : str8, (i2 & 16384) != 0 ? null : assetImageDto, z6, (65536 & i2) != 0 ? null : bool, (131072 & i2) != 0 ? null : dimensionsDto, (262144 & i2) != 0 ? null : virtualTryOnDto, (524288 & i2) != 0 ? null : productDisclaimerDto, (1048576 & i2) != 0 ? null : productCharacteristicsDto, (2097152 & i2) != 0 ? null : productCharacteristicsDto2, (4194304 & i2) != 0 ? null : productCharacteristicsDto3, (8388608 & i2) != 0 ? null : productCharacteristicsDto4, (16777216 & i2) != 0 ? null : productCharacteristicsDto5, (33554432 & i2) != 0 ? null : editoDto, (67108864 & i2) != 0 ? null : list, list2, (268435456 & i2) != 0 ? null : list3, list4, list5, (i2 & Integer.MIN_VALUE) != 0 ? null : list6, sellableStatusDto, (i3 & 2) != 0 ? null : productCustomizationDto, (i3 & 4) != 0 ? null : str9, (i3 & 8) != 0 ? null : list7, (i3 & 16) != 0 ? null : digitalAssetProductDto, (i3 & 32) != 0 ? null : list8, (i3 & 64) != 0 ? null : list9, (i3 & 128) != 0 ? null : list10, (i3 & 256) != 0 ? null : productCharacteristicsDto6, z7, list11, (i3 & 2048) != 0 ? null : str10, (i3 & 4096) != 0 ? null : str11, null);
    }
}
