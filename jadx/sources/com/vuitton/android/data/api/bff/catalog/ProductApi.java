package com.vuitton.android.data.api.bff.catalog;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.pdp.ProductAGECDto;
import com.vuitton.android.data.dto.pdp.ProductDto;
import com.vuitton.android.data.dto.product.reinsurance.ReinsuranceResultDto;
import com.vuitton.android.data.dto.product.sizeguide.SizeGuideDto;
import com.vuitton.android.data.dto.product.stock.shared.ProductStockDto;
import com.vuitton.android.data.dto.product.vto.ShadeFinderRequestDto;
import com.vuitton.android.data.dto.product.vto.ShadeFinderResponseDto;
import com.vuitton.android.data.dto.product.vto.TryOnProductResponseDto;
import com.vuitton.android.data.dto.product.vto.TutorialDto;
import com.vuitton.android.data.dto.productshort.ProductShortDto;
import com.vuitton.android.data.dto.producttiny.ProductTinyDto;
import com.vuitton.android.data.dto.producttiny.ProductTinyListDto;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import lv.nfc.reader.utils.LVConstants;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.POST;
import retrofit2.http.Path;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J>\u0010\u0002\u001a\u00020\u00032\b\b\u0001\u0010\u0004\u001a\u00020\u00052\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\u0007H§@¢\u0006\u0004\b\n\u0010\u000bJ$\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\u000e\b\u0001\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\rH§@¢\u0006\u0002\u0010\u0010J\u001e\u0010\u0011\u001a\u00020\u00122\u000e\b\u0001\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00050\rH§@¢\u0006\u0002\u0010\u0010J:\u0010\u0013\u001a\u00020\u00122\b\b\u0001\u0010\u0004\u001a\u00020\u00052\b\b\u0001\u0010\u0014\u001a\u00020\u00072\b\b\u0001\u0010\u0015\u001a\u00020\u00072\n\b\u0001\u0010\u0016\u001a\u0004\u0018\u00010\u0007H§@¢\u0006\u0004\b\u0017\u0010\u000bJ\"\u0010\u0018\u001a\u00020\u00122\b\b\u0001\u0010\u0004\u001a\u00020\u00072\b\b\u0001\u0010\u0019\u001a\u00020\u0007H§@¢\u0006\u0002\u0010\u001aJ\u001a\u0010\u001b\u001a\u00020\u00122\b\b\u0001\u0010\u0004\u001a\u00020\u0005H§@¢\u0006\u0004\b\u001c\u0010\u001dJ,\u0010\u001e\u001a\u00020\u001f2\n\b\u0001\u0010 \u001a\u0004\u0018\u00010\u00072\u0010\b\u0001\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\rH§@¢\u0006\u0002\u0010!J\u0018\u0010\"\u001a\u00020#2\b\b\u0001\u0010$\u001a\u00020%H§@¢\u0006\u0002\u0010&J\u0018\u0010'\u001a\u00020(2\b\b\u0001\u0010\u0004\u001a\u00020\u0007H§@¢\u0006\u0002\u0010\u001dJ\"\u0010)\u001a\u00020(2\b\b\u0001\u0010\u0004\u001a\u00020\u00072\b\b\u0001\u0010*\u001a\u00020\u0007H§@¢\u0006\u0002\u0010\u001aJ$\u0010+\u001a\b\u0012\u0004\u0012\u00020,0\r2\u000e\b\u0001\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\rH§@¢\u0006\u0002\u0010\u0010J\u001a\u0010-\u001a\u00020.2\b\b\u0001\u0010/\u001a\u000200H§@¢\u0006\u0004\b1\u0010\u001dJ\u0018\u00102\u001a\u00020.2\b\b\u0001\u00103\u001a\u00020\u0007H§@¢\u0006\u0002\u0010\u001dJ\u001a\u00104\u001a\u0002052\b\b\u0001\u0010\u0004\u001a\u00020\u0005H§@¢\u0006\u0004\b6\u0010\u001dJ\u000e\u00107\u001a\u000208H§@¢\u0006\u0002\u00109J\u0018\u0010:\u001a\u0002052\b\b\u0001\u0010;\u001a\u00020\u0007H§@¢\u0006\u0002\u0010\u001dJ\u001a\u0010<\u001a\u00020=2\b\b\u0001\u0010\u0004\u001a\u00020\u0005H§@¢\u0006\u0004\b>\u0010\u001d¨\u0006?À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/catalog/ProductApi;", "", "getProductDetail", "Lcom/vuitton/android/data/dto/pdp/ProductDto;", "sku", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "rmsCode", "", "customizationId", "customizationIdType", "getProductDetail-YQ596nM", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getProducts", "", "Lcom/vuitton/android/data/dto/productshort/ProductShortDto;", "skus", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getRecommendedProducts", "Lcom/vuitton/android/data/dto/producttiny/ProductTinyListDto;", "getYmalProducts", "accessTokenSLAS", "accessTokenSFID", "appInstanceId", "getYmalProducts-YQ596nM", "getRelatedProducts", "algorithm", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getHighlightedProducts", "getHighlightedProducts-hd8RJmg", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getTryOnProductList", "Lcom/vuitton/android/data/dto/product/vto/TryOnProductResponseDto;", "type", "(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getShadeFinderRecommendations", "Lcom/vuitton/android/data/dto/product/vto/ShadeFinderResponseDto;", "param", "Lcom/vuitton/android/data/dto/product/vto/ShadeFinderRequestDto;", "(Lcom/vuitton/android/data/dto/product/vto/ShadeFinderRequestDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getTutorial", "Lcom/vuitton/android/data/dto/product/vto/TutorialDto;", "getLookTutorial", "lookId", "getProductsTiny", "Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto;", "getSizeGuide", "Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideDto;", "productId", "Lcom/vuitton/foundation/model/domain/model/product/ProductId;", "getSizeGuide-ClitKSM", "getSizeGuideById", "sizeGuideId", "getProductStock", "Lcom/vuitton/android/data/dto/product/stock/shared/ProductStockDto;", "getProductStock-hd8RJmg", "getReinsurance", "Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceResultDto;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getProductAvailabilities", "joinedSkus", "getAGEC", "Lcom/vuitton/android/data/dto/pdp/ProductAGECDto;", "getAGEC-hd8RJmg", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ProductApi {
    @GET("product/{sku}/agec")
    /* JADX INFO: renamed from: getAGEC-hd8RJmg, reason: not valid java name */
    Object m78getAGEChd8RJmg(@Path("sku") String str, Continuation<? super ProductAGECDto> continuation);

    @GET("product/{sku}/highlighted-products")
    /* JADX INFO: renamed from: getHighlightedProducts-hd8RJmg, reason: not valid java name */
    Object m79getHighlightedProductshd8RJmg(@Path("sku") String str, Continuation<? super ProductTinyListDto> continuation);

    @GET("product/{sku}/tutorial/{look_id}")
    Object getLookTutorial(@Path("sku") String str, @Path("look_id") String str2, Continuation<? super TutorialDto> continuation);

    @GET("product/{joinedSkus}/availabilities")
    Object getProductAvailabilities(@Path("joinedSkus") String str, Continuation<? super ProductStockDto> continuation);

    @GET("v3/product/{sku}")
    /* JADX INFO: renamed from: getProductDetail-YQ596nM, reason: not valid java name */
    Object m80getProductDetailYQ596nM(@Path("sku") String str, @Query("rmsCode") String str2, @Query("customizationIdentifier") String str3, @Query("customizationType") String str4, Continuation<? super ProductDto> continuation);

    @GET("product/{sku}/availability")
    /* JADX INFO: renamed from: getProductStock-hd8RJmg, reason: not valid java name */
    Object m81getProductStockhd8RJmg(@Path("sku") String str, Continuation<? super ProductStockDto> continuation);

    @GET("v2/products")
    Object getProducts(@Query("skus") List<String> list, Continuation<? super List<ProductShortDto>> continuation);

    @GET("products-tiny")
    Object getProductsTiny(@Query("skus") List<String> list, Continuation<? super List<ProductTinyDto>> continuation);

    @GET("v2/related-products")
    Object getRecommendedProducts(@Query("skus") List<SkuId> list, Continuation<? super ProductTinyListDto> continuation);

    @GET("product/editorial/info-static")
    Object getReinsurance(Continuation<? super ReinsuranceResultDto> continuation);

    @GET("v2/product/{sku}/related-products")
    Object getRelatedProducts(@Path("sku") String str, @Query("algorithm") String str2, Continuation<? super ProductTinyListDto> continuation);

    @POST("shades/recommendations")
    Object getShadeFinderRecommendations(@Body ShadeFinderRequestDto shadeFinderRequestDto, Continuation<? super ShadeFinderResponseDto> continuation);

    @GET("product/{product_id}/sizeguide")
    /* JADX INFO: renamed from: getSizeGuide-ClitKSM, reason: not valid java name */
    Object m82getSizeGuideClitKSM(@Path("product_id") String str, Continuation<? super SizeGuideDto> continuation);

    @GET("sizeguide/{size_guide_id}")
    Object getSizeGuideById(@Path("size_guide_id") String str, Continuation<? super SizeGuideDto> continuation);

    @GET("shades")
    Object getTryOnProductList(@Query("type") String str, @Query("skus") List<String> list, Continuation<? super TryOnProductResponseDto> continuation);

    @GET("product/{sku}/tutorial")
    Object getTutorial(@Path("sku") String str, Continuation<? super TutorialDto> continuation);

    @GET("v2/product/{sku}/related-products")
    /* JADX INFO: renamed from: getYmalProducts-YQ596nM, reason: not valid java name */
    Object m83getYmalProductsYQ596nM(@Path("sku") String str, @Header(LVConstants.SLAS_ACCESS_TOKEN) String str2, @Header(LVConstants.SFID_ACCESS_TOKEN) String str3, @Header("firebase_install_id") String str4, Continuation<? super ProductTinyListDto> continuation);
}
