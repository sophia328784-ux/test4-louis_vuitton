package com.vuitton.android.presentation.screen.plp.models.productshortlist;

import android.content.res.Resources;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.R;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.analytics.ViewItemListTrackingValue;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0087\b\u0018\u00002\u00020\u0001:\u0002\u0013\u0014Bo\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;", "", "Landroidx/compose/runtime/MutableState;", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;", DbParams.KEY_DATA, "", "isLoading", "", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductVariationUiModel;", "colorList", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;", "price", "", "commercialTags", "isVATIncluded", "launchAnimation", "shareUrl", "<init>", "(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/List;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;Ljava/util/List;ZLandroidx/compose/runtime/MutableState;Ljava/lang/String;)V", "SkuDataUiModel", "PriceInfoUiModel", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PlpProductUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableState f62934a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableState f62935b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f62936c;
    public final ProductShortPriceUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f62937e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f62938f;
    public final MutableState g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f62939h;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$PriceInfoUiModel;", "", "", "price", "", "isVariable", "isVATIncluded", "<init>", "(Ljava/lang/String;ZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PriceInfoUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62940a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f62941b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f62942c;

        public PriceInfoUiModel(String str, boolean z, boolean z2) {
            str.getClass();
            this.f62940a = str;
            this.f62941b = z;
            this.f62942c = z2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PriceInfoUiModel)) {
                return false;
            }
            PriceInfoUiModel priceInfoUiModel = (PriceInfoUiModel) obj;
            return Intrinsics.c(this.f62940a, priceInfoUiModel.f62940a) && this.f62941b == priceInfoUiModel.f62941b && this.f62942c == priceInfoUiModel.f62942c;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f62942c) + o60.b(this.f62940a.hashCode() * 31, 31, this.f62941b);
        }

        public final String toString() {
            return a.p(d21.s("PriceInfoUiModel(price=", this.f62940a, ", isVariable=", ", isVATIncluded=", this.f62941b), this.f62942c, ")");
        }
    }

    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\u0018Bq\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0014\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;", "productId", "", "category", "name", "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "mainAsset", "", "assetList", "", "background", "Landroidx/compose/runtime/MutableState;", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;", "wishlistState", "", "isArAvailable", "isTryOnAvailable", "isPersonalizationAvailable", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/util/List;ILandroidx/compose/runtime/MutableState;ZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "PLPWishlistStateUiModel", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SkuDataUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62943a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f62944b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f62945c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AssetUiModel f62946e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final List f62947f;
        public final int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final MutableState f62948h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final boolean f62949i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final boolean f62950j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final boolean f62951k;

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;", "", "", "isInWishlist", "isLoading", "<init>", "(ZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class PLPWishlistStateUiModel {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final boolean f62952a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final boolean f62953b;

            public PLPWishlistStateUiModel(boolean z, boolean z2) {
                this.f62952a = z;
                this.f62953b = z2;
            }

            public static PLPWishlistStateUiModel a(PLPWishlistStateUiModel pLPWishlistStateUiModel, boolean z, int i2) {
                if ((i2 & 1) != 0) {
                    z = pLPWishlistStateUiModel.f62952a;
                }
                boolean z2 = (i2 & 2) != 0 ? pLPWishlistStateUiModel.f62953b : true;
                pLPWishlistStateUiModel.getClass();
                return new PLPWishlistStateUiModel(z, z2);
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof PLPWishlistStateUiModel)) {
                    return false;
                }
                PLPWishlistStateUiModel pLPWishlistStateUiModel = (PLPWishlistStateUiModel) obj;
                return this.f62952a == pLPWishlistStateUiModel.f62952a && this.f62953b == pLPWishlistStateUiModel.f62953b;
            }

            public final int hashCode() {
                return Boolean.hashCode(this.f62953b) + (Boolean.hashCode(this.f62952a) * 31);
            }

            public final String toString() {
                return "PLPWishlistStateUiModel(isInWishlist=" + this.f62952a + ", isLoading=" + this.f62953b + ")";
            }
        }

        public SkuDataUiModel(String str, String str2, String str3, String str4, AssetUiModel assetUiModel, List list, int i2, MutableState mutableState, boolean z, boolean z2, boolean z3, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            str4.getClass();
            assetUiModel.getClass();
            list.getClass();
            this.f62943a = str;
            this.f62944b = str2;
            this.f62945c = str3;
            this.d = str4;
            this.f62946e = assetUiModel;
            this.f62947f = list;
            this.g = i2;
            this.f62948h = mutableState;
            this.f62949i = z;
            this.f62950j = z2;
            this.f62951k = z3;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x0026  */
        public final boolean equals(Object obj) {
            boolean zEquals;
            if (this != obj) {
                if (obj instanceof SkuDataUiModel) {
                    SkuDataUiModel skuDataUiModel = (SkuDataUiModel) obj;
                    String str = skuDataUiModel.f62943a;
                    SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                    if (this.f62943a.equals(str)) {
                        String str2 = skuDataUiModel.f62944b;
                        String str3 = this.f62944b;
                        if (str3 == null) {
                            if (str2 == null) {
                                zEquals = true;
                            } else {
                                zEquals = false;
                            }
                        } else if (str2 == null) {
                            zEquals = false;
                        } else {
                            ProductIdUiModel.Companion companion2 = ProductIdUiModel.f61731c;
                            zEquals = str3.equals(str2);
                        }
                        if (zEquals && Intrinsics.c(this.f62945c, skuDataUiModel.f62945c) && this.d.equals(skuDataUiModel.d) && this.f62946e.equals(skuDataUiModel.f62946e) && this.f62947f.equals(skuDataUiModel.f62947f) && this.g == skuDataUiModel.g && Intrinsics.c(this.f62948h, skuDataUiModel.f62948h) && this.f62949i == skuDataUiModel.f62949i && this.f62950j == skuDataUiModel.f62950j && this.f62951k == skuDataUiModel.f62951k) {
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            int iHashCode;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            int iHashCode2 = this.f62943a.hashCode() * 31;
            String str = this.f62944b;
            if (str == null) {
                iHashCode = 0;
            } else {
                ProductIdUiModel.Companion companion2 = ProductIdUiModel.f61731c;
                iHashCode = str.hashCode();
            }
            int i2 = (iHashCode2 + iHashCode) * 31;
            String str2 = this.f62945c;
            int iB = tr.b(this.g, n00.a((this.f62946e.hashCode() + fc.b((i2 + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.d)) * 31, 31, this.f62947f), 31);
            MutableState mutableState = this.f62948h;
            return Boolean.hashCode(this.f62951k) + o60.b(o60.b((iB + (mutableState != null ? mutableState.hashCode() : 0)) * 31, 31, this.f62949i), 31, this.f62950j);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            String str = this.f62944b;
            if (str == null) {
                str = "null";
            } else {
                ProductIdUiModel.Companion companion2 = ProductIdUiModel.f61731c;
            }
            StringBuilder sbS = fc.s("SkuDataUiModel(sku=", this.f62943a, ", productId=", str, ", category=");
            cj.C(sbS, this.f62945c, ", name=", this.d, ", mainAsset=");
            sbS.append(this.f62946e);
            sbS.append(", assetList=");
            sbS.append(this.f62947f);
            sbS.append(", background=");
            sbS.append(this.g);
            sbS.append(", wishlistState=");
            sbS.append(this.f62948h);
            sbS.append(", isArAvailable=");
            fc.y(sbS, this.f62949i, ", isTryOnAvailable=", this.f62950j, ", isPersonalizationAvailable=");
            return a.p(sbS, this.f62951k, ")");
        }
    }

    public /* synthetic */ PlpProductUiModel(MutableState mutableState, MutableState mutableState2, List list, ProductShortPriceUiModel productShortPriceUiModel, List list2, boolean z, MutableState mutableState3, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(mutableState, (i2 & 2) != 0 ? SnapshotStateKt.g(Boolean.FALSE) : mutableState2, list, productShortPriceUiModel, list2, z, (i2 & 64) != 0 ? SnapshotStateKt.g(Boolean.FALSE) : mutableState3, (i2 & 128) != 0 ? null : str);
    }

    public final String a(Resources resources) {
        resources.getClass();
        StringBuilder sb = new StringBuilder();
        MutableState mutableState = this.f62934a;
        sb.append(((SkuDataUiModel) mutableState.getF10755b()).d.concat(","));
        Iterator it = this.f62937e.iterator();
        while (it.hasNext()) {
            sb.append(((String) it.next()) + ",");
        }
        PriceInfoUiModel priceInfoUiModelB = b();
        if (priceInfoUiModelB != null) {
            String str = priceInfoUiModelB.f62940a;
            if (priceInfoUiModelB.f62941b) {
                sb.append(resources.getString(R.string.plp_price_from));
            }
            if (StringKtExtKt.g(str)) {
                sb.append(str + ",");
            }
            if (priceInfoUiModelB.f62942c) {
                sb.append(resources.getString(R.string.global_vat_included));
            }
        }
        List list = this.f62936c;
        if (list.size() > 1) {
            sb.append(resources.getQuantityString(R.plurals.alt_colors_available, list.size(), Integer.valueOf(list.size())));
        }
        if (((SkuDataUiModel) mutableState.getF10755b()).f62950j) {
            sb.append(resources.getString(R.string.alt_vto));
        } else if (((SkuDataUiModel) mutableState.getF10755b()).f62951k) {
            sb.append(resources.getString(R.string.alt_customizable));
        } else if (((SkuDataUiModel) mutableState.getF10755b()).f62949i) {
            sb.append(resources.getString(R.string.alt_three_dim));
        }
        return sb.toString();
    }

    public final PriceInfoUiModel b() {
        ProductShortPriceUiModel productShortPriceUiModel = this.d;
        if ((productShortPriceUiModel != null ? productShortPriceUiModel.f62982b : null) != null) {
            return new PriceInfoUiModel(productShortPriceUiModel.f62982b, productShortPriceUiModel.f62981a, this.f62938f);
        }
        return null;
    }

    public final ViewItemListTrackingValue c(int i2, String str, String str2) {
        str.getClass();
        str2.getClass();
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        MutableState mutableState = this.f62934a;
        String str3 = ((SkuDataUiModel) mutableState.getF10755b()).f62943a;
        companion.getClass();
        SkuId.Companion companion2 = SkuId.INSTANCE;
        String str4 = ((SkuDataUiModel) mutableState.getF10755b()).d;
        ProductShortPriceUiModel productShortPriceUiModel = this.d;
        return new ViewItemListTrackingValue(str, str2, str3, str4, productShortPriceUiModel != null ? productShortPriceUiModel.f62983c : null, productShortPriceUiModel != null ? productShortPriceUiModel.d : null, i2, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlpProductUiModel)) {
            return false;
        }
        PlpProductUiModel plpProductUiModel = (PlpProductUiModel) obj;
        return Intrinsics.c(this.f62934a, plpProductUiModel.f62934a) && Intrinsics.c(this.f62935b, plpProductUiModel.f62935b) && Intrinsics.c(this.f62936c, plpProductUiModel.f62936c) && Intrinsics.c(this.d, plpProductUiModel.d) && Intrinsics.c(this.f62937e, plpProductUiModel.f62937e) && this.f62938f == plpProductUiModel.f62938f && Intrinsics.c(this.g, plpProductUiModel.g) && Intrinsics.c(this.f62939h, plpProductUiModel.f62939h);
    }

    public final int hashCode() {
        int iA = n00.a((this.f62935b.hashCode() + (this.f62934a.hashCode() * 31)) * 31, 31, this.f62936c);
        ProductShortPriceUiModel productShortPriceUiModel = this.d;
        int iHashCode = (this.g.hashCode() + o60.b(n00.a((iA + (productShortPriceUiModel == null ? 0 : productShortPriceUiModel.hashCode())) * 31, 31, this.f62937e), 31, this.f62938f)) * 31;
        String str = this.f62939h;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return "PlpProductUiModel(data=" + this.f62934a + ", isLoading=" + this.f62935b + ", colorList=" + this.f62936c + ", price=" + this.d + ", commercialTags=" + this.f62937e + ", isVATIncluded=" + this.f62938f + ", launchAnimation=" + this.g + ", shareUrl=" + this.f62939h + ")";
    }

    public PlpProductUiModel(MutableState<SkuDataUiModel> mutableState, MutableState<Boolean> mutableState2, List<ProductVariationUiModel> list, ProductShortPriceUiModel productShortPriceUiModel, List<String> list2, boolean z, MutableState<Boolean> mutableState3, String str) {
        mutableState.getClass();
        mutableState2.getClass();
        list.getClass();
        list2.getClass();
        mutableState3.getClass();
        this.f62934a = mutableState;
        this.f62935b = mutableState2;
        this.f62936c = list;
        this.d = productShortPriceUiModel;
        this.f62937e = list2;
        this.f62938f = z;
        this.g = mutableState3;
        this.f62939h = str;
    }
}
