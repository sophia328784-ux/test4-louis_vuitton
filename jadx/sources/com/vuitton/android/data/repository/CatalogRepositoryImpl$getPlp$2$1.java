package com.vuitton.android.data.repository;

import com.vuitton.android.data.api.bff.catalog.CatalogApi;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.editorial.mapper.EditorialModuleMapperKt;
import com.vuitton.android.data.dto.common.mapper.AssetMapperKt;
import com.vuitton.android.data.dto.plp.ProductListDto;
import com.vuitton.android.data.dto.plp.ProductListSectionDataDto;
import com.vuitton.android.data.dto.plp.ProductListSectionDto;
import com.vuitton.android.data.dto.plp.mapper.ProductListMapperKt$WhenMappings;
import com.vuitton.android.data.dto.productshort.ProductShortDto;
import com.vuitton.android.data.dto.productshort.mapper.ProductListOptionMapperKt;
import com.vuitton.android.data.dto.productshort.mapper.ProductShortMapperKt;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.plp.PlpPagination;
import com.vuitton.foundation.model.domain.model.plp.PlpSection;
import com.vuitton.foundation.model.domain.model.plp.ProductList;
import com.vuitton.foundation.model.domain.model.plp.mapper.PlpMapperKt;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShort;
import com.vuitton.foundation.model.domain.model.wishlist.WishlistItem;
import com.vuitton.foundation.model.domain.model.wishlist.WishlistItemId;
import defpackage.b21;
import defpackage.fc;
import defpackage.md;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.CatalogRepositoryImpl$getPlp$2$1", f = "CatalogRepositoryImpl.kt", l = {149}, m = "invokeSuspend", v = 2)
final class CatalogRepositoryImpl$getPlp$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super PlpPagination>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f47537b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CatalogRepositoryImpl f47538c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f47539e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f47540f;
    public final /* synthetic */ String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ boolean f47541h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogRepositoryImpl$getPlp$2$1(CatalogRepositoryImpl catalogRepositoryImpl, String str, int i2, String str2, String str3, boolean z, Continuation continuation) {
        super(2, continuation);
        this.f47538c = catalogRepositoryImpl;
        this.d = str;
        this.f47539e = i2;
        this.f47540f = str2;
        this.g = str3;
        this.f47541h = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CatalogRepositoryImpl$getPlp$2$1(this.f47538c, this.d, this.f47539e, this.f47540f, this.g, this.f47541h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CatalogRepositoryImpl$getPlp$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object productListForCategory;
        Object curatedText;
        int i2;
        PlpSection.CuratedText.Label.Font font;
        PlpSection.HalfEdito.Alignment alignment;
        Asset asset;
        Asset assetA;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = this.f47537b;
        AssetImage assetImage = null;
        final CatalogRepositoryImpl catalogRepositoryImpl = this.f47538c;
        int i4 = 1;
        if (i3 == 0) {
            ResultKt.b(obj);
            CatalogApi catalogApi = catalogRepositoryImpl.f47503f;
            this.f47537b = 1;
            productListForCategory = catalogApi.getProductListForCategory(this.d, this.f47539e, this.f47540f, this.g, this);
            if (productListForCategory == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            productListForCategory = obj;
        }
        ProductListDto productListDto = (ProductListDto) productListForCategory;
        Function1<SkuId, WishlistItemId> function1 = new Function1<SkuId, WishlistItemId>() { // from class: com.vuitton.android.data.repository.CatalogRepositoryImpl$getPlp$2$1.1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) throws Throwable {
                String str = ((SkuId) obj2).f67933a;
                str.getClass();
                Object objB = catalogRepositoryImpl.f47506j.b(str);
                if (objB instanceof Result.Failure) {
                    objB = null;
                }
                WishlistItem wishlistItem = (WishlistItem) objB;
                String str2 = wishlistItem != null ? wishlistItem.f68284a : null;
                if (str2 != null) {
                    return new WishlistItemId(str2);
                }
                return null;
            }
        };
        productListDto.getClass();
        String str = productListDto.f46352b;
        String str2 = productListDto.f46351a;
        String str3 = productListDto.f46353c;
        List<ProductListSectionDto> list = productListDto.d;
        int i5 = 10;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (ProductListSectionDto productListSectionDto : list) {
            ProductListSectionDataDto productListSectionDataDto = productListSectionDto.f46385c;
            String str4 = productListSectionDto.f46383a;
            if (productListSectionDataDto instanceof ProductListSectionDataDto.ProductsDto) {
                List list2 = ((ProductListSectionDataDto.ProductsDto) productListSectionDataDto).f46380b;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, i5));
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    arrayList2.add(PlpMapperKt.b(ProductShortMapperKt.a((ProductShortDto) it.next(), function1), this.f47541h));
                }
                curatedText = new PlpSection.Products(str4, arrayList2);
            } else {
                if (productListSectionDataDto instanceof ProductListSectionDataDto.ProductHighlightDto) {
                    ProductListSectionDataDto.ProductHighlightDto productHighlightDto = (ProductListSectionDataDto.ProductHighlightDto) productListSectionDataDto;
                    ProductShort productShortA = ProductShortMapperKt.a(productHighlightDto.f46374b, function1);
                    AssetDto assetDto = productHighlightDto.f46375c;
                    if (assetDto != null) {
                        assetA = AssetMapperKt.a(assetDto);
                    } else {
                        asset = assetImage;
                    }
                    if (asset == 0) {
                        asset = assetA;
                        b21.n(fc.h("ProductHighlight section '", str4, "' requires a non-null asset"));
                        return assetImage;
                    }
                    asset = assetA;
                    curatedText = new PlpSection.ProductHighlight(str4, productShortA, asset);
                    i2 = i4;
                } else if (productListSectionDataDto instanceof ProductListSectionDataDto.ProductSliderDto) {
                    curatedText = new PlpSection.ProductSlider(str4, ProductShortMapperKt.a(((ProductListSectionDataDto.ProductSliderDto) productListSectionDataDto).f46377b, function1));
                } else if (productListSectionDataDto instanceof ProductListSectionDataDto.ProductFullscreenDto) {
                    ProductListSectionDataDto.ProductFullscreenDto productFullscreenDto = (ProductListSectionDataDto.ProductFullscreenDto) productListSectionDataDto;
                    curatedText = new PlpSection.ProductFullscreen(str4, ProductShortMapperKt.a(productFullscreenDto.f46371b, function1), EditorialModuleMapperKt.l(productFullscreenDto.f46372c));
                } else if (productListSectionDataDto instanceof ProductListSectionDataDto.HalfEditoDto) {
                    ProductListSectionDataDto.HalfEditoDto halfEditoDto = (ProductListSectionDataDto.HalfEditoDto) productListSectionDataDto;
                    String str5 = halfEditoDto.f46366b;
                    String str6 = halfEditoDto.f46367c;
                    assetImage = assetImage;
                    String str7 = halfEditoDto.d;
                    int i6 = ProductListMapperKt$WhenMappings.f46388a[halfEditoDto.f46368e.ordinal()];
                    if (i6 == i4) {
                        alignment = PlpSection.HalfEdito.Alignment.LEFT;
                    } else {
                        if (i6 != 2) {
                            v40.g();
                            return assetImage;
                        }
                        alignment = PlpSection.HalfEdito.Alignment.CENTER;
                    }
                    curatedText = new PlpSection.HalfEdito(str4, str5, str6, str7, alignment, AssetMapperKt.a(halfEditoDto.f46369f), ProductShortMapperKt.a(halfEditoDto.g, function1));
                    i2 = 1;
                } else {
                    assetImage = assetImage;
                    if (!(productListSectionDataDto instanceof ProductListSectionDataDto.CuratedTextDto)) {
                        if (!(productListSectionDataDto instanceof ProductListSectionDataDto.UnknownSectionDataDto)) {
                            v40.g();
                            return assetImage;
                        }
                        throw new IllegalStateException(("Unsupported PLP section type '" + productListSectionDto.f46384b + "' for section '" + str4 + "'").toString());
                    }
                    ProductListSectionDataDto.CuratedTextDto curatedTextDto = (ProductListSectionDataDto.CuratedTextDto) productListSectionDataDto;
                    ProductListSectionDataDto.CuratedTextDto.LabelDto labelDto = curatedTextDto.f46358b;
                    String str8 = labelDto.f46362a;
                    int i7 = ProductListMapperKt$WhenMappings.f46389b[labelDto.f46363b.ordinal()];
                    i2 = 1;
                    if (i7 == 1) {
                        font = PlpSection.CuratedText.Label.Font.SMALL;
                    } else if (i7 == 2) {
                        font = PlpSection.CuratedText.Label.Font.MEDIUM;
                    } else {
                        if (i7 != 3) {
                            v40.g();
                            return assetImage;
                        }
                        font = PlpSection.CuratedText.Label.Font.LARGE;
                    }
                    PlpSection.CuratedText.Label label = new PlpSection.CuratedText.Label(str8, font);
                    String str9 = curatedTextDto.f46359c;
                    AssetImageDto assetImageDto = curatedTextDto.d;
                    curatedText = new PlpSection.CuratedText(str4, label, str9, assetImageDto != null ? AssetMapperKt.b(assetImageDto) : assetImage);
                }
                arrayList.add(curatedText);
                i4 = i2;
                assetImage = assetImage;
                i5 = 10;
            }
            i2 = i4;
            arrayList.add(curatedText);
            i4 = i2;
            assetImage = assetImage;
            i5 = 10;
        }
        return PlpMapperKt.a(new ProductList(str, str2, str3, arrayList, productListDto.f46354e, ProductListOptionMapperKt.a(productListDto.f46355f), productListDto.g), this.f47539e);
    }
}
