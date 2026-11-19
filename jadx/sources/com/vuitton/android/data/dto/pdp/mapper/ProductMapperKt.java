package com.vuitton.android.data.dto.pdp.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.mapper.AssetMapperKt;
import com.vuitton.android.data.dto.linktype.ContributionLinkLegacyDto;
import com.vuitton.android.data.dto.linktype.LinkTypeDto;
import com.vuitton.android.data.dto.linktype.mapper.LinkTypeMapperKt;
import com.vuitton.android.data.dto.pdp.ColorInfoDto;
import com.vuitton.android.data.dto.pdp.ConfigurationDto;
import com.vuitton.android.data.dto.pdp.DigitalAssetProductDto;
import com.vuitton.android.data.dto.pdp.DimensionDto;
import com.vuitton.android.data.dto.pdp.DimensionsDto;
import com.vuitton.android.data.dto.pdp.EditoDto;
import com.vuitton.android.data.dto.pdp.EditorialContentDto;
import com.vuitton.android.data.dto.pdp.FinishVariationDto;
import com.vuitton.android.data.dto.pdp.HighlightDto;
import com.vuitton.android.data.dto.pdp.ModelSizeVariationDto;
import com.vuitton.android.data.dto.pdp.NotSellableReasonDto;
import com.vuitton.android.data.dto.pdp.PackagingVariationDto;
import com.vuitton.android.data.dto.pdp.PanelInformationDto;
import com.vuitton.android.data.dto.pdp.PriceDto;
import com.vuitton.android.data.dto.pdp.ProductBackgroundDto;
import com.vuitton.android.data.dto.pdp.ProductCharacteristicsDto;
import com.vuitton.android.data.dto.pdp.ProductCustomizationDto;
import com.vuitton.android.data.dto.pdp.ProductDetailDto;
import com.vuitton.android.data.dto.pdp.ProductDetailSectionDto;
import com.vuitton.android.data.dto.pdp.ProductDisclaimerDto;
import com.vuitton.android.data.dto.pdp.ProductDto;
import com.vuitton.android.data.dto.pdp.ProductSkuModelDto;
import com.vuitton.android.data.dto.pdp.SellableStatusDto;
import com.vuitton.android.data.dto.pdp.WearingDto;
import com.vuitton.android.data.dto.pdp.extension.CaratExtensionKt;
import com.vuitton.android.data.dto.product.virtualtryon.VirtualTryOnDto;
import com.vuitton.android.data.dto.product.vto.mapper.TryOnProductMapperKt;
import com.vuitton.android.data.exception.ProductException;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.product.PanelInformationType;
import com.vuitton.foundation.model.domain.model.product.ProductDisclaimer;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.universal.Configuration;
import com.vuitton.foundation.model.domain.model.product.universal.DetailedFeature;
import com.vuitton.foundation.model.domain.model.product.universal.DigitalAssetProduct;
import com.vuitton.foundation.model.domain.model.product.universal.Edito;
import com.vuitton.foundation.model.domain.model.product.universal.EditorialContent;
import com.vuitton.foundation.model.domain.model.product.universal.Highlight;
import com.vuitton.foundation.model.domain.model.product.universal.ModelSizeVariation;
import com.vuitton.foundation.model.domain.model.product.universal.NotSellableReason;
import com.vuitton.foundation.model.domain.model.product.universal.PackagingVariation;
import com.vuitton.foundation.model.domain.model.product.universal.PanelInfo;
import com.vuitton.foundation.model.domain.model.product.universal.Price;
import com.vuitton.foundation.model.domain.model.product.universal.Product;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import com.vuitton.foundation.model.domain.model.product.universal.ProductCustomization;
import com.vuitton.foundation.model.domain.model.product.universal.ProductType;
import com.vuitton.foundation.model.domain.model.product.universal.SellableStatus;
import com.vuitton.foundation.model.domain.model.product.universal.Size;
import com.vuitton.foundation.model.domain.model.product.universal.Variation;
import com.vuitton.foundation.model.domain.model.product.universal.VariationType;
import com.vuitton.foundation.model.domain.model.product.universal.Wearing;
import com.vuitton.foundation.model.domain.model.product.virtualtryon.VirtualTryOn;
import defpackage.aj0;
import defpackage.v40;
import defpackage.xm;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ProductMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f46306a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f46307b;

        static {
            int[] iArr = new int[VariationType.values().length];
            try {
                iArr[VariationType.FINISH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[VariationType.COLOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[VariationType.CARAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[VariationType.MODEL_SIZE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[VariationType.SIZE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[VariationType.MATERIAL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[VariationType.LANGUAGE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            f46306a = iArr;
            int[] iArr2 = new int[NotSellableReasonDto.values().length];
            try {
                iArr2[NotSellableReasonDto.NOT_ECOMMERCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[NotSellableReasonDto.WEB_ONLY.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[NotSellableReasonDto.MANDATORY_CUSTOMIZATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr2[NotSellableReasonDto.UNAVAILABLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused11) {
            }
            f46307b = iArr2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:184:0x040a  */
    /* JADX WARN: Code duplicated, block: B:205:0x0435  */
    /* JADX WARN: Code duplicated, block: B:206:0x043e  */
    /* JADX WARN: Code duplicated, block: B:25:0x008a A[PHI: r22
      0x008a: PHI (r22v7 com.vuitton.foundation.model.domain.model.product.PanelInformationType) = 
      (r22v4 com.vuitton.foundation.model.domain.model.product.PanelInformationType)
      (r22v5 com.vuitton.foundation.model.domain.model.product.PanelInformationType)
     binds: [B:24:0x0088, B:27:0x0099] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:289:0x0602  */
    /* JADX WARN: Code duplicated, block: B:290:0x0605  */
    /* JADX WARN: Code duplicated, block: B:293:0x0613  */
    /* JADX WARN: Code duplicated, block: B:294:0x0616  */
    /* JADX WARN: Code duplicated, block: B:296:0x061a  */
    /* JADX WARN: Code duplicated, block: B:297:0x062a  */
    /* JADX WARN: Code duplicated, block: B:299:0x0634  */
    /* JADX WARN: Code duplicated, block: B:300:0x0637  */
    /* JADX WARN: Code duplicated, block: B:302:0x063b  */
    /* JADX WARN: Code duplicated, block: B:303:0x0647  */
    /* JADX WARN: Code duplicated, block: B:305:0x064d  */
    /* JADX WARN: Code duplicated, block: B:306:0x0650  */
    /* JADX WARN: Code duplicated, block: B:308:0x0654  */
    /* JADX WARN: Code duplicated, block: B:309:0x0660  */
    /* JADX WARN: Code duplicated, block: B:312:0x068d  */
    /* JADX WARN: Code duplicated, block: B:314:0x0691  */
    /* JADX WARN: Code duplicated, block: B:315:0x069a  */
    /* JADX WARN: Code duplicated, block: B:317:0x06a0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:318:0x06a2  */
    /* JADX WARN: Code duplicated, block: B:320:0x06a8  */
    /* JADX WARN: Code duplicated, block: B:322:0x06ab  */
    /* JADX WARN: Code duplicated, block: B:324:0x06b6  */
    /* JADX WARN: Code duplicated, block: B:326:0x06b9  */
    /* JADX WARN: Code duplicated, block: B:328:0x06bc  */
    /* JADX WARN: Code duplicated, block: B:330:0x06bf  */
    /* JADX WARN: Code duplicated, block: B:332:0x06c3  */
    /* JADX WARN: Code duplicated, block: B:333:0x06c8  */
    /* JADX WARN: Code duplicated, block: B:335:0x06ce  */
    /* JADX WARN: Code duplicated, block: B:337:0x06d6  */
    /* JADX WARN: Code duplicated, block: B:339:0x06da  */
    /* JADX WARN: Code duplicated, block: B:340:0x06df  */
    /* JADX WARN: Code duplicated, block: B:342:0x06e5  */
    /* JADX WARN: Code duplicated, block: B:344:0x06e9  */
    /* JADX WARN: Code duplicated, block: B:345:0x06ee  */
    /* JADX WARN: Code duplicated, block: B:347:0x06f4  */
    /* JADX WARN: Code duplicated, block: B:349:0x06f8  */
    /* JADX WARN: Code duplicated, block: B:350:0x06fd  */
    /* JADX WARN: Code duplicated, block: B:355:0x070a  */
    /* JADX WARN: Code duplicated, block: B:358:0x0725 A[LOOP:14: B:356:0x071f->B:358:0x0725, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:359:0x0733  */
    /* JADX WARN: Code duplicated, block: B:361:0x073b  */
    /* JADX WARN: Code duplicated, block: B:364:0x0741  */
    /* JADX WARN: Code duplicated, block: B:365:0x0746  */
    /* JADX WARN: Code duplicated, block: B:368:0x074c  */
    /* JADX WARN: Code duplicated, block: B:370:0x0752  */
    /* JADX WARN: Code duplicated, block: B:371:0x0759  */
    /* JADX WARN: Code duplicated, block: B:374:0x075f  */
    /* JADX WARN: Code duplicated, block: B:375:0x0766  */
    /* JADX WARN: Code duplicated, block: B:378:0x076c  */
    /* JADX WARN: Code duplicated, block: B:379:0x0773  */
    /* JADX WARN: Code duplicated, block: B:382:0x0779  */
    /* JADX WARN: Code duplicated, block: B:383:0x0780  */
    /* JADX WARN: Code duplicated, block: B:386:0x0786  */
    /* JADX WARN: Code duplicated, block: B:387:0x078d  */
    /* JADX WARN: Code duplicated, block: B:389:0x0793  */
    /* JADX WARN: Code duplicated, block: B:392:0x0799  */
    /* JADX WARN: Code duplicated, block: B:395:0x07b4  */
    /* JADX WARN: Code duplicated, block: B:397:0x07d9  */
    /* JADX WARN: Code duplicated, block: B:399:0x07f0  */
    /* JADX WARN: Code duplicated, block: B:402:0x07f9  */
    /* JADX WARN: Code duplicated, block: B:405:0x0812  */
    /* JADX WARN: Code duplicated, block: B:407:0x0837  */
    /* JADX WARN: Code duplicated, block: B:409:0x084b  */
    /* JADX WARN: Code duplicated, block: B:411:0x0850  */
    /* JADX WARN: Code duplicated, block: B:415:0x086d  */
    /* JADX WARN: Code duplicated, block: B:418:0x08a9 A[LOOP:18: B:416:0x08a3->B:418:0x08a9, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:422:0x08ec  */
    /* JADX WARN: Code duplicated, block: B:423:0x08f1  */
    /* JADX WARN: Code duplicated, block: B:426:0x0966  */
    /* JADX WARN: Code duplicated, block: B:533:0x07db A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:536:0x0839 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r28v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r3v36 */
    /* JADX WARN: Type inference failed for: r3v37 */
    /* JADX WARN: Type inference failed for: r3v38 */
    /* JADX WARN: Type inference failed for: r3v39 */
    /* JADX WARN: Type inference failed for: r3v40 */
    /* JADX WARN: Type inference failed for: r3v5, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r3v54, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r3v55, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r3v59, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v60, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r3v67, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r43v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r7v15, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r7v18, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v22, types: [java.util.ArrayList] */
    public static final Product a(ProductDto productDto, List list, List list2) throws Exception {
        String str;
        String str2;
        List list3;
        ProductBackground productBackground;
        ?? arrayList;
        EmptyList emptyList;
        String str3;
        Object next;
        Object next2;
        ProductSkuModelDto productSkuModelDto;
        String str4;
        DimensionDto dimensionDto;
        Size size;
        DimensionDto dimensionDto2;
        Size size2;
        DimensionDto dimensionDto3;
        Size size3;
        boolean z;
        PriceDto priceDto;
        NotSellableReasonDto notSellableReasonDto;
        int i2;
        NotSellableReason notECommerce;
        Price priceA;
        SellableStatus notSellable;
        Price priceA2;
        Price priceA3;
        Price priceA4;
        List list4;
        ?? arrayList2;
        DigitalAssetProductDto digitalAssetProductDto;
        DigitalAssetProduct digitalAssetProductA;
        ProductCustomizationDto productCustomizationDto;
        ProductCustomization productCustomization;
        List list5;
        ArrayList arrayList3;
        List list6;
        ?? arrayList4;
        ArrayList arrayList5;
        Iterator it;
        AssetImageDto assetImageDto;
        String str5;
        ArrayList arrayList6;
        Iterator it2;
        Iterator it3;
        String str6;
        Iterator it4;
        String str7;
        ConfigurationDto configurationDto;
        Configuration configurationA;
        ConfigurationDto configurationDto2;
        Configuration configurationA2;
        ConfigurationDto configurationDto3;
        Configuration configurationA3;
        ConfigurationDto configurationDto4;
        Configuration configurationA4;
        ConfigurationDto configurationDto5;
        Configuration configurationA5;
        Iterator it5;
        String str8;
        List list7;
        Object next3;
        List list8;
        ?? O0;
        String strA;
        String str9;
        String str10;
        String str11;
        String str12;
        PanelInformationType panelInformationType;
        productDto.getClass();
        list.getClass();
        String str13 = productDto.f46276a;
        ProductCharacteristicsDto productCharacteristicsDto = productDto.v;
        List list9 = productDto.E;
        DimensionsDto dimensionsDto = productDto.r;
        List list10 = productDto.B;
        SellableStatusDto sellableStatusDto = productDto.G;
        String str14 = productDto.f46277b;
        PackagingVariation packagingVariation = Intrinsics.c(productDto.I, PackagingVariationDto.BABY.getValue()) ? PackagingVariation.BABY : null;
        String str15 = productDto.f46278c;
        String str16 = productDto.d;
        List list11 = productDto.C;
        ProductType productType = (list11 == null || !(list11.isEmpty() ^ true)) ? ProductType.PRODUCT : ProductType.LOOK;
        List list12 = list9;
        PackagingVariation packagingVariation2 = packagingVariation;
        String str17 = productDto.f46279e;
        ProductDisclaimerDto productDisclaimerDto = productDto.t;
        ProductDisclaimer productDisclaimerA = productDisclaimerDto != null ? ProductDisclaimersMapperKt.a(productDisclaimerDto) : null;
        String str18 = null;
        List list13 = productDto.F;
        if (list13 != null) {
            List list14 = list13;
            ArrayList arrayList7 = new ArrayList(CollectionsKt.t(list14, 10));
            Iterator it6 = list14.iterator();
            while (it6.hasNext()) {
                PanelInformationDto panelInformationDto = (PanelInformationDto) it6.next();
                Iterator it7 = it6;
                String str19 = panelInformationDto.f46229a;
                PanelInformationType panelInformationType2 = PanelInformationType.SUSTAINABILITY;
                String str20 = str14;
                if (Intrinsics.c(str19, panelInformationType2.getValue())) {
                    panelInformationType = panelInformationType2;
                } else {
                    panelInformationType2 = PanelInformationType.PRODUCT_CARE;
                    if (Intrinsics.c(str19, panelInformationType2.getValue())) {
                        panelInformationType = panelInformationType2;
                    } else {
                        panelInformationType = null;
                    }
                }
                arrayList7.add(new PanelInfo(panelInformationType, panelInformationDto.f46230b, panelInformationDto.f46231c, panelInformationDto.d));
                it6 = it7;
                str17 = str17;
                str14 = str20;
            }
            str = str14;
            str2 = str17;
            list3 = arrayList7;
        } else {
            str = str14;
            str2 = str17;
            list3 = EmptyList.f71768b;
        }
        ProductBackgroundDto productBackgroundDto = productDto.f46281h;
        int i3 = productBackgroundDto == null ? -1 : ProductBackgroundMapperKt$WhenMappings.f46304a[productBackgroundDto.ordinal()];
        if (i3 == -1 || i3 == 1) {
            productBackground = ProductBackground.DEFAULT;
        } else {
            if (i3 != 2) {
                v40.g();
                return null;
            }
            productBackground = ProductBackground.FLOOR;
        }
        List listO0 = CollectionsKt.o0(VariationType.a(), new Comparator() { // from class: com.vuitton.android.data.dto.pdp.mapper.ProductMapperKt$toDomain$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int i4;
                int[] iArr = ProductMapperKt.WhenMappings.f46306a;
                int i5 = iArr[((VariationType) obj).ordinal()];
                int i6 = 0;
                if (i5 != 1) {
                    i4 = i5 != 2 ? 2 : 1;
                } else {
                    i4 = 0;
                }
                Integer numValueOf = Integer.valueOf(i4);
                int i7 = iArr[((VariationType) obj2).ordinal()];
                if (i7 != 1) {
                    i6 = i7 != 2 ? 2 : 1;
                }
                return numValueOf.compareTo(Integer.valueOf(i6));
            }
        });
        int iG = MapsKt.g(CollectionsKt.t(listO0, 10));
        if (iG < 16) {
            iG = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iG);
        Iterator it8 = listO0.iterator();
        List list15 = list3;
        while (it8.hasNext()) {
            Object next4 = it8.next();
            List list16 = list15;
            VariationType variationType = (VariationType) next4;
            variationType.getClass();
            ProductBackground productBackground2 = productBackground;
            if (variationType == VariationType.FINISH) {
                List<FinishVariationDto> list17 = productDto.Q;
                ArrayList arrayList8 = new ArrayList(CollectionsKt.t(list17, 10));
                for (FinishVariationDto finishVariationDto : list17) {
                    arrayList8.add(new Variation(finishVariationDto.f46211a, finishVariationDto.f46212b, null, null, null, 28, null));
                }
                HashSet hashSet = new HashSet();
                O0 = new ArrayList();
                Iterator it9 = arrayList8.iterator();
                while (it9.hasNext()) {
                    Object next5 = it9.next();
                    Iterator it10 = it9;
                    if (hashSet.add(((Variation) next5).f68029b)) {
                        O0.add(next5);
                    }
                    it9 = it10;
                }
                str13 = str13;
                dimensionsDto = dimensionsDto;
                list8 = list12;
            } else {
                List list18 = list10;
                Iterator it11 = list18.iterator();
                while (true) {
                    if (it11.hasNext()) {
                        next3 = it11.next();
                        list7 = list18;
                        if (!Intrinsics.c(((ProductSkuModelDto) next3).f46286a, str13)) {
                            list18 = list7;
                        }
                    } else {
                        list7 = list18;
                        next3 = null;
                    }
                }
                ProductSkuModelDto productSkuModelDto2 = (ProductSkuModelDto) next3;
                if (productSkuModelDto2 == null) {
                    throw new Exception("Current SKU not found");
                }
                String str21 = productSkuModelDto2.f46293j;
                String str22 = productSkuModelDto2.f46291h;
                ColorInfoDto colorInfoDto = productSkuModelDto2.l;
                String str23 = productSkuModelDto2.g;
                String str24 = productSkuModelDto2.f46294k;
                list8 = list12;
                String str25 = productSkuModelDto2.f46290f;
                ArrayList arrayList9 = new ArrayList();
                if (variationType == VariationType.MODEL_SIZE) {
                    ArrayList arrayList10 = new ArrayList(CollectionsKt.t(list8, 10));
                    for (Iterator it12 = r6.iterator(); it12.hasNext(); it12 = it12) {
                        ModelSizeVariationDto modelSizeVariationDto = (ModelSizeVariationDto) it12.next();
                        arrayList10.add(Boolean.valueOf(arrayList9.add(new Variation(modelSizeVariationDto.f46223a, modelSizeVariationDto.f46225c, modelSizeVariationDto.d, null, null, 24, null))));
                    }
                }
                if (variationType == VariationType.MATERIAL) {
                    List list19 = productDto.D;
                    ArrayList arrayList11 = new ArrayList(CollectionsKt.t(list19, 10));
                    Iterator it13 = list19.iterator();
                    while (it13.hasNext()) {
                        ProductSkuModelDto productSkuModelDto3 = (ProductSkuModelDto) it13.next();
                        String str26 = productSkuModelDto3.f46286a;
                        Iterator it14 = it13;
                        String str27 = productSkuModelDto3.f46290f;
                        arrayList11.add(Boolean.valueOf(arrayList9.add(new Variation(str26, str27 == null ? "" : str27, productSkuModelDto3.d, null, null, 24, null))));
                        it13 = it14;
                    }
                    String str28 = productSkuModelDto2.f46286a;
                    if (str25 == null) {
                        String str29 = productCharacteristicsDto != null ? productCharacteristicsDto.f46256a : null;
                        str12 = str29 == null ? "" : str29;
                    } else {
                        str12 = str25;
                    }
                    arrayList9.add(new Variation(str28, str12, productSkuModelDto2.d, null, null, 24, null));
                }
                ArrayList<ProductSkuModelDto> arrayList12 = new ArrayList();
                for (Object obj : list7) {
                    ProductSkuModelDto productSkuModelDto4 = (ProductSkuModelDto) obj;
                    switch (WhenMappings.f46306a[variationType.ordinal()]) {
                        case 2:
                            if (productSkuModelDto4.l != null && Intrinsics.c(productSkuModelDto4.g, str23) && Intrinsics.c(productSkuModelDto4.f46291h, str22) && Intrinsics.c(productSkuModelDto4.f46290f, str25) && Intrinsics.c(productSkuModelDto4.f46293j, str21) && Intrinsics.c(productSkuModelDto4.f46294k, str24)) {
                                arrayList12.add(obj);
                            }
                            break;
                        case 3:
                            if (productSkuModelDto4.f46291h != null && Intrinsics.c(productSkuModelDto4.g, str23) && Intrinsics.c(productSkuModelDto4.l, colorInfoDto) && Intrinsics.c(productSkuModelDto4.f46290f, str25) && Intrinsics.c(productSkuModelDto4.f46293j, str21) && Intrinsics.c(productSkuModelDto4.f46294k, str24)) {
                                arrayList12.add(obj);
                            }
                            break;
                        case 4:
                        case 5:
                            if (productSkuModelDto4.g != null && Intrinsics.c(productSkuModelDto4.l, colorInfoDto) && Intrinsics.c(productSkuModelDto4.f46291h, str22) && Intrinsics.c(productSkuModelDto4.f46290f, str25) && Intrinsics.c(productSkuModelDto4.f46293j, str21) && Intrinsics.c(productSkuModelDto4.f46294k, str24)) {
                                arrayList12.add(obj);
                            }
                            break;
                        case 6:
                            if (productSkuModelDto4.f46290f != null && Intrinsics.c(productSkuModelDto4.g, str23) && Intrinsics.c(productSkuModelDto4.l, colorInfoDto) && Intrinsics.c(productSkuModelDto4.f46291h, str22) && Intrinsics.c(productSkuModelDto4.f46293j, str21) && Intrinsics.c(productSkuModelDto4.f46294k, str24)) {
                                arrayList12.add(obj);
                            }
                            break;
                        case 7:
                            if (productSkuModelDto4.f46293j != null && Intrinsics.c(productSkuModelDto4.g, str23) && Intrinsics.c(productSkuModelDto4.l, colorInfoDto) && Intrinsics.c(productSkuModelDto4.f46291h, str22) && Intrinsics.c(productSkuModelDto4.f46290f, str25) && Intrinsics.c(productSkuModelDto4.f46294k, str24)) {
                                arrayList12.add(obj);
                            }
                            break;
                    }
                }
                ArrayList arrayList13 = new ArrayList(CollectionsKt.t(arrayList12, 10));
                for (ProductSkuModelDto productSkuModelDto5 : arrayList12) {
                    String str30 = productSkuModelDto5.f46286a;
                    ColorInfoDto colorInfoDto2 = productSkuModelDto5.l;
                    switch (WhenMappings.f46306a[variationType.ordinal()]) {
                        case 1:
                            strA = productSkuModelDto5.f46294k;
                            if (strA == null) {
                                strA = "";
                            }
                            str9 = productSkuModelDto5.d;
                            if (colorInfoDto2 != null) {
                                str11 = colorInfoDto2.f46172b;
                                str10 = str9;
                            } else {
                                str10 = str9;
                                str11 = null;
                            }
                            arrayList13.add(new Variation(str30, strA, str10, str11, productSkuModelDto5.f46294k, null));
                            break;
                        case 2:
                            strA = colorInfoDto2 != null ? colorInfoDto2.f46171a : null;
                            if (strA == null) {
                                strA = "";
                            }
                            str9 = productSkuModelDto5.d;
                            if (colorInfoDto2 != null) {
                                str11 = colorInfoDto2.f46172b;
                                str10 = str9;
                            } else {
                                str10 = str9;
                                str11 = null;
                            }
                            arrayList13.add(new Variation(str30, strA, str10, str11, productSkuModelDto5.f46294k, null));
                            break;
                        case 3:
                            String str31 = productSkuModelDto5.f46291h;
                            if (str31 == null) {
                                str31 = "";
                            }
                            strA = CaratExtensionKt.a(str31);
                            str9 = productSkuModelDto5.d;
                            if (colorInfoDto2 != null) {
                                str11 = colorInfoDto2.f46172b;
                                str10 = str9;
                            } else {
                                str10 = str9;
                                str11 = null;
                            }
                            arrayList13.add(new Variation(str30, strA, str10, str11, productSkuModelDto5.f46294k, null));
                            break;
                        case 4:
                        case 5:
                            strA = productSkuModelDto5.g;
                            if (strA == null) {
                                strA = "";
                            }
                            str9 = productSkuModelDto5.d;
                            if (colorInfoDto2 != null) {
                                str11 = colorInfoDto2.f46172b;
                                str10 = str9;
                            } else {
                                str10 = str9;
                                str11 = null;
                            }
                            arrayList13.add(new Variation(str30, strA, str10, str11, productSkuModelDto5.f46294k, null));
                            break;
                        case 6:
                            strA = productSkuModelDto5.f46290f;
                            if (strA == null) {
                                strA = "";
                            }
                            str9 = productSkuModelDto5.d;
                            if (colorInfoDto2 != null) {
                                str11 = colorInfoDto2.f46172b;
                                str10 = str9;
                            } else {
                                str10 = str9;
                                str11 = null;
                            }
                            arrayList13.add(new Variation(str30, strA, str10, str11, productSkuModelDto5.f46294k, null));
                            break;
                        case 7:
                            strA = productSkuModelDto5.f46293j;
                            if (strA == null) {
                                strA = "";
                            }
                            str9 = productSkuModelDto5.d;
                            if (colorInfoDto2 != null) {
                                str11 = colorInfoDto2.f46172b;
                                str10 = str9;
                            } else {
                                str10 = str9;
                                str11 = null;
                            }
                            arrayList13.add(new Variation(str30, strA, str10, str11, productSkuModelDto5.f46294k, null));
                            break;
                        default:
                            v40.g();
                            return null;
                    }
                }
                arrayList9.addAll(arrayList13);
                HashSet hashSet2 = new HashSet();
                ArrayList arrayList14 = new ArrayList();
                for (Object obj2 : arrayList9) {
                    if (hashSet2.add(new SkuId(((Variation) obj2).f68028a))) {
                        arrayList14.add(obj2);
                    }
                }
                O0 = CollectionsKt.o0(arrayList14, new xm(new aj0(29), 2));
            }
            linkedHashMap.put(next4, O0);
            list15 = list16;
            productBackground = productBackground2;
            it8 = it8;
            str15 = str15;
            str16 = str16;
            productType = productType;
            list12 = list8;
            productDisclaimerA = productDisclaimerA;
            sellableStatusDto = sellableStatusDto;
            dimensionsDto = dimensionsDto;
            str13 = str13;
        }
        String str32 = str13;
        List list20 = list15;
        DimensionsDto dimensionsDto2 = dimensionsDto;
        ProductBackground productBackground3 = productBackground;
        SellableStatusDto sellableStatusDto2 = sellableStatusDto;
        String str33 = str15;
        String str34 = str16;
        ProductType productType2 = productType;
        List list21 = list12;
        ProductDisclaimer productDisclaimer = productDisclaimerA;
        List list22 = productDto.L;
        if (list22 != null) {
            List<ProductDetailDto> list23 = list22;
            arrayList = new ArrayList(CollectionsKt.t(list23, 10));
            for (ProductDetailDto productDetailDto : list23) {
                String str35 = productDetailDto.f46265a;
                String str36 = productDetailDto.f46266b;
                List<ProductDetailSectionDto> list24 = productDetailDto.f46267c;
                ArrayList arrayList15 = new ArrayList(CollectionsKt.t(list24, 10));
                for (ProductDetailSectionDto productDetailSectionDto : list24) {
                    productDetailSectionDto.getClass();
                    arrayList15.add(new DetailedFeature.ProductDetailSection(productDetailSectionDto.f46269a, AssetMapperKt.b(productDetailSectionDto.f46270b)));
                }
                arrayList.add(new DetailedFeature.DescriptionDetail(str35, str36, arrayList15));
            }
        } else {
            arrayList = EmptyList.f71768b;
        }
        boolean zIsEmpty = ((Collection) arrayList).isEmpty();
        String str37 = productDto.f46280f;
        DetailedFeature single = zIsEmpty ? str37 != null ? new DetailedFeature.Single(str37) : DetailedFeature.None.f67974a : new DetailedFeature.Multiple(str37, arrayList);
        EmptyList emptyList2 = EmptyList.f71768b;
        VirtualTryOnDto virtualTryOnDto = productDto.s;
        VirtualTryOn virtualTryOn = virtualTryOnDto != null ? new VirtualTryOn(TryOnProductMapperKt.a(virtualTryOnDto.f46497a)) : null;
        EditoDto editoDto = productDto.z;
        Edito edito = editoDto != null ? new Edito(editoDto.f46202a, editoDto.f46204c, editoDto.f46203b, editoDto.d) : null;
        ProductCharacteristicsDto productCharacteristicsDto2 = productDto.u;
        String str38 = productCharacteristicsDto2 != null ? productCharacteristicsDto2.f46256a : null;
        String str39 = productCharacteristicsDto2 != null ? productCharacteristicsDto2.f46258c : null;
        String str40 = productCharacteristicsDto != null ? productCharacteristicsDto.f46256a : null;
        ProductCharacteristicsDto productCharacteristicsDto3 = productDto.y;
        String str41 = productCharacteristicsDto3 != null ? productCharacteristicsDto3.f46256a : null;
        String str42 = productCharacteristicsDto != null ? productCharacteristicsDto.f46258c : null;
        String str43 = productCharacteristicsDto2 != null ? productCharacteristicsDto2.f46257b : null;
        ProductCharacteristicsDto productCharacteristicsDto4 = productDto.O;
        String str44 = productCharacteristicsDto4 != null ? productCharacteristicsDto4.f46256a : null;
        List list25 = list10;
        Iterator it15 = list25.iterator();
        while (true) {
            if (it15.hasNext()) {
                next = it15.next();
                String str45 = ((ProductSkuModelDto) next).f46286a;
                SkuId.Companion companion = SkuId.INSTANCE;
                emptyList = emptyList2;
                str3 = str32;
                if (!Intrinsics.c(str45, str3)) {
                    str32 = str3;
                    emptyList2 = emptyList;
                }
            } else {
                emptyList = emptyList2;
                str3 = str32;
                next = null;
            }
        }
        ProductSkuModelDto productSkuModelDto6 = (ProductSkuModelDto) next;
        String str46 = productSkuModelDto6 != null ? productSkuModelDto6.g : null;
        Iterator it16 = list25.iterator();
        do {
            if (it16.hasNext()) {
                next2 = it16.next();
                str8 = ((ProductSkuModelDto) next2).f46286a;
                SkuId.Companion companion2 = SkuId.INSTANCE;
            } else {
                next2 = null;
            }
            productSkuModelDto = (ProductSkuModelDto) next2;
            if (productSkuModelDto != null) {
                str4 = productSkuModelDto.f46291h;
            } else {
                str4 = null;
            }
            String strA2 = CaratExtensionKt.a(str4);
            String str47 = productDto.g;
            String str48 = str3;
            if (dimensionsDto2 != null) {
                dimensionDto = dimensionsDto2.f46199c;
            } else {
                dimensionDto = null;
            }
            if (dimensionDto != null) {
                size = new Size(dimensionDto.f46194a, dimensionDto.f46195b);
            } else {
                size = null;
            }
            if (dimensionsDto2 != null) {
                dimensionDto2 = dimensionsDto2.f46198b;
            } else {
                dimensionDto2 = null;
            }
            if (dimensionDto2 != null) {
                size2 = new Size(dimensionDto2.f46194a, dimensionDto2.f46195b);
            } else {
                size2 = null;
            }
            if (dimensionsDto2 != null) {
                dimensionDto3 = dimensionsDto2.f46197a;
            } else {
                dimensionDto3 = null;
            }
            if (dimensionDto3 != null) {
                size3 = new Size(dimensionDto3.f46194a, dimensionDto3.f46195b);
            } else {
                size3 = null;
            }
            boolean z2 = productDto.m;
            boolean z3 = productDto.f46283j;
            boolean z4 = !productDto.l;
            boolean z5 = productDto.f46284k;
            boolean z6 = productDto.f46282i;
            boolean z7 = productDto.p;
            boolean z8 = productDto.P;
            z = sellableStatusDto2.f46296a;
            priceDto = sellableStatusDto2.f46297b;
            if (z) {
                if (priceDto != null) {
                    throw new ProductException.NoPriceException();
                }
                notSellable = new SellableStatus.Sellable(PriceMapperKt.a(priceDto));
            } else {
                if (!z) {
                    v40.g();
                    return null;
                }
                notSellableReasonDto = sellableStatusDto2.f46298c;
                if (notSellableReasonDto == null) {
                    i2 = -1;
                } else {
                    i2 = WhenMappings.f46307b[notSellableReasonDto.ordinal()];
                }
                if (i2 != 1) {
                    if (priceDto != null) {
                        priceA = PriceMapperKt.a(priceDto);
                    } else {
                        priceA = null;
                    }
                    notECommerce = new NotSellableReason.NotECommerce(priceA);
                } else if (i2 != 2) {
                    if (priceDto != null) {
                        priceA2 = PriceMapperKt.a(priceDto);
                    } else {
                        priceA2 = null;
                    }
                    notECommerce = new NotSellableReason.WebOnly(priceA2);
                } else if (i2 != 3) {
                    if (priceDto != null) {
                        priceA3 = PriceMapperKt.a(priceDto);
                    } else {
                        priceA3 = null;
                    }
                    notECommerce = new NotSellableReason.MandatoryCustomization(priceA3);
                } else {
                    if (i2 == 4) {
                        throw new Exception("Invalid reason of not sellable product");
                    }
                    if (priceDto != null) {
                        priceA4 = PriceMapperKt.a(priceDto);
                    } else {
                        priceA4 = null;
                    }
                    notECommerce = new NotSellableReason.Unavailable(priceA4);
                }
                notSellable = new SellableStatus.NotSellable(notECommerce);
            }
            list4 = productDto.J;
            if (list4 != null) {
                List list26 = list4;
                arrayList2 = new ArrayList(CollectionsKt.t(list26, 10));
                it5 = list26.iterator();
                while (it5.hasNext()) {
                    arrayList2.add(DigitalAssetProductMapperKt.a((DigitalAssetProductDto) it5.next()));
                }
            } else {
                arrayList2 = 0;
            }
            if (arrayList2 == 0) {
                arrayList2 = EmptyList.f71768b;
            }
            digitalAssetProductDto = productDto.K;
            if (digitalAssetProductDto != null) {
                digitalAssetProductA = DigitalAssetProductMapperKt.a(digitalAssetProductDto);
            } else {
                digitalAssetProductA = null;
            }
            productCustomizationDto = productDto.H;
            if (productCustomizationDto != null) {
                configurationDto = productCustomizationDto.f46260a;
                if (configurationDto != null) {
                    configurationA = ProductCustomizationMapperKt.a(configurationDto);
                } else {
                    configurationA = null;
                }
                configurationDto2 = productCustomizationDto.f46261b;
                if (configurationDto2 != null) {
                    configurationA2 = ProductCustomizationMapperKt.a(configurationDto2);
                } else {
                    configurationA2 = null;
                }
                configurationDto3 = productCustomizationDto.f46262c;
                if (configurationDto3 != null) {
                    configurationA3 = ProductCustomizationMapperKt.a(configurationDto3);
                } else {
                    configurationA3 = null;
                }
                configurationDto4 = productCustomizationDto.d;
                if (configurationDto4 != null) {
                    configurationA4 = ProductCustomizationMapperKt.a(configurationDto4);
                } else {
                    configurationA4 = null;
                }
                configurationDto5 = productCustomizationDto.f46263e;
                if (configurationDto5 != null) {
                    configurationA5 = ProductCustomizationMapperKt.a(configurationDto5);
                } else {
                    configurationA5 = null;
                }
                productCustomization = new ProductCustomization(configurationA, configurationA2, configurationA3, configurationA4, configurationA5);
            } else {
                productCustomization = null;
            }
            list5 = productDto.M;
            if (list5 != null) {
                List list27 = list5;
                arrayList3 = new ArrayList(CollectionsKt.t(list27, 10));
                it4 = list27.iterator();
                while (it4.hasNext()) {
                    HighlightDto highlightDto = (HighlightDto) it4.next();
                    highlightDto.getClass();
                    String str49 = highlightDto.f46214a;
                    Iterator it17 = it4;
                    String str50 = highlightDto.f46215b;
                    String str51 = highlightDto.f46216c;
                    AssetImage assetImageB = AssetMapperKt.b(highlightDto.d);
                    ContributionLinkLegacyDto contributionLinkLegacyDto = highlightDto.f46217e;
                    LinkTypeDto linkTypeDto = contributionLinkLegacyDto.f46030a;
                    str7 = contributionLinkLegacyDto.f46031b;
                    if (str7 == null) {
                        str7 = "";
                    }
                    arrayList3.add(new Highlight(str49, str50, str51, assetImageB, LinkTypeMapperKt.a(linkTypeDto, str7, str18)));
                    it4 = it17;
                    str18 = null;
                }
            } else {
                arrayList3 = null;
            }
            list6 = productDto.N;
            if (list6 != null) {
                List list28 = list6;
                arrayList4 = new ArrayList(CollectionsKt.t(list28, 10));
                it3 = list28.iterator();
                while (it3.hasNext()) {
                    EditorialContentDto editorialContentDto = (EditorialContentDto) it3.next();
                    editorialContentDto.getClass();
                    String str52 = editorialContentDto.f46206a;
                    Iterator it18 = it3;
                    String str53 = editorialContentDto.f46207b;
                    String str54 = editorialContentDto.f46208c;
                    Asset assetA = AssetMapperKt.a(editorialContentDto.d);
                    ContributionLinkLegacyDto contributionLinkLegacyDto2 = editorialContentDto.f46209e;
                    LinkTypeDto linkTypeDto2 = contributionLinkLegacyDto2.f46030a;
                    str6 = contributionLinkLegacyDto2.f46031b;
                    if (str6 == null) {
                        str6 = "";
                    }
                    arrayList4.add(new EditorialContent(str52, str53, str54, assetA, LinkTypeMapperKt.a(linkTypeDto2, str6, null)));
                    it3 = it18;
                }
            } else {
                arrayList4 = 0;
            }
            if (arrayList4 == 0) {
                arrayList4 = EmptyList.f71768b;
            }
            List list29 = list21;
            ?? r28 = arrayList4;
            arrayList5 = new ArrayList(CollectionsKt.t(list29, 10));
            it = list29.iterator();
            while (it.hasNext()) {
                ModelSizeVariationDto modelSizeVariationDto2 = (ModelSizeVariationDto) it.next();
                modelSizeVariationDto2.getClass();
                String str55 = modelSizeVariationDto2.f46223a;
                Iterator it19 = it;
                String str56 = modelSizeVariationDto2.f46224b;
                String str57 = modelSizeVariationDto2.f46225c;
                String str58 = modelSizeVariationDto2.d;
                String str59 = modelSizeVariationDto2.f46227f.d;
                List list30 = modelSizeVariationDto2.f46226e;
                Size size4 = size;
                arrayList6 = new ArrayList(CollectionsKt.t(list30, 10));
                it2 = list30.iterator();
                while (it2.hasNext()) {
                    WearingDto wearingDto = (WearingDto) it2.next();
                    wearingDto.getClass();
                    arrayList6.add(new Wearing(AssetMapperKt.b(wearingDto.f46300a), wearingDto.f46301b, wearingDto.f46302c));
                    it2 = it2;
                    str38 = str38;
                }
                arrayList5.add(new ModelSizeVariation(str55, str56, str57, str58, str59, arrayList6, null));
                size = size4;
                it = it19;
            }
            Size size5 = size;
            String str60 = str38;
            assetImageDto = productDto.o;
            if (assetImageDto != null) {
                str5 = assetImageDto.f45241b;
            } else {
                str5 = null;
            }
            return new Product(str48, str, packagingVariation2, str33, null, str34, productType2, str2, productDisclaimer, list20, list2, productBackground3, linkedHashMap, list, single, emptyList, virtualTryOn, edito, str60, str39, str43, str44, str40, str42, str46, strA2, str47, size5, size2, size3, z2, z3, z4, z5, z6, z7, z8, false, false, false, notSellable, productCustomization, arrayList2, digitalAssetProductA, null, str41, arrayList3, r28, arrayList5, str5, productDto.R, productDto.n, productDto.S, 0, 4096, null);
        } while (!Intrinsics.c(str8, str3));
        productSkuModelDto = (ProductSkuModelDto) next2;
        if (productSkuModelDto != null) {
            str4 = productSkuModelDto.f46291h;
        } else {
            str4 = null;
        }
        String strA3 = CaratExtensionKt.a(str4);
        String str410 = productDto.g;
        String str411 = str3;
        if (dimensionsDto2 != null) {
            dimensionDto = dimensionsDto2.f46199c;
        } else {
            dimensionDto = null;
        }
        if (dimensionDto != null) {
            size = new Size(dimensionDto.f46194a, dimensionDto.f46195b);
        } else {
            size = null;
        }
        if (dimensionsDto2 != null) {
            dimensionDto2 = dimensionsDto2.f46198b;
        } else {
            dimensionDto2 = null;
        }
        if (dimensionDto2 != null) {
            size2 = new Size(dimensionDto2.f46194a, dimensionDto2.f46195b);
        } else {
            size2 = null;
        }
        if (dimensionsDto2 != null) {
            dimensionDto3 = dimensionsDto2.f46197a;
        } else {
            dimensionDto3 = null;
        }
        if (dimensionDto3 != null) {
            size3 = new Size(dimensionDto3.f46194a, dimensionDto3.f46195b);
        } else {
            size3 = null;
        }
        boolean z9 = productDto.m;
        boolean z10 = productDto.f46283j;
        boolean z11 = !productDto.l;
        boolean z12 = productDto.f46284k;
        boolean z13 = productDto.f46282i;
        boolean z14 = productDto.p;
        boolean z15 = productDto.P;
        z = sellableStatusDto2.f46296a;
        priceDto = sellableStatusDto2.f46297b;
        if (z) {
            if (priceDto != null) {
                throw new ProductException.NoPriceException();
            }
            notSellable = new SellableStatus.Sellable(PriceMapperKt.a(priceDto));
        } else {
            if (!z) {
                v40.g();
                return null;
            }
            notSellableReasonDto = sellableStatusDto2.f46298c;
            if (notSellableReasonDto == null) {
                i2 = -1;
            } else {
                i2 = WhenMappings.f46307b[notSellableReasonDto.ordinal()];
            }
            if (i2 != 1) {
                if (priceDto != null) {
                    priceA = PriceMapperKt.a(priceDto);
                } else {
                    priceA = null;
                }
                notECommerce = new NotSellableReason.NotECommerce(priceA);
            } else if (i2 != 2) {
                if (priceDto != null) {
                    priceA2 = PriceMapperKt.a(priceDto);
                } else {
                    priceA2 = null;
                }
                notECommerce = new NotSellableReason.WebOnly(priceA2);
            } else if (i2 != 3) {
                if (priceDto != null) {
                    priceA3 = PriceMapperKt.a(priceDto);
                } else {
                    priceA3 = null;
                }
                notECommerce = new NotSellableReason.MandatoryCustomization(priceA3);
            } else {
                if (i2 == 4) {
                    throw new Exception("Invalid reason of not sellable product");
                }
                if (priceDto != null) {
                    priceA4 = PriceMapperKt.a(priceDto);
                } else {
                    priceA4 = null;
                }
                notECommerce = new NotSellableReason.Unavailable(priceA4);
            }
            notSellable = new SellableStatus.NotSellable(notECommerce);
        }
        list4 = productDto.J;
        if (list4 != null) {
            List list210 = list4;
            arrayList2 = new ArrayList(CollectionsKt.t(list210, 10));
            it5 = list210.iterator();
            while (it5.hasNext()) {
                arrayList2.add(DigitalAssetProductMapperKt.a((DigitalAssetProductDto) it5.next()));
            }
        } else {
            arrayList2 = 0;
        }
        if (arrayList2 == 0) {
            arrayList2 = EmptyList.f71768b;
        }
        digitalAssetProductDto = productDto.K;
        if (digitalAssetProductDto != null) {
            digitalAssetProductA = DigitalAssetProductMapperKt.a(digitalAssetProductDto);
        } else {
            digitalAssetProductA = null;
        }
        productCustomizationDto = productDto.H;
        if (productCustomizationDto != null) {
            configurationDto = productCustomizationDto.f46260a;
            if (configurationDto != null) {
                configurationA = ProductCustomizationMapperKt.a(configurationDto);
            } else {
                configurationA = null;
            }
            configurationDto2 = productCustomizationDto.f46261b;
            if (configurationDto2 != null) {
                configurationA2 = ProductCustomizationMapperKt.a(configurationDto2);
            } else {
                configurationA2 = null;
            }
            configurationDto3 = productCustomizationDto.f46262c;
            if (configurationDto3 != null) {
                configurationA3 = ProductCustomizationMapperKt.a(configurationDto3);
            } else {
                configurationA3 = null;
            }
            configurationDto4 = productCustomizationDto.d;
            if (configurationDto4 != null) {
                configurationA4 = ProductCustomizationMapperKt.a(configurationDto4);
            } else {
                configurationA4 = null;
            }
            configurationDto5 = productCustomizationDto.f46263e;
            if (configurationDto5 != null) {
                configurationA5 = ProductCustomizationMapperKt.a(configurationDto5);
            } else {
                configurationA5 = null;
            }
            productCustomization = new ProductCustomization(configurationA, configurationA2, configurationA3, configurationA4, configurationA5);
        } else {
            productCustomization = null;
        }
        list5 = productDto.M;
        if (list5 != null) {
            List list211 = list5;
            arrayList3 = new ArrayList(CollectionsKt.t(list211, 10));
            it4 = list211.iterator();
            while (it4.hasNext()) {
                HighlightDto highlightDto2 = (HighlightDto) it4.next();
                highlightDto2.getClass();
                String str412 = highlightDto2.f46214a;
                Iterator it110 = it4;
                String str510 = highlightDto2.f46215b;
                String str511 = highlightDto2.f46216c;
                AssetImage assetImageB2 = AssetMapperKt.b(highlightDto2.d);
                ContributionLinkLegacyDto contributionLinkLegacyDto3 = highlightDto2.f46217e;
                LinkTypeDto linkTypeDto3 = contributionLinkLegacyDto3.f46030a;
                str7 = contributionLinkLegacyDto3.f46031b;
                if (str7 == null) {
                    str7 = "";
                }
                arrayList3.add(new Highlight(str412, str510, str511, assetImageB2, LinkTypeMapperKt.a(linkTypeDto3, str7, str18)));
                it4 = it110;
                str18 = null;
            }
        } else {
            arrayList3 = null;
        }
        list6 = productDto.N;
        if (list6 != null) {
            List list212 = list6;
            arrayList4 = new ArrayList(CollectionsKt.t(list212, 10));
            it3 = list212.iterator();
            while (it3.hasNext()) {
                EditorialContentDto editorialContentDto2 = (EditorialContentDto) it3.next();
                editorialContentDto2.getClass();
                String str512 = editorialContentDto2.f46206a;
                Iterator it111 = it3;
                String str513 = editorialContentDto2.f46207b;
                String str514 = editorialContentDto2.f46208c;
                Asset assetA2 = AssetMapperKt.a(editorialContentDto2.d);
                ContributionLinkLegacyDto contributionLinkLegacyDto4 = editorialContentDto2.f46209e;
                LinkTypeDto linkTypeDto4 = contributionLinkLegacyDto4.f46030a;
                str6 = contributionLinkLegacyDto4.f46031b;
                if (str6 == null) {
                    str6 = "";
                }
                arrayList4.add(new EditorialContent(str512, str513, str514, assetA2, LinkTypeMapperKt.a(linkTypeDto4, str6, null)));
                it3 = it111;
            }
        } else {
            arrayList4 = 0;
        }
        if (arrayList4 == 0) {
            arrayList4 = EmptyList.f71768b;
        }
        List list213 = list21;
        ?? r29 = arrayList4;
        arrayList5 = new ArrayList(CollectionsKt.t(list213, 10));
        it = list213.iterator();
        while (it.hasNext()) {
            ModelSizeVariationDto modelSizeVariationDto3 = (ModelSizeVariationDto) it.next();
            modelSizeVariationDto3.getClass();
            String str515 = modelSizeVariationDto3.f46223a;
            Iterator it112 = it;
            String str516 = modelSizeVariationDto3.f46224b;
            String str517 = modelSizeVariationDto3.f46225c;
            String str518 = modelSizeVariationDto3.d;
            String str519 = modelSizeVariationDto3.f46227f.d;
            List list31 = modelSizeVariationDto3.f46226e;
            Size size6 = size;
            arrayList6 = new ArrayList(CollectionsKt.t(list31, 10));
            it2 = list31.iterator();
            while (it2.hasNext()) {
                WearingDto wearingDto2 = (WearingDto) it2.next();
                wearingDto2.getClass();
                arrayList6.add(new Wearing(AssetMapperKt.b(wearingDto2.f46300a), wearingDto2.f46301b, wearingDto2.f46302c));
                it2 = it2;
                str38 = str38;
            }
            arrayList5.add(new ModelSizeVariation(str515, str516, str517, str518, str519, arrayList6, null));
            size = size6;
            it = it112;
        }
        Size size7 = size;
        String str61 = str38;
        assetImageDto = productDto.o;
        if (assetImageDto != null) {
            str5 = assetImageDto.f45241b;
        } else {
            str5 = null;
        }
        return new Product(str411, str, packagingVariation2, str33, null, str34, productType2, str2, productDisclaimer, list20, list2, productBackground3, linkedHashMap, list, single, emptyList, virtualTryOn, edito, str61, str39, str43, str44, str40, str42, str46, strA3, str410, size7, size2, size3, z9, z10, z11, z12, z13, z14, z15, false, false, false, notSellable, productCustomization, arrayList2, digitalAssetProductA, null, str41, arrayList3, r29, arrayList5, str5, productDto.R, productDto.n, productDto.S, 0, 4096, null);
    }
}
