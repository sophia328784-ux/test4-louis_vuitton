package defpackage;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ShadeFinderProductSet;
import com.perfectcorp.perfectlib.ShadeFinderRecommendationResult;
import com.perfectcorp.perfectlib.SkinCareProduct;
import com.perfectcorp.perfectlib.SkinCareRecommendationResult;
import com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ymk.clflurry.MCSDKCreateFunctionalityEvent;
import com.perfectcorp.perfectlib.ymk.clflurry.MCSDKGetRecommendationEvent;
import com.perfectcorp.perfectlib.ymk.clflurry.MCSDKRecommendProductEvent;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class pv0 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f78931a;

    public /* synthetic */ pv0(int i2) {
        this.f78931a = i2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        switch (this.f78931a) {
            case 0:
                new MCSDKCreateFunctionalityEvent(MCSDKCreateFunctionalityEvent.Functionality.SHADE_FINDER).b();
                break;
            case 1:
                new MCSDKGetRecommendationEvent(MCSDKGetRecommendationEvent.Type.SHADE_FINDER).b();
                List<ShadeFinderProductSet> productSets = ((ShadeFinderRecommendationResult) obj).getProductSets();
                HashSet hashSet = new HashSet();
                for (ShadeFinderProductSet shadeFinderProductSet : productSets) {
                    if (shadeFinderProductSet.getBestMatch() != null) {
                        hashSet.add(shadeFinderProductSet.getBestMatch().getProductGuid());
                    }
                    if (shadeFinderProductSet.getWarmer() != null) {
                        hashSet.add(shadeFinderProductSet.getWarmer().getProductGuid());
                    }
                    if (shadeFinderProductSet.getCooler() != null) {
                        hashSet.add(shadeFinderProductSet.getCooler().getProductGuid());
                    }
                    if (shadeFinderProductSet.getLighter() != null) {
                        hashSet.add(shadeFinderProductSet.getLighter().getProductGuid());
                    }
                    if (shadeFinderProductSet.getDarker() != null) {
                        hashSet.add(shadeFinderProductSet.getDarker().getProductGuid());
                    }
                }
                if (!hashSet.isEmpty()) {
                    new MCSDKRecommendProductEvent(new ArrayList(hashSet), MCSDKRecommendProductEvent.Type.SHADE_FINDER).b();
                }
                break;
            case 2:
                Log.e("ShadeFinderRecommendationHandler", "[syncServerInternal] failed", (Throwable) obj);
                break;
            case 3:
                Log.e("ShadeFinderRecommendationHandler", "[clearAll] failed", (Throwable) obj);
                break;
            case 4:
                new MCSDKGetRecommendationEvent(MCSDKGetRecommendationEvent.Type.SKINCARE).b();
                List<SkinCareProduct> products = ((SkinCareRecommendationResult) obj).getProducts();
                ArrayList arrayList = new ArrayList();
                for (SkinCareProduct skinCareProduct : products) {
                    if (skinCareProduct.getProductId() != null) {
                        arrayList.add(skinCareProduct.getProductId());
                    }
                }
                if (!arrayList.isEmpty()) {
                    new MCSDKRecommendProductEvent(arrayList, MCSDKRecommendProductEvent.Type.SKINCARE).b();
                }
                break;
            case 5:
                Log.e("SkinCare3RecommendationHandler", "[downloadSurveyContent] failed", (Throwable) obj);
                break;
            case 6:
                Log.g(3, "SkinCare3RecommendationHandler", "[downloadRecommendRule] end");
                break;
            case 7:
                Log.e("SkinCare3RecommendationHandler", "[downloadRecommendRule] failed", (Throwable) obj);
                break;
            case 8:
                Log.e("SkinCare3RecommendationHandler", "[downloadProducts] failed", (Throwable) obj);
                break;
            case 9:
                Log.g(3, "SkinCare3RecommendationHandler", "[downloadThumbnailsForOlderRecords] Download images success");
                break;
            case 10:
                Log.e("SkinCare3RecommendationHandler", "[clearAll] failed", (Throwable) obj);
                break;
            case 11:
                Sku sku = (Sku) obj;
                a.A(new StringBuilder("[downloadSku] success "), sku.f41266f, 3, "SkuCacheStrategyHelper");
                a.e(sku.f41266f, a.b.f41169b);
                break;
            case 12:
                Log.g(3, "SkuHandler", "[checkNeedToUpdate] SKU set needToUpdate=" + ((Boolean) obj));
                break;
            case 13:
                Log.g(3, "SkuHandler", "[checkNeedToUpdate] product mask needToUpdate=" + ((Boolean) obj));
                break;
            case 14:
                Log.g(3, "SkuHandler", "[checkSkuTreeNeedToUpdate] SKUs needToUpdate=" + ((Boolean) obj));
                break;
            case 15:
                Log.g(3, "SkuHandler", "[syncServerByProtocol] Download images success");
                break;
            case 16:
                Log.e("SkuHandler", "[downloadProducts] failed", (Throwable) obj);
                break;
            case 17:
                Log.c("SkuHandler", "clearAll failed.", (Throwable) obj);
                break;
            case 18:
                Log.g(3, "SkuHandler", "[downloadSkuSets] succeed.");
                break;
            case 19:
                Log.e("SkuHandler", "[downloadSkuSets] failed.", (Throwable) obj);
                break;
            case 20:
                Log.g(3, "SkuHandler", "[deleteSkuSets] completed.");
                break;
            case 21:
                Log.e("SkuHandler", "[deleteSkuSets] failed.", (Throwable) obj);
                break;
            case 22:
                Log.g(3, "SkuHandler", "[deleteProducts] completed.");
                break;
            default:
                Log.e("SkuHandler", "[deleteProducts] failed.", (Throwable) obj);
                break;
        }
    }
}
