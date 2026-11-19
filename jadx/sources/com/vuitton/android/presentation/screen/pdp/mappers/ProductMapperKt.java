package com.vuitton.android.presentation.screen.pdp.mappers;

import android.os.Parcelable;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModelKt;
import com.vuitton.android.presentation.model.common.mapper.AssetMapperKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ModelSizeVariationUiModel;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.WearingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ConfigurationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.DetailedFeatureUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.EditoUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.EditorialContentUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.EnvironmentInfoUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.HighlightUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.HowToMeasureItemUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.NotSellableReasonUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PanelInfoUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PriceSpecificationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PriceUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductCustomizationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductImageUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductVideoUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SellableStatusUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SizeGuideUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SizeUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.VariationUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.VirtualTryOnUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.mappers.TryOnProductMapperKt;
import com.vuitton.foundation.model.domain.extensions.CollectionExtKt;
import com.vuitton.foundation.model.domain.model.product.ProductImage;
import com.vuitton.foundation.model.domain.model.product.ProductMedia;
import com.vuitton.foundation.model.domain.model.product.ProductVideo;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.universal.Configuration;
import com.vuitton.foundation.model.domain.model.product.universal.DetailedFeature;
import com.vuitton.foundation.model.domain.model.product.universal.DigitalAssetProduct;
import com.vuitton.foundation.model.domain.model.product.universal.DigitalAssetProductType;
import com.vuitton.foundation.model.domain.model.product.universal.Edito;
import com.vuitton.foundation.model.domain.model.product.universal.EditorialContent;
import com.vuitton.foundation.model.domain.model.product.universal.EnvironmentInfo;
import com.vuitton.foundation.model.domain.model.product.universal.Highlight;
import com.vuitton.foundation.model.domain.model.product.universal.ModelSizeVariation;
import com.vuitton.foundation.model.domain.model.product.universal.NotSellableReason;
import com.vuitton.foundation.model.domain.model.product.universal.PackagingVariation;
import com.vuitton.foundation.model.domain.model.product.universal.PanelInfo;
import com.vuitton.foundation.model.domain.model.product.universal.Price;
import com.vuitton.foundation.model.domain.model.product.universal.PriceSpecification;
import com.vuitton.foundation.model.domain.model.product.universal.Product;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import com.vuitton.foundation.model.domain.model.product.universal.ProductCustomization;
import com.vuitton.foundation.model.domain.model.product.universal.ProductType;
import com.vuitton.foundation.model.domain.model.product.universal.SellableStatus;
import com.vuitton.foundation.model.domain.model.product.universal.Size;
import com.vuitton.foundation.model.domain.model.product.universal.Variation;
import com.vuitton.foundation.model.domain.model.product.universal.Wearing;
import com.vuitton.foundation.model.domain.model.product.virtualtryon.VirtualTryOn;
import com.vuitton.foundation.model.domain.model.sizeguide.HowToMeasureItem;
import com.vuitton.foundation.model.domain.model.sizeguide.SizeGuide;
import defpackage.v40;
import java.net.URI;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.text.StringsKt;
import kotlinx.collections.immutable.ExtensionsKt;
import kotlinx.collections.immutable.ImmutableList;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ProductMapperKt {
    public static final PriceUiModel a(Price price) {
        price.getClass();
        String str = price.f68007a;
        PriceSpecification priceSpecification = price.f68008b;
        return new PriceUiModel(str, priceSpecification != null ? new PriceSpecificationUiModel(priceSpecification.f68009a, priceSpecification.f68010b) : null);
    }

    public static final ProductUiModel b(Product product, boolean z) {
        ArrayList arrayList;
        ArrayList arrayList2;
        ImmutableList immutableListA;
        Parcelable productVideoUiModel;
        String str;
        String str2;
        String str3;
        Parcelable multiple;
        ArrayList arrayList3;
        String str4;
        VirtualTryOnUiModel virtualTryOnUiModel;
        String str5;
        EditoUiModel editoUiModel;
        SellableStatusUiModel notSellableUiModel;
        String str6;
        NotSellableReasonUiModel unavailableUiModel;
        ProductCustomizationUiModel productCustomizationUiModel;
        ArrayList arrayList4;
        SellableStatusUiModel sellableStatusUiModel;
        String str7;
        String str8;
        product.getClass();
        boolean z2 = z && product.J;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        String str9 = product.f68011a;
        companion.getClass();
        SkuIdUiModel.Companion.c(str9);
        String str10 = product.f68012b;
        String str11 = product.f68014e;
        String str12 = product.d;
        PackagingVariation packagingVariation = product.f68013c;
        String value = packagingVariation != null ? packagingVariation.getValue() : null;
        ProductIdUiModel.Companion companion2 = ProductIdUiModel.f61731c;
        String str13 = product.f68015f;
        companion2.getClass();
        str13.getClass();
        ProductType productType = product.g;
        String str14 = product.f68016h;
        List list = product.f68018j;
        if (list != null) {
            List<PanelInfo> list2 = list;
            ArrayList arrayList5 = new ArrayList(CollectionsKt.t(list2, 10));
            for (PanelInfo panelInfo : list2) {
                panelInfo.getClass();
                arrayList5.add(new PanelInfoUiModel(panelInfo.f68004a, panelInfo.f68005b, panelInfo.f68006c, panelInfo.d));
            }
            arrayList = arrayList5;
        } else {
            arrayList = null;
        }
        List list3 = product.f68019k;
        if (list3 != null) {
            ArrayList<EnvironmentInfo> arrayList6 = new ArrayList();
            for (Object obj : list3) {
                EnvironmentInfo environmentInfo = (EnvironmentInfo) obj;
                if (CollectionExtKt.a(environmentInfo.f67989b) || ((str8 = environmentInfo.f67990c) != null && !StringsKt.w(str8))) {
                    arrayList6.add(obj);
                }
            }
            ArrayList arrayList7 = new ArrayList(CollectionsKt.t(arrayList6, 10));
            for (EnvironmentInfo environmentInfo2 : arrayList6) {
                environmentInfo2.getClass();
                arrayList7.add(new EnvironmentInfoUiModel(environmentInfo2.f67988a, environmentInfo2.f67989b, environmentInfo2.f67990c));
            }
            arrayList2 = arrayList7;
        } else {
            arrayList2 = null;
        }
        ProductBackground productBackground = product.l;
        Map map = product.m;
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.g(map.size()));
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object key = entry.getKey();
            Iterable iterable = (Iterable) entry.getValue();
            Iterator it2 = it;
            String str15 = str9;
            String str16 = str10;
            ArrayList arrayList8 = new ArrayList(CollectionsKt.t(iterable, 10));
            Iterator it3 = iterable.iterator();
            while (it3.hasNext()) {
                Variation variation = (Variation) it3.next();
                variation.getClass();
                SkuIdUiModel.Companion companion3 = SkuIdUiModel.f61763c;
                Iterator it4 = it3;
                String str17 = variation.f68028a;
                companion3.getClass();
                SkuIdUiModel.Companion.c(str17);
                arrayList8.add(new VariationUiModel(str17, variation.f68029b, variation.f68030c, null, variation.d, variation.f68031e, null));
                it3 = it4;
            }
            linkedHashMap.put(key, arrayList8);
            it = it2;
            str9 = str15;
            str10 = str16;
        }
        String str18 = str9;
        String str19 = str10;
        DigitalAssetProduct digitalAssetProduct = product.R;
        ProductImageUiModel productImageUiModel = digitalAssetProduct != null ? new ProductImageUiModel(digitalAssetProduct.f67980c, digitalAssetProduct.d.name()) : null;
        List list4 = product.Q;
        ArrayList arrayList9 = new ArrayList();
        Iterator it5 = list4.iterator();
        while (it5.hasNext()) {
            Object next = it5.next();
            DigitalAssetProductType digitalAssetProductType = ((DigitalAssetProduct) next).f67978a;
            Iterator it6 = it5;
            if (digitalAssetProductType == DigitalAssetProductType.IMAGE || digitalAssetProductType == DigitalAssetProductType.VIDEO) {
                arrayList9.add(next);
            }
            it5 = it6;
        }
        ArrayList arrayList10 = new ArrayList(CollectionsKt.t(arrayList9, 10));
        Iterator it7 = arrayList9.iterator();
        while (it7.hasNext()) {
            DigitalAssetProduct digitalAssetProduct2 = (DigitalAssetProduct) it7.next();
            DigitalAssetProductType digitalAssetProductType2 = digitalAssetProduct2.f67978a;
            Iterator it8 = it7;
            String str20 = digitalAssetProduct2.f67980c;
            String str21 = str11;
            arrayList10.add(digitalAssetProductType2 == DigitalAssetProductType.IMAGE ? new ProductImageUiModel(StringsKt.U(str20, "?"), digitalAssetProduct2.d.name()) : new ProductVideoUiModel(str20, null));
            it7 = it8;
            str11 = str21;
        }
        String str22 = str11;
        if (arrayList10.isEmpty()) {
            arrayList10 = null;
        }
        if (arrayList10 == null || (immutableListA = ExtensionsKt.a(arrayList10)) == null) {
            List<ProductMedia> list5 = product.n;
            ArrayList arrayList11 = new ArrayList(CollectionsKt.t(list5, 10));
            for (ProductMedia productMedia : list5) {
                productMedia.getClass();
                if (productMedia instanceof ProductImage) {
                    ProductImage productImage = (ProductImage) productMedia;
                    productVideoUiModel = new ProductImageUiModel(productImage.f67907a, productImage.f67908b);
                } else {
                    if (!(productMedia instanceof ProductVideo)) {
                        v40.g();
                        return null;
                    }
                    ProductVideo productVideo = (ProductVideo) productMedia;
                    productVideoUiModel = new ProductVideoUiModel(productVideo.f67918a, productVideo.f67919b);
                }
                arrayList11.add(productVideoUiModel);
            }
            immutableListA = ExtensionsKt.a(arrayList11);
        }
        DetailedFeature detailedFeature = product.o;
        detailedFeature.getClass();
        if (detailedFeature instanceof DetailedFeature.Single) {
            multiple = new DetailedFeatureUiModel.Single(((DetailedFeature.Single) detailedFeature).f67977a);
            str = value;
            str2 = str12;
            str3 = str13;
        } else if (detailedFeature instanceof DetailedFeature.Multiple) {
            DetailedFeature.Multiple multiple2 = (DetailedFeature.Multiple) detailedFeature;
            String str23 = multiple2.f67972a;
            List list6 = multiple2.f67973b;
            ArrayList arrayList12 = new ArrayList(CollectionsKt.t(list6, 10));
            Iterator it9 = list6.iterator();
            while (it9.hasNext()) {
                DetailedFeature.DescriptionDetail descriptionDetail = (DetailedFeature.DescriptionDetail) it9.next();
                String str24 = descriptionDetail.f67969a;
                Iterator it10 = it9;
                String str25 = descriptionDetail.f67970b;
                List list7 = descriptionDetail.f67971c;
                String str26 = value;
                String str27 = str12;
                String str28 = str13;
                ArrayList arrayList13 = new ArrayList(CollectionsKt.t(list7, 10));
                for (Iterator it11 = list7.iterator(); it11.hasNext(); it11 = it11) {
                    DetailedFeature.ProductDetailSection productDetailSection = (DetailedFeature.ProductDetailSection) it11.next();
                    arrayList13.add(new DetailedFeatureUiModel.ProductDetailSectionUiModel(productDetailSection.f67975a, AssetMapperKt.a(productDetailSection.f67976b)));
                }
                arrayList12.add(new DetailedFeatureUiModel.DescriptionDetailUiModel(str24, str25, arrayList13));
                it9 = it10;
                value = str26;
                str12 = str27;
                str13 = str28;
            }
            str = value;
            str2 = str12;
            str3 = str13;
            multiple = new DetailedFeatureUiModel.Multiple(str23, arrayList12);
        } else {
            str = value;
            str2 = str12;
            str3 = str13;
            if (!detailedFeature.equals(DetailedFeature.None.f67974a)) {
                v40.g();
                return null;
            }
            multiple = DetailedFeatureUiModel.None.f61680b;
        }
        List list8 = product.p;
        if (list8 != null) {
            List list9 = list8;
            ArrayList arrayList14 = new ArrayList(CollectionsKt.t(list9, 10));
            Iterator it12 = list9.iterator();
            while (it12.hasNext()) {
                String str29 = ((SkuId) it12.next()).f67933a;
                SkuIdUiModel.f61763c.getClass();
                SkuIdUiModel.Companion.c(str29);
                arrayList14.add(new SkuIdUiModel(str29));
            }
            arrayList3 = arrayList14;
        } else {
            arrayList3 = null;
        }
        VirtualTryOn virtualTryOn = product.q;
        if (virtualTryOn != null) {
            virtualTryOnUiModel = new VirtualTryOnUiModel(TryOnProductMapperKt.a(virtualTryOn.f68036a));
            str4 = str19;
        } else {
            str4 = str19;
            virtualTryOnUiModel = null;
        }
        Edito edito = product.r;
        if (edito != null) {
            editoUiModel = new EditoUiModel(edito.f67981a, edito.f67982b, edito.f67983c, edito.d);
            str5 = str22;
        } else {
            str5 = str22;
            editoUiModel = null;
        }
        String str30 = product.s;
        String str31 = product.t;
        String str32 = product.u;
        String str33 = product.v;
        ImmutableList immutableList = immutableListA;
        String str34 = product.w;
        String str35 = product.x;
        String str36 = product.y;
        String str37 = product.z;
        String str38 = product.T;
        String str39 = product.A;
        Size size = product.B;
        SizeUiModel sizeUiModel = size != null ? new SizeUiModel(size.f68026a, size.f68027b) : null;
        Size size2 = product.C;
        SizeUiModel sizeUiModel2 = size2 != null ? new SizeUiModel(size2.f68026a, size2.f68027b) : null;
        Size size3 = product.D;
        SizeUiModel sizeUiModel3 = size3 != null ? new SizeUiModel(size3.f68026a, size3.f68027b) : null;
        boolean z3 = product.E;
        String str40 = product.Z;
        boolean z4 = product.F;
        boolean z5 = product.G;
        boolean z6 = product.H;
        boolean z7 = product.I;
        boolean z8 = product.K;
        boolean z9 = product.L;
        boolean z10 = product.M;
        boolean z11 = product.N;
        SellableStatus sellableStatus = product.O;
        sellableStatus.getClass();
        if (sellableStatus instanceof SellableStatus.Sellable) {
            notSellableUiModel = new SellableStatusUiModel.SellableUiModel(a(((SellableStatus.Sellable) sellableStatus).f68025a));
            sizeUiModel3 = sizeUiModel3;
            str6 = str5;
        } else {
            if (!(sellableStatus instanceof SellableStatus.NotSellable)) {
                v40.g();
                return null;
            }
            NotSellableReason notSellableReason = ((SellableStatus.NotSellable) sellableStatus).f68024a;
            notSellableReason.getClass();
            Price f68003a = notSellableReason.getF68003a();
            PriceUiModel priceUiModelA = f68003a != null ? a(f68003a) : null;
            if (notSellableReason instanceof NotSellableReason.NotECommerce) {
                str6 = str5;
                unavailableUiModel = new NotSellableReasonUiModel.NotECommerceUiModel(priceUiModelA, null, 2, null);
            } else {
                str6 = str5;
                if (notSellableReason instanceof NotSellableReason.WebOnly) {
                    unavailableUiModel = new NotSellableReasonUiModel.WebOnlyUiModel(priceUiModelA, null, 2, null);
                } else if (notSellableReason instanceof NotSellableReason.MandatoryCustomization) {
                    unavailableUiModel = new NotSellableReasonUiModel.MandatoryCustomizationUiModel(priceUiModelA, null, 2, null);
                } else {
                    if (!(notSellableReason instanceof NotSellableReason.Unavailable)) {
                        v40.g();
                        return null;
                    }
                    unavailableUiModel = new NotSellableReasonUiModel.UnavailableUiModel(priceUiModelA, null, 2, null);
                }
            }
            notSellableUiModel = new SellableStatusUiModel.NotSellableUiModel(unavailableUiModel);
        }
        ProductCustomization productCustomization = product.P;
        if (productCustomization != null) {
            Configuration configuration = productCustomization.f68020a;
            ConfigurationUiModel configurationUiModelB = configuration != null ? ProductCustomizationMapperKt.b(configuration) : null;
            Configuration configuration2 = productCustomization.f68021b;
            ConfigurationUiModel configurationUiModelB2 = configuration2 != null ? ProductCustomizationMapperKt.b(configuration2) : null;
            Configuration configuration3 = productCustomization.f68022c;
            ConfigurationUiModel configurationUiModelB3 = configuration3 != null ? ProductCustomizationMapperKt.b(configuration3) : null;
            Configuration configuration4 = productCustomization.d;
            ConfigurationUiModel configurationUiModelB4 = configuration4 != null ? ProductCustomizationMapperKt.b(configuration4) : null;
            Configuration configuration5 = productCustomization.f68023e;
            productCustomizationUiModel = new ProductCustomizationUiModel(configurationUiModelB, configurationUiModelB2, configurationUiModelB3, configurationUiModelB4, configuration5 != null ? ProductCustomizationMapperKt.b(configuration5) : null);
        } else {
            productCustomizationUiModel = null;
        }
        String str41 = product.S;
        List list10 = product.U;
        if (list10 != null) {
            List list11 = list10;
            SellableStatusUiModel sellableStatusUiModel2 = notSellableUiModel;
            ArrayList arrayList15 = new ArrayList(CollectionsKt.t(list11, 10));
            for (Iterator it13 = list11.iterator(); it13.hasNext(); it13 = it13) {
                Highlight highlight = (Highlight) it13.next();
                highlight.getClass();
                arrayList15.add(new HighlightUiModel(highlight.f67991a, highlight.f67992b, highlight.f67993c, AssetMapperKt.a(highlight.d), ContributionLinkUiModelKt.a(highlight.f67994e)));
            }
            sellableStatusUiModel = sellableStatusUiModel2;
            arrayList4 = arrayList15;
        } else {
            arrayList4 = null;
            sellableStatusUiModel = notSellableUiModel;
        }
        List list12 = product.V;
        list12.getClass();
        List list13 = list12;
        ArrayList arrayList16 = new ArrayList(CollectionsKt.t(list13, 10));
        for (Iterator it14 = list13.iterator(); it14.hasNext(); it14 = it14) {
            EditorialContent editorialContent = (EditorialContent) it14.next();
            editorialContent.getClass();
            arrayList16.add(new EditorialContentUiModel(editorialContent.f67984a, editorialContent.f67985b, editorialContent.f67986c, AssetMapperKt.b(editorialContent.d), ContributionLinkUiModelKt.a(editorialContent.f67987e)));
        }
        List list14 = product.W;
        ProductCustomizationUiModel productCustomizationUiModel2 = productCustomizationUiModel;
        ArrayList arrayList17 = new ArrayList(CollectionsKt.t(list14, 10));
        Iterator it15 = list14.iterator();
        while (it15.hasNext()) {
            ModelSizeVariation modelSizeVariation = (ModelSizeVariation) it15.next();
            modelSizeVariation.getClass();
            SkuIdUiModel.Companion companion4 = SkuIdUiModel.f61763c;
            Iterator it16 = it15;
            String str42 = modelSizeVariation.f67995a;
            companion4.getClass();
            String str43 = modelSizeVariation.f67996b;
            if (str43 != null) {
                ProductIdUiModel.f61731c.getClass();
                str7 = str43;
            } else {
                str7 = null;
            }
            String str44 = modelSizeVariation.f67997c;
            String str45 = modelSizeVariation.d;
            String str46 = modelSizeVariation.f67998e;
            List list15 = modelSizeVariation.f67999f;
            ArrayList arrayList18 = new ArrayList();
            Iterator it17 = list15.iterator();
            while (it17.hasNext()) {
                Iterator it18 = it17;
                Object next2 = it18.next();
                ArrayList arrayList19 = arrayList16;
                if (StringExtKt.a(((Wearing) next2).f68033a.f67108a)) {
                    arrayList18.add(next2);
                }
                it17 = it18;
                arrayList16 = arrayList19;
            }
            ArrayList arrayList20 = arrayList16;
            ArrayList arrayList21 = new ArrayList(CollectionsKt.t(arrayList18, 10));
            Iterator it19 = arrayList18.iterator();
            while (it19.hasNext()) {
                Wearing wearing = (Wearing) it19.next();
                wearing.getClass();
                arrayList21.add(new WearingUiModel(AssetMapperKt.a(wearing.f68033a), wearing.f68034b, wearing.f68035c));
                it19 = it19;
                str31 = str31;
            }
            arrayList17.add(new ModelSizeVariationUiModel(str42, str7, str44, str45, str46, arrayList21, null));
            it15 = it16;
            arrayList16 = arrayList20;
        }
        return new ProductUiModel(str18, str4, str6, str, str2, str3, productType, str14, arrayList, arrayList2, productBackground, linkedHashMap, productImageUiModel, immutableList, multiple, arrayList3, virtualTryOnUiModel, editoUiModel, str30, str31, str32, str33, str34, str35, str36, str37, str38, str39, sizeUiModel, sizeUiModel2, sizeUiModel3, z3, str40, z4, z5, z6, z7, z2, z8, z9, z10, z11, null, null, sellableStatusUiModel, productCustomizationUiModel2, str41, arrayList4, arrayList16, arrayList17, product.X, product.Y, product.a0, null);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0095  */
    public static final SizeGuideUiModel c(SizeGuide sizeGuide, String str) {
        String str2;
        String str3;
        String str4;
        HowToMeasureItemUiModel howToMeasureItemUiModel;
        String strConcat;
        sizeGuide.getClass();
        str.getClass();
        String str5 = sizeGuide.f68207a;
        String str6 = sizeGuide.f68208b;
        String str7 = sizeGuide.f68209c;
        List list = sizeGuide.d;
        List list2 = sizeGuide.f68210e;
        String str8 = sizeGuide.f68211f;
        String str9 = sizeGuide.g;
        Map map = sizeGuide.f68212h;
        Map map2 = sizeGuide.f68213i;
        String str10 = sizeGuide.f68214j;
        List<HowToMeasureItem> list3 = sizeGuide.f68215k;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list3, 10));
        for (HowToMeasureItem howToMeasureItem : list3) {
            howToMeasureItem.getClass();
            str.getClass();
            String str11 = howToMeasureItem.f68205a;
            String str12 = howToMeasureItem.f68206b;
            if (StringExtKt.a(str11)) {
                howToMeasureItemUiModel = new HowToMeasureItemUiModel(str11, str12);
                str2 = str5;
                str3 = str6;
            } else {
                try {
                    str2 = str5;
                    try {
                        URI uri = new URI(str);
                        str3 = str6;
                        try {
                            str4 = uri.getScheme() + "://" + uri.getHost();
                        } catch (Exception unused) {
                            str4 = "";
                        }
                    } catch (Exception unused2) {
                        str3 = str6;
                        str4 = "";
                        if (str11 != null) {
                            strConcat = null;
                        } else {
                            strConcat = null;
                        }
                        howToMeasureItemUiModel = new HowToMeasureItemUiModel(strConcat, str12);
                        arrayList.add(howToMeasureItemUiModel);
                        str5 = str2;
                        str6 = str3;
                    }
                } catch (Exception unused3) {
                    str2 = str5;
                }
                if (str11 != null || str11.length() == 0) {
                    strConcat = null;
                } else {
                    strConcat = str4.concat(str11);
                }
                howToMeasureItemUiModel = new HowToMeasureItemUiModel(strConcat, str12);
            }
            arrayList.add(howToMeasureItemUiModel);
            str5 = str2;
            str6 = str3;
        }
        return new SizeGuideUiModel(str5, str6, str7, list, list2, str8, str9, map, map2, str10, arrayList, sizeGuide.l);
    }
}
