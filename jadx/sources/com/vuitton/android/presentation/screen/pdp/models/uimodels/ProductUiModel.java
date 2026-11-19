package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import android.os.Parcel;
import android.os.Parcelable;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ModelSizeVariationUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.VirtualTryOnUiModel;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import com.vuitton.foundation.model.domain.model.product.universal.ProductType;
import com.vuitton.foundation.model.domain.model.product.universal.VariationType;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.l1;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000¤\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001:\u0001QB\u008b\u0005\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u000e\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0013\u0012\u001a\b\u0002\u0010\u0018\u001a\u0014\u0012\u0004\u0012\u00020\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u000e0\u0015\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u0012\u000e\b\u0002\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00190\u000e\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u001c\u0012\u0010\b\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000e\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u001f\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010!\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010,\u001a\u00020\u0004\u0012\n\b\u0002\u0010.\u001a\u0004\u0018\u00010-\u0012\n\b\u0002\u0010/\u001a\u0004\u0018\u00010-\u0012\n\b\u0002\u00100\u001a\u0004\u0018\u00010-\u0012\b\b\u0002\u00102\u001a\u000201\u0012\n\b\u0002\u00103\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u00104\u001a\u000201\u0012\b\b\u0002\u00105\u001a\u000201\u0012\b\b\u0002\u00106\u001a\u000201\u0012\b\b\u0002\u00107\u001a\u000201\u0012\b\b\u0002\u00108\u001a\u000201\u0012\u0006\u00109\u001a\u000201\u0012\b\b\u0002\u0010:\u001a\u000201\u0012\b\b\u0002\u0010;\u001a\u000201\u0012\b\b\u0002\u0010<\u001a\u000201\u0012\n\b\u0002\u0010>\u001a\u0004\u0018\u00010=\u0012\n\b\u0002\u0010@\u001a\u0004\u0018\u00010?\u0012\b\b\u0002\u0010B\u001a\u00020A\u0012\n\b\u0002\u0010D\u001a\u0004\u0018\u00010C\u0012\n\b\u0002\u0010E\u001a\u0004\u0018\u00010\u0004\u0012\u0010\b\u0002\u0010G\u001a\n\u0012\u0004\u0012\u00020F\u0018\u00010\u000e\u0012\f\u0010I\u001a\b\u0012\u0004\u0012\u00020H0\u000e\u0012\f\u0010K\u001a\b\u0012\u0004\u0012\u00020J0\u000e\u0012\n\b\u0002\u0010L\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010M\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010N\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\bO\u0010P¨\u0006R"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;", "Landroid/os/Parcelable;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "name", "skuKey", "packagingVariation", "commercialTag", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;", "identifier", "Lcom/vuitton/foundation/model/domain/model/product/universal/ProductType;", "type", "description", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoUiModel;", "panelInfos", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EnvironmentInfoUiModel;", "environmentInfo", "Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;", "background", "", "Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;", "variations", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductMediaUiModel;", "mainAsset", "medias", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel;", "detailedFeature", "bundleSkuIds", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;", "virtualTryOn", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditoUiModel;", "edito", "color", "colorIconUrl", "colorFamily", "finish", "material", "materialIconUrl", "size", "carat", "language", "webUrl", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;", "width", "depth", "height", "", "isSizeGuideEnabled", "sizeGuideId", "isBackInStock", "isWishlistable", "isARAvailable", "isLocateInStore", "isDiamondProductAndPDPFeatureEnabled", "isShadeFinderEnabled", "isBundle", "isTrunkSpeaker", "isHorizonSpeaker", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;", "skuAvailability", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;", "disclaimer", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;", "sellableStatus", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;", "customization", "launchDate", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;", "highlights", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditorialContentUiModel;", "editorialContents", "Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;", "modelSizeVariationList", "contextualSizingImageUrl", "shareUrl", "fitInformationMention", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductType;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/util/Map;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductMediaUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditoUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;ZLjava/lang/String;ZZZZZZZZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductUiModel implements Parcelable {
    public final String A;
    public final String B;
    public final String C;
    public final SizeUiModel D;
    public final SizeUiModel E;
    public final SizeUiModel F;
    public final boolean G;
    public final String H;
    public final boolean I;
    public final boolean J;
    public final boolean K;
    public final boolean L;
    public final boolean M;
    public final boolean N;
    public final boolean O;
    public final boolean P;
    public final boolean Q;
    public final SkuAvailabilityUiModel R;
    public final ProductDisclaimerUiModel S;
    public final SellableStatusUiModel T;
    public final ProductCustomizationUiModel V;
    public final String W;
    public final List X;
    public final List Y;
    public final List Z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f61735b;
    public final String b1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f61736c;
    public final ProductImageUiModel c1;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f61737e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f61738f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ProductType f61739h;
    public final String h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f61740i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f61741j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final List f61742k;
    public final ProductBackground l;
    public final Map m;
    public final ProductMediaUiModel n;
    public final List o;
    public final DetailedFeatureUiModel p;
    public final List q;
    public final VirtualTryOnUiModel r;
    public final EditoUiModel s;
    public final String t;
    public final String t0;
    public final String u;
    public final String v;
    public final String w;
    public final String x;
    public final String y;
    public final String z;
    public static final Companion d1 = new Companion(null);
    public static final Parcelable.Creator<ProductUiModel> CREATOR = new Creator();

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<ProductUiModel> {
        @Override // android.os.Parcelable.Creator
        public final ProductUiModel createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            ArrayList arrayList2;
            ArrayList arrayList3;
            DetailedFeatureUiModel detailedFeatureUiModel;
            boolean z;
            boolean z2;
            ArrayList arrayList4;
            parcel.getClass();
            String str = SkuIdUiModel.CREATOR.createFromParcel(parcel).f61764b;
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            String str2 = ProductIdUiModel.CREATOR.createFromParcel(parcel).f61732b;
            ProductType productTypeValueOf = ProductType.valueOf(parcel.readString());
            String string5 = parcel.readString();
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i2 = parcel.readInt();
                arrayList = new ArrayList(i2);
                int iD = 0;
                while (iD != i2) {
                    iD = pq0.d(PanelInfoUiModel.CREATOR, parcel, arrayList, iD, 1);
                }
            }
            if (parcel.readInt() == 0) {
                arrayList2 = null;
            } else {
                int i3 = parcel.readInt();
                arrayList2 = new ArrayList(i3);
                int iD2 = 0;
                while (iD2 != i3) {
                    iD2 = pq0.d(EnvironmentInfoUiModel.CREATOR, parcel, arrayList2, iD2, 1);
                }
            }
            ProductBackground productBackgroundValueOf = ProductBackground.valueOf(parcel.readString());
            int i4 = parcel.readInt();
            int i5 = 0;
            ArrayList arrayList5 = arrayList2;
            LinkedHashMap linkedHashMap = new LinkedHashMap(i4);
            while (i5 != i4) {
                VariationType variationTypeValueOf = VariationType.valueOf(parcel.readString());
                ProductBackground productBackground = productBackgroundValueOf;
                int i6 = parcel.readInt();
                int i7 = i4;
                ArrayList arrayList6 = new ArrayList(i6);
                String str3 = str;
                int iD3 = 0;
                while (iD3 != i6) {
                    iD3 = pq0.d(VariationUiModel.CREATOR, parcel, arrayList6, iD3, 1);
                    i6 = i6;
                    string = string;
                }
                linkedHashMap.put(variationTypeValueOf, arrayList6);
                i5++;
                productBackgroundValueOf = productBackground;
                i4 = i7;
                str = str3;
            }
            ProductBackground productBackground2 = productBackgroundValueOf;
            String str4 = str;
            String str5 = string;
            ProductMediaUiModel productMediaUiModel = (ProductMediaUiModel) parcel.readParcelable(ProductUiModel.class.getClassLoader());
            int i8 = parcel.readInt();
            ArrayList arrayList7 = new ArrayList(i8);
            for (int i9 = 0; i9 != i8; i9++) {
                arrayList7.add(parcel.readParcelable(ProductUiModel.class.getClassLoader()));
            }
            DetailedFeatureUiModel detailedFeatureUiModel2 = (DetailedFeatureUiModel) parcel.readParcelable(ProductUiModel.class.getClassLoader());
            if (parcel.readInt() != 0) {
                int i10 = parcel.readInt();
                arrayList3 = new ArrayList(i10);
                int iD4 = 0;
                while (true) {
                    detailedFeatureUiModel = detailedFeatureUiModel2;
                    if (iD4 == i10) {
                        break;
                    }
                    iD4 = pq0.d(SkuIdUiModel.CREATOR, parcel, arrayList3, iD4, 1);
                    detailedFeatureUiModel2 = detailedFeatureUiModel;
                    arrayList7 = arrayList7;
                }
            } else {
                arrayList3 = null;
                detailedFeatureUiModel = detailedFeatureUiModel2;
            }
            ArrayList arrayList8 = arrayList7;
            VirtualTryOnUiModel virtualTryOnUiModelCreateFromParcel = parcel.readInt() == 0 ? null : VirtualTryOnUiModel.CREATOR.createFromParcel(parcel);
            EditoUiModel editoUiModelCreateFromParcel = parcel.readInt() == 0 ? null : EditoUiModel.CREATOR.createFromParcel(parcel);
            ArrayList arrayList9 = arrayList3;
            ArrayList arrayList10 = arrayList;
            DetailedFeatureUiModel detailedFeatureUiModel3 = detailedFeatureUiModel;
            String string6 = parcel.readString();
            String str6 = str5;
            String string7 = parcel.readString();
            String string8 = parcel.readString();
            String string9 = parcel.readString();
            String string10 = parcel.readString();
            String string11 = parcel.readString();
            String string12 = parcel.readString();
            String string13 = parcel.readString();
            String string14 = parcel.readString();
            String string15 = parcel.readString();
            SizeUiModel sizeUiModelCreateFromParcel = parcel.readInt() == 0 ? null : SizeUiModel.CREATOR.createFromParcel(parcel);
            SizeUiModel sizeUiModelCreateFromParcel2 = parcel.readInt() == 0 ? null : SizeUiModel.CREATOR.createFromParcel(parcel);
            SizeUiModel sizeUiModelCreateFromParcel3 = parcel.readInt() == 0 ? null : SizeUiModel.CREATOR.createFromParcel(parcel);
            boolean z3 = parcel.readInt() != 0;
            String string16 = parcel.readString();
            if (parcel.readInt() != 0) {
                z = true;
                z2 = true;
            } else {
                z = true;
                z2 = false;
            }
            if (parcel.readInt() == 0) {
                z = false;
            }
            if (parcel.readInt() == 0) {
                z = false;
            }
            if (parcel.readInt() == 0) {
                z = false;
            }
            if (parcel.readInt() == 0) {
                z = false;
            }
            if (parcel.readInt() == 0) {
                z = false;
            }
            if (parcel.readInt() == 0) {
                z = false;
            }
            if (parcel.readInt() == 0) {
                z = false;
            }
            if (parcel.readInt() == 0) {
                z = false;
            }
            SkuAvailabilityUiModel skuAvailabilityUiModelCreateFromParcel = parcel.readInt() == 0 ? null : SkuAvailabilityUiModel.CREATOR.createFromParcel(parcel);
            ProductDisclaimerUiModel productDisclaimerUiModelCreateFromParcel = parcel.readInt() == 0 ? null : ProductDisclaimerUiModel.CREATOR.createFromParcel(parcel);
            SellableStatusUiModel sellableStatusUiModel = (SellableStatusUiModel) parcel.readParcelable(ProductUiModel.class.getClassLoader());
            ProductCustomizationUiModel productCustomizationUiModelCreateFromParcel = parcel.readInt() == 0 ? null : ProductCustomizationUiModel.CREATOR.createFromParcel(parcel);
            String string17 = parcel.readString();
            if (parcel.readInt() == 0) {
                arrayList4 = null;
            } else {
                int i11 = parcel.readInt();
                arrayList4 = new ArrayList(i11);
                int iD5 = 0;
                while (iD5 != i11) {
                    iD5 = pq0.d(HighlightUiModel.CREATOR, parcel, arrayList4, iD5, z ? 1 : 0);
                    i11 = i11;
                    str6 = str6;
                }
            }
            String str7 = str6;
            int i12 = parcel.readInt();
            ArrayList arrayList11 = new ArrayList(i12);
            int iD6 = 0;
            while (iD6 != i12) {
                iD6 = pq0.d(EditorialContentUiModel.CREATOR, parcel, arrayList11, iD6, 1);
                i12 = i12;
                arrayList4 = arrayList4;
            }
            ArrayList arrayList12 = arrayList4;
            int i13 = parcel.readInt();
            ArrayList arrayList13 = new ArrayList(i13);
            int iD7 = 0;
            while (iD7 != i13) {
                iD7 = pq0.d(ModelSizeVariationUiModel.CREATOR, parcel, arrayList13, iD7, 1);
                i13 = i13;
                arrayList11 = arrayList11;
            }
            return new ProductUiModel(str4, str7, string2, string3, string4, str2, productTypeValueOf, string5, arrayList10, arrayList5, productBackground2, linkedHashMap, productMediaUiModel, arrayList8, detailedFeatureUiModel3, arrayList9, virtualTryOnUiModelCreateFromParcel, editoUiModelCreateFromParcel, string6, string7, string8, string9, string10, string11, string12, string13, string14, string15, sizeUiModelCreateFromParcel, sizeUiModelCreateFromParcel2, sizeUiModelCreateFromParcel3, z3, string16, z2, z, z, z, z, z, z, z, z, skuAvailabilityUiModelCreateFromParcel, productDisclaimerUiModelCreateFromParcel, sellableStatusUiModel, productCustomizationUiModelCreateFromParcel, string17, arrayList12, arrayList11, arrayList13, parcel.readString(), parcel.readString(), parcel.readString(), null);
        }

        @Override // android.os.Parcelable.Creator
        public final ProductUiModel[] newArray(int i2) {
            return new ProductUiModel[i2];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r50v0 */
    /* JADX WARN: Type inference failed for: r50v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r50v2 */
    /* JADX WARN: Type inference failed for: r51v0 */
    /* JADX WARN: Type inference failed for: r51v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r51v2 */
    /* JADX WARN: Type inference failed for: r54v0 */
    /* JADX WARN: Type inference failed for: r54v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r54v2 */
    /* JADX WARN: Type inference failed for: r55v0 */
    /* JADX WARN: Type inference failed for: r55v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r55v2 */
    public ProductUiModel(String str, String str2, String str3, String str4, String str5, String str6, ProductType productType, String str7, List list, List list2, ProductBackground productBackground, Map map, ProductMediaUiModel productMediaUiModel, List list3, DetailedFeatureUiModel detailedFeatureUiModel, List list4, VirtualTryOnUiModel virtualTryOnUiModel, EditoUiModel editoUiModel, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, SizeUiModel sizeUiModel, SizeUiModel sizeUiModel2, SizeUiModel sizeUiModel3, boolean z, String str18, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, SkuAvailabilityUiModel skuAvailabilityUiModel, ProductDisclaimerUiModel productDisclaimerUiModel, SellableStatusUiModel sellableStatusUiModel, ProductCustomizationUiModel productCustomizationUiModel, String str19, List list5, List list6, List list7, String str20, String str21, String str22, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        String str23;
        String str24;
        ProductCustomizationUiModel productCustomizationUiModel2;
        SellableStatusUiModel notSellableUiModel;
        if ((i2 & 1) != 0) {
            SkuIdUiModel.f61763c.getClass();
            str23 = SkuIdUiModel.d;
        } else {
            str23 = str;
        }
        String str25 = (i2 & 2) != 0 ? "" : str2;
        String str26 = (i2 & 4) != 0 ? null : str3;
        String str27 = (i2 & 8) != 0 ? null : str4;
        String str28 = (i2 & 16) != 0 ? null : str5;
        if ((i2 & 32) != 0) {
            ProductIdUiModel.f61731c.getClass();
            str24 = ProductIdUiModel.d;
        } else {
            str24 = str6;
        }
        ProductType productType2 = (i2 & 64) != 0 ? ProductType.PRODUCT : productType;
        String str29 = (i2 & 128) != 0 ? null : str7;
        List list8 = (i2 & 256) != 0 ? null : list;
        List list9 = (i2 & 512) != 0 ? null : list2;
        ProductBackground productBackground2 = (i2 & 1024) != 0 ? ProductBackground.DEFAULT : productBackground;
        Map mapC = (i2 & 2048) != 0 ? MapsKt.c() : map;
        ProductMediaUiModel productMediaUiModel2 = (i2 & 4096) != 0 ? null : productMediaUiModel;
        List list10 = (i2 & 8192) != 0 ? EmptyList.f71768b : list3;
        DetailedFeatureUiModel detailedFeatureUiModel2 = (i2 & 16384) != 0 ? DetailedFeatureUiModel.None.f61680b : detailedFeatureUiModel;
        List list11 = (i2 & 32768) != 0 ? null : list4;
        VirtualTryOnUiModel virtualTryOnUiModel2 = (i2 & 65536) != 0 ? null : virtualTryOnUiModel;
        EditoUiModel editoUiModel2 = (i2 & 131072) != 0 ? null : editoUiModel;
        String str30 = (i2 & 262144) != 0 ? null : str8;
        String str31 = (i2 & 524288) != 0 ? null : str9;
        String str32 = (i2 & 1048576) != 0 ? null : str10;
        String str33 = (i2 & PKIFailureInfo.badSenderNonce) != 0 ? null : str11;
        String str34 = (i2 & 4194304) != 0 ? null : str12;
        String str35 = (i2 & 8388608) != 0 ? null : str13;
        String str36 = (i2 & 16777216) != 0 ? null : str14;
        String str37 = (i2 & 33554432) != 0 ? null : str15;
        String str38 = (i2 & 67108864) != 0 ? null : str16;
        String str39 = (i2 & 134217728) == 0 ? str17 : "";
        SizeUiModel sizeUiModel4 = (i2 & 268435456) != 0 ? null : sizeUiModel;
        SizeUiModel sizeUiModel5 = (i2 & PKIFailureInfo.duplicateCertReq) != 0 ? null : sizeUiModel2;
        SizeUiModel sizeUiModel6 = (i2 & 1073741824) != 0 ? null : sizeUiModel3;
        boolean z11 = (i2 & Integer.MIN_VALUE) != 0 ? false : z;
        String str40 = (i3 & 1) != 0 ? null : str18;
        boolean z12 = (i3 & 2) != 0 ? false : z2;
        boolean z13 = (i3 & 4) != 0 ? false : z3;
        boolean z14 = (i3 & 8) != 0 ? false : z4;
        boolean z15 = (i3 & 16) != 0 ? false : z5;
        boolean z16 = (i3 & 32) != 0 ? false : z6;
        boolean z17 = (i3 & 128) != 0 ? false : z8;
        boolean z18 = (i3 & 256) != 0 ? false : z9;
        boolean z19 = (i3 & 512) != 0 ? false : z10;
        SkuAvailabilityUiModel skuAvailabilityUiModel2 = (i3 & 1024) != 0 ? null : skuAvailabilityUiModel;
        ProductDisclaimerUiModel productDisclaimerUiModel2 = (i3 & 2048) != 0 ? null : productDisclaimerUiModel;
        if ((i3 & 4096) != 0) {
            productCustomizationUiModel2 = null;
            notSellableUiModel = new SellableStatusUiModel.NotSellableUiModel(new NotSellableReasonUiModel.NotECommerceUiModel(null, null, 2, null));
        } else {
            productCustomizationUiModel2 = null;
            notSellableUiModel = sellableStatusUiModel;
        }
        this(str23, str25, str26, str27, str28, str24, productType2, str29, list8, list9, productBackground2, mapC, productMediaUiModel2, list10, detailedFeatureUiModel2, list11, virtualTryOnUiModel2, editoUiModel2, str30, str31, str32, str33, str34, str35, str36, str37, str38, str39, sizeUiModel4, sizeUiModel5, sizeUiModel6, z11, str40, z12, z13, z14, z15, z16, z7, z17, z18, z19, skuAvailabilityUiModel2, productDisclaimerUiModel2, notSellableUiModel, (i3 & 8192) != 0 ? productCustomizationUiModel2 : productCustomizationUiModel, (i3 & 16384) != 0 ? productCustomizationUiModel2 : str19, (i3 & 32768) != 0 ? productCustomizationUiModel2 : list5, list6, list7, (i3 & 262144) != 0 ? productCustomizationUiModel2 : str20, (i3 & 524288) != 0 ? productCustomizationUiModel2 : str21, str22, null);
    }

    public static final void a(ProductUiModel productUiModel, ArrayList arrayList, String str, Function1 function1) {
        List list = productUiModel.f61742k;
        if (list != null) {
            if (list.isEmpty()) {
                list = null;
            }
            if (list != null) {
                List<EnvironmentInfoUiModel> list2 = list;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
                for (EnvironmentInfoUiModel environmentInfoUiModel : list2) {
                    arrayList2.add(new PanelInfoNativeBlock(environmentInfoUiModel.f61691b, environmentInfoUiModel.f61692c, environmentInfoUiModel.d));
                }
                arrayList.add(new PanelInfoNativeItem(arrayList2, str, null, new l1(6, str, function1), 4, null));
            }
        }
    }

    public static ProductUiModel b(ProductUiModel productUiModel, Map map, SkuAvailabilityUiModel skuAvailabilityUiModel, ProductDisclaimerUiModel productDisclaimerUiModel, int i2, int i3) {
        String str = productUiModel.f61735b;
        String str2 = productUiModel.f61736c;
        String str3 = productUiModel.d;
        String str4 = productUiModel.f61737e;
        String str5 = productUiModel.f61738f;
        String str6 = productUiModel.g;
        ProductType productType = productUiModel.f61739h;
        String str7 = productUiModel.f61740i;
        List list = productUiModel.f61741j;
        List list2 = productUiModel.f61742k;
        ProductBackground productBackground = productUiModel.l;
        Map map2 = (i2 & 2048) != 0 ? productUiModel.m : map;
        ProductMediaUiModel productMediaUiModel = productUiModel.n;
        Map map3 = map2;
        List list3 = productUiModel.o;
        DetailedFeatureUiModel detailedFeatureUiModel = productUiModel.p;
        List list4 = productUiModel.q;
        VirtualTryOnUiModel virtualTryOnUiModel = productUiModel.r;
        EditoUiModel editoUiModel = productUiModel.s;
        String str8 = productUiModel.t;
        String str9 = productUiModel.u;
        String str10 = productUiModel.v;
        String str11 = productUiModel.w;
        String str12 = productUiModel.x;
        String str13 = productUiModel.y;
        String str14 = productUiModel.z;
        String str15 = productUiModel.A;
        String str16 = productUiModel.B;
        String str17 = productUiModel.C;
        SizeUiModel sizeUiModel = productUiModel.D;
        SizeUiModel sizeUiModel2 = productUiModel.E;
        SizeUiModel sizeUiModel3 = productUiModel.F;
        boolean z = productUiModel.G;
        String str18 = productUiModel.H;
        boolean z2 = productUiModel.I;
        boolean z3 = productUiModel.J;
        boolean z4 = productUiModel.K;
        boolean z5 = productUiModel.L;
        boolean z6 = productUiModel.M;
        boolean z7 = productUiModel.N;
        boolean z8 = productUiModel.O;
        boolean z9 = productUiModel.P;
        boolean z10 = productUiModel.Q;
        SkuAvailabilityUiModel skuAvailabilityUiModel2 = (i3 & 1024) != 0 ? productUiModel.R : skuAvailabilityUiModel;
        ProductDisclaimerUiModel productDisclaimerUiModel2 = (i3 & 2048) != 0 ? productUiModel.S : productDisclaimerUiModel;
        SellableStatusUiModel sellableStatusUiModel = productUiModel.T;
        ProductCustomizationUiModel productCustomizationUiModel = productUiModel.V;
        String str19 = productUiModel.W;
        List list5 = productUiModel.X;
        List list6 = productUiModel.Y;
        List list7 = productUiModel.Z;
        String str20 = productUiModel.h0;
        String str21 = productUiModel.t0;
        String str22 = productUiModel.b1;
        str.getClass();
        str2.getClass();
        str6.getClass();
        productType.getClass();
        productBackground.getClass();
        map3.getClass();
        list3.getClass();
        detailedFeatureUiModel.getClass();
        str17.getClass();
        sellableStatusUiModel.getClass();
        list6.getClass();
        list7.getClass();
        return new ProductUiModel(str, str2, str3, str4, str5, str6, productType, str7, list, list2, productBackground, map3, productMediaUiModel, list3, detailedFeatureUiModel, list4, virtualTryOnUiModel, editoUiModel, str8, str9, str10, str11, str12, str13, str14, str15, str16, str17, sizeUiModel, sizeUiModel2, sizeUiModel3, z, str18, z2, z3, z4, z5, z6, z7, z8, z9, z10, skuAvailabilityUiModel2, productDisclaimerUiModel2, sellableStatusUiModel, productCustomizationUiModel, str19, list5, list6, list7, str20, str21, str22, null);
    }

    public final Pair c() {
        VariationType variationType = VariationType.MODEL_SIZE;
        Map map = this.m;
        List list = (List) map.get(variationType);
        if (list == null) {
            list = EmptyList.f71768b;
        }
        VariationType variationType2 = VariationType.SIZE;
        List list2 = (List) map.get(variationType2);
        if (list2 == null) {
            list2 = EmptyList.f71768b;
        }
        if (list2.size() > 1) {
            return new Pair(variationType2, list2);
        }
        if (list.size() > 1) {
            return new Pair(variationType, list);
        }
        return null;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final String getF61735b() {
        return this.f61735b;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductUiModel)) {
            return false;
        }
        ProductUiModel productUiModel = (ProductUiModel) obj;
        String str = productUiModel.f61735b;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        if (!Intrinsics.c(this.f61735b, str) || !Intrinsics.c(this.f61736c, productUiModel.f61736c) || !Intrinsics.c(this.d, productUiModel.d) || !Intrinsics.c(this.f61737e, productUiModel.f61737e) || !Intrinsics.c(this.f61738f, productUiModel.f61738f)) {
            return false;
        }
        String str2 = productUiModel.g;
        ProductIdUiModel.Companion companion2 = ProductIdUiModel.f61731c;
        return Intrinsics.c(this.g, str2) && this.f61739h == productUiModel.f61739h && Intrinsics.c(this.f61740i, productUiModel.f61740i) && Intrinsics.c(this.f61741j, productUiModel.f61741j) && Intrinsics.c(this.f61742k, productUiModel.f61742k) && this.l == productUiModel.l && Intrinsics.c(this.m, productUiModel.m) && Intrinsics.c(this.n, productUiModel.n) && Intrinsics.c(this.o, productUiModel.o) && Intrinsics.c(this.p, productUiModel.p) && Intrinsics.c(this.q, productUiModel.q) && Intrinsics.c(this.r, productUiModel.r) && Intrinsics.c(this.s, productUiModel.s) && Intrinsics.c(this.t, productUiModel.t) && Intrinsics.c(this.u, productUiModel.u) && Intrinsics.c(this.v, productUiModel.v) && Intrinsics.c(this.w, productUiModel.w) && Intrinsics.c(this.x, productUiModel.x) && Intrinsics.c(this.y, productUiModel.y) && Intrinsics.c(this.z, productUiModel.z) && Intrinsics.c(this.A, productUiModel.A) && Intrinsics.c(this.B, productUiModel.B) && Intrinsics.c(this.C, productUiModel.C) && Intrinsics.c(this.D, productUiModel.D) && Intrinsics.c(this.E, productUiModel.E) && Intrinsics.c(this.F, productUiModel.F) && this.G == productUiModel.G && Intrinsics.c(this.H, productUiModel.H) && this.I == productUiModel.I && this.J == productUiModel.J && this.K == productUiModel.K && this.L == productUiModel.L && this.M == productUiModel.M && this.N == productUiModel.N && this.O == productUiModel.O && this.P == productUiModel.P && this.Q == productUiModel.Q && Intrinsics.c(this.R, productUiModel.R) && Intrinsics.c(this.S, productUiModel.S) && Intrinsics.c(this.T, productUiModel.T) && Intrinsics.c(this.V, productUiModel.V) && Intrinsics.c(this.W, productUiModel.W) && Intrinsics.c(this.X, productUiModel.X) && Intrinsics.c(this.Y, productUiModel.Y) && Intrinsics.c(this.Z, productUiModel.Z) && Intrinsics.c(this.h0, productUiModel.h0) && Intrinsics.c(this.t0, productUiModel.t0) && Intrinsics.c(this.b1, productUiModel.b1);
    }

    public final int hashCode() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        int iB = fc.b(this.f61735b.hashCode() * 31, 31, this.f61736c);
        String str = this.d;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f61737e;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f61738f;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        ProductIdUiModel.Companion companion2 = ProductIdUiModel.f61731c;
        int iHashCode4 = (this.f61739h.hashCode() + fc.b(iHashCode3, 31, this.g)) * 31;
        String str4 = this.f61740i;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        List list = this.f61741j;
        int iHashCode6 = (iHashCode5 + (list == null ? 0 : list.hashCode())) * 31;
        List list2 = this.f61742k;
        int iHashCode7 = (this.m.hashCode() + ((this.l.hashCode() + ((iHashCode6 + (list2 == null ? 0 : list2.hashCode())) * 31)) * 31)) * 31;
        ProductMediaUiModel productMediaUiModel = this.n;
        int iHashCode8 = (this.p.hashCode() + n00.a((iHashCode7 + (productMediaUiModel == null ? 0 : productMediaUiModel.hashCode())) * 31, 31, this.o)) * 31;
        List list3 = this.q;
        int iHashCode9 = (iHashCode8 + (list3 == null ? 0 : list3.hashCode())) * 31;
        VirtualTryOnUiModel virtualTryOnUiModel = this.r;
        int iHashCode10 = (iHashCode9 + (virtualTryOnUiModel == null ? 0 : virtualTryOnUiModel.f62208b.hashCode())) * 31;
        EditoUiModel editoUiModel = this.s;
        int iHashCode11 = (iHashCode10 + (editoUiModel == null ? 0 : editoUiModel.hashCode())) * 31;
        String str5 = this.t;
        int iHashCode12 = (iHashCode11 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.u;
        int iHashCode13 = (iHashCode12 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.v;
        int iHashCode14 = (iHashCode13 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.w;
        int iHashCode15 = (iHashCode14 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.x;
        int iHashCode16 = (iHashCode15 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.y;
        int iHashCode17 = (iHashCode16 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.z;
        int iHashCode18 = (iHashCode17 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.A;
        int iHashCode19 = (iHashCode18 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.B;
        int iB2 = fc.b((iHashCode19 + (str13 == null ? 0 : str13.hashCode())) * 31, 31, this.C);
        SizeUiModel sizeUiModel = this.D;
        int iHashCode20 = (iB2 + (sizeUiModel == null ? 0 : sizeUiModel.hashCode())) * 31;
        SizeUiModel sizeUiModel2 = this.E;
        int iHashCode21 = (iHashCode20 + (sizeUiModel2 == null ? 0 : sizeUiModel2.hashCode())) * 31;
        SizeUiModel sizeUiModel3 = this.F;
        int iB3 = o60.b((iHashCode21 + (sizeUiModel3 == null ? 0 : sizeUiModel3.hashCode())) * 31, 31, this.G);
        String str14 = this.H;
        int iB4 = o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b((iB3 + (str14 == null ? 0 : str14.hashCode())) * 31, 31, this.I), 31, this.J), 31, this.K), 31, this.L), 31, this.M), 31, this.N), 31, this.O), 31, this.P), 31, this.Q);
        SkuAvailabilityUiModel skuAvailabilityUiModel = this.R;
        int iHashCode22 = (iB4 + (skuAvailabilityUiModel == null ? 0 : skuAvailabilityUiModel.hashCode())) * 31;
        ProductDisclaimerUiModel productDisclaimerUiModel = this.S;
        int iHashCode23 = (this.T.hashCode() + ((iHashCode22 + (productDisclaimerUiModel == null ? 0 : productDisclaimerUiModel.hashCode())) * 31)) * 31;
        ProductCustomizationUiModel productCustomizationUiModel = this.V;
        int iHashCode24 = (iHashCode23 + (productCustomizationUiModel == null ? 0 : productCustomizationUiModel.hashCode())) * 31;
        String str15 = this.W;
        int iHashCode25 = (iHashCode24 + (str15 == null ? 0 : str15.hashCode())) * 31;
        List list4 = this.X;
        int iA = n00.a(n00.a((iHashCode25 + (list4 == null ? 0 : list4.hashCode())) * 31, 31, this.Y), 31, this.Z);
        String str16 = this.h0;
        int iHashCode26 = (iA + (str16 == null ? 0 : str16.hashCode())) * 31;
        String str17 = this.t0;
        int iHashCode27 = (iHashCode26 + (str17 == null ? 0 : str17.hashCode())) * 31;
        String str18 = this.b1;
        return iHashCode27 + (str18 != null ? str18.hashCode() : 0);
    }

    public final String toString() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        ProductIdUiModel.Companion companion2 = ProductIdUiModel.f61731c;
        StringBuilder sbS = fc.s("ProductUiModel(sku=", this.f61735b, ", name=", this.f61736c, ", skuKey=");
        cj.C(sbS, this.d, ", packagingVariation=", this.f61737e, ", commercialTag=");
        cj.C(sbS, this.f61738f, ", identifier=", this.g, ", type=");
        sbS.append(this.f61739h);
        sbS.append(", description=");
        sbS.append(this.f61740i);
        sbS.append(", panelInfos=");
        a.C(sbS, this.f61741j, ", environmentInfo=", this.f61742k, ", background=");
        sbS.append(this.l);
        sbS.append(", variations=");
        sbS.append(this.m);
        sbS.append(", mainAsset=");
        sbS.append(this.n);
        sbS.append(", medias=");
        sbS.append(this.o);
        sbS.append(", detailedFeature=");
        sbS.append(this.p);
        sbS.append(", bundleSkuIds=");
        sbS.append(this.q);
        sbS.append(", virtualTryOn=");
        sbS.append(this.r);
        sbS.append(", edito=");
        sbS.append(this.s);
        sbS.append(", color=");
        cj.C(sbS, this.t, ", colorIconUrl=", this.u, ", colorFamily=");
        cj.C(sbS, this.v, ", finish=", this.w, ", material=");
        cj.C(sbS, this.x, ", materialIconUrl=", this.y, ", size=");
        cj.C(sbS, this.z, ", carat=", this.A, ", language=");
        cj.C(sbS, this.B, ", webUrl=", this.C, ", width=");
        sbS.append(this.D);
        sbS.append(", depth=");
        sbS.append(this.E);
        sbS.append(", height=");
        sbS.append(this.F);
        sbS.append(", isSizeGuideEnabled=");
        sbS.append(this.G);
        sbS.append(", sizeGuideId=");
        pq0.A(this.H, ", isBackInStock=", ", isWishlistable=", sbS, this.I);
        fc.y(sbS, this.J, ", isARAvailable=", this.K, ", isLocateInStore=");
        fc.y(sbS, this.L, ", isDiamondProductAndPDPFeatureEnabled=", this.M, ", isShadeFinderEnabled=");
        fc.y(sbS, this.N, ", isBundle=", this.O, ", isTrunkSpeaker=");
        fc.y(sbS, this.P, ", isHorizonSpeaker=", this.Q, ", skuAvailability=");
        sbS.append(this.R);
        sbS.append(", disclaimer=");
        sbS.append(this.S);
        sbS.append(", sellableStatus=");
        sbS.append(this.T);
        sbS.append(", customization=");
        sbS.append(this.V);
        sbS.append(", launchDate=");
        d21.z(this.W, ", highlights=", ", editorialContents=", sbS, this.X);
        a.C(sbS, this.Y, ", modelSizeVariationList=", this.Z, ", contextualSizingImageUrl=");
        cj.C(sbS, this.h0, ", shareUrl=", this.t0, ", fitInformationMention=");
        return n00.r(this.b1, ")", sbS);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        parcel.writeString(this.f61735b);
        parcel.writeString(this.f61736c);
        parcel.writeString(this.d);
        parcel.writeString(this.f61737e);
        parcel.writeString(this.f61738f);
        ProductIdUiModel.Companion companion2 = ProductIdUiModel.f61731c;
        parcel.writeString(this.g);
        parcel.writeString(this.f61739h.name());
        parcel.writeString(this.f61740i);
        List list = this.f61741j;
        if (list == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(list.size());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((PanelInfoUiModel) it.next()).writeToParcel(parcel, i2);
            }
        }
        List list2 = this.f61742k;
        if (list2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(list2.size());
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                ((EnvironmentInfoUiModel) it2.next()).writeToParcel(parcel, i2);
            }
        }
        parcel.writeString(this.l.name());
        Map map = this.m;
        parcel.writeInt(map.size());
        for (Map.Entry entry : map.entrySet()) {
            parcel.writeString(((VariationType) entry.getKey()).name());
            Iterator itP = cj.p((List) entry.getValue(), parcel);
            while (itP.hasNext()) {
                ((VariationUiModel) itP.next()).writeToParcel(parcel, i2);
            }
        }
        parcel.writeParcelable(this.n, i2);
        Iterator itP2 = cj.p(this.o, parcel);
        while (itP2.hasNext()) {
            parcel.writeParcelable((Parcelable) itP2.next(), i2);
        }
        parcel.writeParcelable(this.p, i2);
        List list3 = this.q;
        if (list3 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(list3.size());
            Iterator it3 = list3.iterator();
            while (it3.hasNext()) {
                parcel.writeString(((SkuIdUiModel) it3.next()).f61764b);
            }
        }
        VirtualTryOnUiModel virtualTryOnUiModel = this.r;
        if (virtualTryOnUiModel == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            virtualTryOnUiModel.writeToParcel(parcel, i2);
        }
        EditoUiModel editoUiModel = this.s;
        if (editoUiModel == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            editoUiModel.writeToParcel(parcel, i2);
        }
        parcel.writeString(this.t);
        parcel.writeString(this.u);
        parcel.writeString(this.v);
        parcel.writeString(this.w);
        parcel.writeString(this.x);
        parcel.writeString(this.y);
        parcel.writeString(this.z);
        parcel.writeString(this.A);
        parcel.writeString(this.B);
        parcel.writeString(this.C);
        SizeUiModel sizeUiModel = this.D;
        if (sizeUiModel == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            sizeUiModel.writeToParcel(parcel, i2);
        }
        SizeUiModel sizeUiModel2 = this.E;
        if (sizeUiModel2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            sizeUiModel2.writeToParcel(parcel, i2);
        }
        SizeUiModel sizeUiModel3 = this.F;
        if (sizeUiModel3 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            sizeUiModel3.writeToParcel(parcel, i2);
        }
        parcel.writeInt(this.G ? 1 : 0);
        parcel.writeString(this.H);
        parcel.writeInt(this.I ? 1 : 0);
        parcel.writeInt(this.J ? 1 : 0);
        parcel.writeInt(this.K ? 1 : 0);
        parcel.writeInt(this.L ? 1 : 0);
        parcel.writeInt(this.M ? 1 : 0);
        parcel.writeInt(this.N ? 1 : 0);
        parcel.writeInt(this.O ? 1 : 0);
        parcel.writeInt(this.P ? 1 : 0);
        parcel.writeInt(this.Q ? 1 : 0);
        SkuAvailabilityUiModel skuAvailabilityUiModel = this.R;
        if (skuAvailabilityUiModel == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            skuAvailabilityUiModel.writeToParcel(parcel, i2);
        }
        ProductDisclaimerUiModel productDisclaimerUiModel = this.S;
        if (productDisclaimerUiModel == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            productDisclaimerUiModel.writeToParcel(parcel, i2);
        }
        parcel.writeParcelable(this.T, i2);
        ProductCustomizationUiModel productCustomizationUiModel = this.V;
        if (productCustomizationUiModel == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            productCustomizationUiModel.writeToParcel(parcel, i2);
        }
        parcel.writeString(this.W);
        List list4 = this.X;
        if (list4 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(list4.size());
            Iterator it4 = list4.iterator();
            while (it4.hasNext()) {
                ((HighlightUiModel) it4.next()).writeToParcel(parcel, i2);
            }
        }
        Iterator itP3 = cj.p(this.Y, parcel);
        while (itP3.hasNext()) {
            ((EditorialContentUiModel) itP3.next()).writeToParcel(parcel, i2);
        }
        Iterator itP4 = cj.p(this.Z, parcel);
        while (itP4.hasNext()) {
            ((ModelSizeVariationUiModel) itP4.next()).writeToParcel(parcel, i2);
        }
        parcel.writeString(this.h0);
        parcel.writeString(this.t0);
        parcel.writeString(this.b1);
    }

    public ProductUiModel(String str, String str2, String str3, String str4, String str5, String str6, ProductType productType, String str7, List list, List list2, ProductBackground productBackground, Map map, ProductMediaUiModel productMediaUiModel, List list3, DetailedFeatureUiModel detailedFeatureUiModel, List list4, VirtualTryOnUiModel virtualTryOnUiModel, EditoUiModel editoUiModel, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, SizeUiModel sizeUiModel, SizeUiModel sizeUiModel2, SizeUiModel sizeUiModel3, boolean z, String str18, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, SkuAvailabilityUiModel skuAvailabilityUiModel, ProductDisclaimerUiModel productDisclaimerUiModel, SellableStatusUiModel sellableStatusUiModel, ProductCustomizationUiModel productCustomizationUiModel, String str19, List list5, List list6, List list7, String str20, String str21, String str22, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        str6.getClass();
        productType.getClass();
        productBackground.getClass();
        map.getClass();
        list3.getClass();
        detailedFeatureUiModel.getClass();
        str17.getClass();
        sellableStatusUiModel.getClass();
        list6.getClass();
        list7.getClass();
        this.f61735b = str;
        this.f61736c = str2;
        this.d = str3;
        this.f61737e = str4;
        this.f61738f = str5;
        this.g = str6;
        this.f61739h = productType;
        this.f61740i = str7;
        this.f61741j = list;
        this.f61742k = list2;
        this.l = productBackground;
        this.m = map;
        this.n = productMediaUiModel;
        this.o = list3;
        this.p = detailedFeatureUiModel;
        this.q = list4;
        this.r = virtualTryOnUiModel;
        this.s = editoUiModel;
        this.t = str8;
        this.u = str9;
        this.v = str10;
        this.w = str11;
        this.x = str12;
        this.y = str13;
        this.z = str14;
        this.A = str15;
        this.B = str16;
        this.C = str17;
        this.D = sizeUiModel;
        this.E = sizeUiModel2;
        this.F = sizeUiModel3;
        this.G = z;
        this.H = str18;
        this.I = z2;
        this.J = z3;
        this.K = z4;
        this.L = z5;
        this.M = z6;
        this.N = z7;
        this.O = z8;
        this.P = z9;
        this.Q = z10;
        this.R = skuAvailabilityUiModel;
        this.S = productDisclaimerUiModel;
        this.T = sellableStatusUiModel;
        this.V = productCustomizationUiModel;
        this.W = str19;
        this.X = list5;
        this.Y = list6;
        this.Z = list7;
        this.h0 = str20;
        this.t0 = str21;
        this.b1 = str22;
        ProductImageUiModel productImageUiModel = productMediaUiModel instanceof ProductImageUiModel ? (ProductImageUiModel) productMediaUiModel : null;
        if (productImageUiModel == null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : list3) {
                if (obj instanceof ProductImageUiModel) {
                    arrayList.add(obj);
                }
            }
            productImageUiModel = (ProductImageUiModel) CollectionsKt.firstOrNull(arrayList);
        }
        this.c1 = productImageUiModel;
    }
}
