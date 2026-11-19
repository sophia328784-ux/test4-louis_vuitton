package com.vuitton.android.presentation.screen.immersivearticle.models;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import com.vuitton.android.presentation.common.editorial.mapper.EditorialModuleUiModelMapperKt;
import com.vuitton.android.presentation.common.editorial.models.LiveFormatUiModel;
import com.vuitton.android.presentation.common.editorial.models.LiveInfoUiModel;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModelKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.model.common.mapper.AssetMapperKt;
import com.vuitton.android.presentation.model.common.mapper.ProductTinyMapperKt;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerItemUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.common.AssetVideo;
import com.vuitton.foundation.model.domain.model.common.LiveVideoStatus;
import com.vuitton.foundation.model.domain.model.common.Sound;
import com.vuitton.foundation.model.domain.model.common.editorial.LiveFormat;
import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import com.vuitton.foundation.model.domain.model.immersivearticle.AssetArticleSection;
import com.vuitton.foundation.model.domain.model.immersivearticle.CarouselArticleSection;
import com.vuitton.foundation.model.domain.model.immersivearticle.CtaListArticleSection;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticle3dSection;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleAsset;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleAuthenticationSection;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleBanner;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleCta;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleDisclaimer;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleEventContent;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleEventSection;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleExpansionList;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleExpansionPanel;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleFashionShowContent;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleFashionShowSection;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleFont;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleLookCard;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticlePage;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleProductDisplayStyle;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleProductImageStyle;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleProductListData;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleProductListSection;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleProductTabs;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleProductTabsSection;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleSection;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleSizeCard;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleSlide;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleSliderSection;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleTextModuleAlignment;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleTextModuleType;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleTitles;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleVideo;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveAudio;
import com.vuitton.foundation.model.domain.model.immersivearticle.LookSkuType;
import com.vuitton.foundation.model.domain.model.immersivearticle.ProductsArticleSection;
import com.vuitton.foundation.model.domain.model.immersivearticle.SectionTheme;
import com.vuitton.foundation.model.domain.model.immersivearticle.TextArticleSection;
import com.vuitton.foundation.model.domain.model.immersivearticle.VideoArticleSection;
import com.vuitton.foundation.model.domain.model.immersivearticle.VideoCtaArticleSection;
import com.vuitton.foundation.model.domain.model.immersivearticle.WallpaperArticleSection;
import com.vuitton.foundation.model.domain.model.producttiny.ProductTiny;
import com.vuitton.foundation.util.StringKtExtKt;
import defpackage.v40;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ImmersiveArticleMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f58686a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f58687b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f58688c;
        public static final /* synthetic */ int[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final /* synthetic */ int[] f58689e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final /* synthetic */ int[] f58690f;
        public static final /* synthetic */ int[] g;

        static {
            int[] iArr = new int[LookSkuType.values().length];
            try {
                iArr[LookSkuType.PRODUCT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LookSkuType.LOOK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f58686a = iArr;
            int[] iArr2 = new int[ImmersiveArticleTextModuleType.values().length];
            try {
                iArr2[ImmersiveArticleTextModuleType.CITATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[ImmersiveArticleTextModuleType.PARAGRAPH.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            f58687b = iArr2;
            int[] iArr3 = new int[ImmersiveArticleTextModuleAlignment.values().length];
            try {
                iArr3[ImmersiveArticleTextModuleAlignment.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr3[ImmersiveArticleTextModuleAlignment.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr3[ImmersiveArticleTextModuleAlignment.LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            f58688c = iArr3;
            int[] iArr4 = new int[ImmersiveArticleProductImageStyle.values().length];
            try {
                iArr4[ImmersiveArticleProductImageStyle.REGULAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr4[ImmersiveArticleProductImageStyle.MARIE_LOUISE.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            d = iArr4;
            int[] iArr5 = new int[ImmersiveArticleProductDisplayStyle.values().length];
            try {
                iArr5[ImmersiveArticleProductDisplayStyle.FULL_DETAILS.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr5[ImmersiveArticleProductDisplayStyle.IMAGE_ONLY.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
            f58689e = iArr5;
            int[] iArr6 = new int[ImmersiveArticleFont.values().length];
            try {
                iArr6[ImmersiveArticleFont.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr6[ImmersiveArticleFont.HANLEY_PRO.ordinal()] = 2;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr6[ImmersiveArticleFont.ANGLAISE_F.ordinal()] = 3;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr6[ImmersiveArticleFont.COND.ordinal()] = 4;
            } catch (NoSuchFieldError unused15) {
            }
            f58690f = iArr6;
            int[] iArr7 = new int[ImmersiveArticleSizeCard.values().length];
            try {
                iArr7[ImmersiveArticleSizeCard.FULLSCREEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr7[ImmersiveArticleSizeCard.RATIO_16_9.ordinal()] = 2;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr7[ImmersiveArticleSizeCard.RATIO_9_16.ordinal()] = 3;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr7[ImmersiveArticleSizeCard.RATIO_2_3.ordinal()] = 4;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr7[ImmersiveArticleSizeCard.RATIO_4_5.ordinal()] = 5;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr7[ImmersiveArticleSizeCard.RATIO_1_1.ordinal()] = 6;
            } catch (NoSuchFieldError unused21) {
            }
            g = iArr7;
        }
    }

    public static final ImmersiveArticleCtaUiModel a(ImmersiveArticleCta immersiveArticleCta) {
        String str = immersiveArticleCta.f67638a;
        ContributionLinkUiModel contributionLinkUiModelA = ContributionLinkUiModelKt.a(immersiveArticleCta.f67639b);
        SectionTheme sectionTheme = immersiveArticleCta.f67640c;
        return new ImmersiveArticleCtaUiModel(str, contributionLinkUiModelA, sectionTheme != null ? new SectionThemeUiModel(sectionTheme.f67724a, sectionTheme.f67725b) : null);
    }

    public static final ImmersiveArticleFontUiModel b(ImmersiveArticleFont immersiveArticleFont) {
        int i2 = WhenMappings.f58690f[immersiveArticleFont.ordinal()];
        if (i2 == 1) {
            return ImmersiveArticleFontUiModel.DEFAULT;
        }
        if (i2 == 2) {
            return ImmersiveArticleFontUiModel.HANLEY_PRO;
        }
        if (i2 == 3) {
            return ImmersiveArticleFontUiModel.ANGLAISE_F;
        }
        if (i2 == 4) {
            return ImmersiveArticleFontUiModel.COND;
        }
        v40.g();
        return null;
    }

    public static final ImmersiveArticleLookCardUiModel c(ImmersiveArticleLookCard immersiveArticleLookCard) {
        LookSkuTypeUiModel lookSkuTypeUiModel;
        immersiveArticleLookCard.getClass();
        String str = immersiveArticleLookCard.f67670a;
        String str2 = immersiveArticleLookCard.f67671b;
        String str3 = immersiveArticleLookCard.f67672c;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        String str4 = immersiveArticleLookCard.d;
        companion.getClass();
        LookSkuType lookSkuType = immersiveArticleLookCard.f67673e;
        ArrayList arrayList = null;
        if (lookSkuType != null) {
            int i2 = WhenMappings.f58686a[lookSkuType.ordinal()];
            if (i2 == 1) {
                lookSkuTypeUiModel = LookSkuTypeUiModel.PRODUCT;
            } else {
                if (i2 != 2) {
                    v40.g();
                    return null;
                }
                lookSkuTypeUiModel = LookSkuTypeUiModel.LOOK;
            }
        } else {
            lookSkuTypeUiModel = null;
        }
        List list = immersiveArticleLookCard.f67674f;
        if (list != null) {
            List list2 = list;
            arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(AssetMapperKt.b((Asset) it.next()));
            }
        }
        return new ImmersiveArticleLookCardUiModel(str, str2, str3, str4, lookSkuTypeUiModel, arrayList, immersiveArticleLookCard.g, null);
    }

    public static final ImmersiveArticleSizeCardUiModel d(ImmersiveArticleSizeCard immersiveArticleSizeCard) {
        switch (WhenMappings.g[immersiveArticleSizeCard.ordinal()]) {
            case 1:
                return ImmersiveArticleSizeCardUiModel.FULLSCREEN;
            case 2:
                return ImmersiveArticleSizeCardUiModel.RATIO_16_9;
            case 3:
                return ImmersiveArticleSizeCardUiModel.RATIO_9_16;
            case 4:
                return ImmersiveArticleSizeCardUiModel.RATIO_2_3;
            case 5:
                return ImmersiveArticleSizeCardUiModel.RATIO_4_5;
            case 6:
                return ImmersiveArticleSizeCardUiModel.RATIO_1_1;
            default:
                v40.g();
                return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final ImmersiveArticleUiModel e(ImmersiveArticlePage immersiveArticlePage) {
        String str;
        String str2;
        AudioPlayerItemUiModel audioPlayerItemUiModel;
        SnapshotStateList snapshotStateList;
        AudioPlayerItemUiModel audioPlayerItemUiModel2;
        ImmersiveArticleBannerUiModel immersiveArticleBannerUiModel;
        String str3;
        Iterator it;
        char c2;
        ImmersiveArticleSectionUiModel immersiveArticleAuthenticationSectionUiModel;
        ImmersiveArticleSectionUiModel immersiveArticleEventSectionUiModel;
        LiveFormatUiModel liveFormatUiModel;
        Instant instant;
        ImmersiveArticleProductImageStyleUiModel immersiveArticleProductImageStyleUiModel;
        ImmersiveArticleProductDisplayStyleUiModel immersiveArticleProductDisplayStyleUiModel;
        ImmersiveArticleSectionUiModel videoCtaArticleSectionUiModel;
        ImmersiveArticleTextModuleTypeUiModel immersiveArticleTextModuleTypeUiModel;
        ImmersiveArticleTextModuleAlignmentUiModel immersiveArticleTextModuleAlignmentUiModel;
        ArrayList arrayList;
        ImmersiveArticleDisclaimerUiModel immersiveArticleDisclaimerUiModel;
        ArrayList arrayList2;
        ImmersiveArticleProductImageStyleUiModel immersiveArticleProductImageStyleUiModel2;
        ImmersiveArticleProductDisplayStyleUiModel immersiveArticleProductDisplayStyleUiModel2;
        ProductsArticleSectionUiModel.ProductInfoUiModel productInfoUiModel;
        String str4;
        immersiveArticlePage.getClass();
        String str5 = immersiveArticlePage.f67675a;
        String str6 = immersiveArticlePage.f67676b;
        List list = immersiveArticlePage.f67677c;
        if (list != null) {
            List list2 = list;
            ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                ImmersiveArticleSection immersiveArticleSection = (ImmersiveArticleSection) it2.next();
                immersiveArticleSection.getClass();
                if (immersiveArticleSection instanceof AssetArticleSection) {
                    AssetArticleSection assetArticleSection = (AssetArticleSection) immersiveArticleSection;
                    String str7 = assetArticleSection.f67611a;
                    String str8 = assetArticleSection.f67612b;
                    String str9 = assetArticleSection.f67613c;
                    ImmersiveArticleFontUiModel immersiveArticleFontUiModelB = b(assetArticleSection.d);
                    String str10 = assetArticleSection.f67614e;
                    ImmersiveArticleFontUiModel immersiveArticleFontUiModelB2 = b(assetArticleSection.f67615f);
                    ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModelD = d(assetArticleSection.g);
                    Asset asset = assetArticleSection.f67616h;
                    AssetUiModel assetUiModelB = asset != null ? AssetMapperKt.b(asset) : null;
                    boolean z = assetArticleSection.f67617i;
                    SectionTheme sectionTheme = assetArticleSection.f67618j;
                    immersiveArticleAuthenticationSectionUiModel = new AssetArticleSectionUiModel(str7, str8, str9, immersiveArticleFontUiModelB, str10, immersiveArticleFontUiModelB2, immersiveArticleSizeCardUiModelD, assetUiModelB, z, sectionTheme != null ? new SectionThemeUiModel(sectionTheme.f67724a, sectionTheme.f67725b) : null);
                } else {
                    str5 = str5;
                    if (immersiveArticleSection instanceof CarouselArticleSection) {
                        CarouselArticleSection carouselArticleSection = (CarouselArticleSection) immersiveArticleSection;
                        String str11 = carouselArticleSection.f67619a;
                        String str12 = carouselArticleSection.f67620b;
                        ImmersiveArticleSizeCard immersiveArticleSizeCard = carouselArticleSection.f67621c;
                        ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModelD2 = immersiveArticleSizeCard != null ? d(immersiveArticleSizeCard) : null;
                        SectionTheme sectionTheme2 = carouselArticleSection.f67622e;
                        SectionThemeUiModel sectionThemeUiModel = sectionTheme2 != null ? new SectionThemeUiModel(sectionTheme2.f67724a, sectionTheme2.f67725b) : null;
                        List<ImmersiveArticleAsset> list3 = carouselArticleSection.d;
                        ArrayList arrayList4 = new ArrayList(CollectionsKt.t(list3, 10));
                        for (ImmersiveArticleAsset immersiveArticleAsset : list3) {
                            AssetImage assetImage = immersiveArticleAsset.f67629a;
                            AssetImageUiModel assetImageUiModelA = assetImage != null ? AssetMapperKt.a(assetImage) : null;
                            AssetVideo assetVideo = immersiveArticleAsset.f67630b;
                            AssetVideoUiModel assetVideoUiModelC = assetVideo != null ? AssetMapperKt.c(assetVideo) : null;
                            String str13 = immersiveArticleAsset.f67631c;
                            ImmersiveArticleSizeCard immersiveArticleSizeCard2 = immersiveArticleAsset.d;
                            arrayList4.add(new ImmersiveArticleAssetUiModel(assetImageUiModelA, assetVideoUiModelC, str13, immersiveArticleSizeCard2 != null ? d(immersiveArticleSizeCard2) : null));
                        }
                        SnapshotStateList snapshotStateList2 = new SnapshotStateList();
                        snapshotStateList2.addAll(arrayList4);
                        immersiveArticleAuthenticationSectionUiModel = new CarouselArticleSectionUiModel(str11, str12, immersiveArticleSizeCardUiModelD2, snapshotStateList2, sectionThemeUiModel);
                    } else if (immersiveArticleSection instanceof CtaListArticleSection) {
                        CtaListArticleSection ctaListArticleSection = (CtaListArticleSection) immersiveArticleSection;
                        String str14 = ctaListArticleSection.f67623a;
                        String str15 = ctaListArticleSection.f67624b;
                        List<Pair> list4 = ctaListArticleSection.f67625c;
                        ArrayList arrayList5 = new ArrayList(CollectionsKt.t(list4, 10));
                        for (Pair pair : list4) {
                            arrayList5.add(new Pair(pair.f71705b, ContributionLinkUiModelKt.a((ContributionLink) pair.f71706c)));
                        }
                        SectionTheme sectionTheme3 = ctaListArticleSection.d;
                        SectionThemeUiModel sectionThemeUiModel2 = sectionTheme3 != null ? new SectionThemeUiModel(sectionTheme3.f67724a, sectionTheme3.f67725b) : null;
                        SectionTheme sectionTheme4 = ctaListArticleSection.f67626e;
                        immersiveArticleAuthenticationSectionUiModel = new CtaListArticleSectionUiModel(str14, str15, arrayList5, sectionThemeUiModel2, sectionTheme4 != null ? new SectionThemeUiModel(sectionTheme4.f67724a, sectionTheme4.f67725b) : null);
                    } else if (immersiveArticleSection instanceof ImmersiveArticle3dSection) {
                        ImmersiveArticle3dSection immersiveArticle3dSection = (ImmersiveArticle3dSection) immersiveArticleSection;
                        String str16 = immersiveArticle3dSection.f67627a;
                        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                        String str17 = immersiveArticle3dSection.f67628b;
                        companion.getClass();
                        SkuIdUiModel.Companion.c(str17);
                        immersiveArticleAuthenticationSectionUiModel = new ImmersiveArticle3dSectionUiModel(str16, str17, null);
                    } else if (immersiveArticleSection instanceof ProductsArticleSection) {
                        ProductsArticleSection productsArticleSection = (ProductsArticleSection) immersiveArticleSection;
                        String str18 = productsArticleSection.f67712a;
                        List list5 = productsArticleSection.f67713b;
                        if (list5 != null) {
                            List<ProductsArticleSection.Product> list6 = list5;
                            ArrayList arrayList6 = new ArrayList(CollectionsKt.t(list6, 10));
                            for (ProductsArticleSection.Product product : list6) {
                                SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
                                String str19 = product.f67717a;
                                companion2.getClass();
                                SkuIdUiModel.Companion.c(str19);
                                Asset asset2 = product.f67718b;
                                AssetUiModel assetUiModelB2 = asset2 != null ? AssetMapperKt.b(asset2) : null;
                                ProductsArticleSection.ProductInfo productInfo = product.f67719c;
                                if (productInfo != null) {
                                    String str20 = productInfo.f67721b;
                                    String str21 = productInfo.f67720a;
                                    if (str21 != null) {
                                        ProductIdUiModel.f61731c.getClass();
                                        str4 = str21;
                                    } else {
                                        str4 = null;
                                    }
                                    productInfoUiModel = new ProductsArticleSectionUiModel.ProductInfoUiModel(str4, str20, productInfo.f67722c, productInfo.d, productInfo.f67723e, false, 32, null);
                                } else {
                                    productInfoUiModel = null;
                                }
                                arrayList6.add(new ProductsArticleSectionUiModel.ImmersiveProductUiModel(str19, assetUiModelB2, productInfoUiModel, null));
                            }
                            arrayList2 = arrayList6;
                        } else {
                            arrayList2 = null;
                        }
                        SectionTheme sectionTheme5 = productsArticleSection.f67715e;
                        SectionThemeUiModel sectionThemeUiModel3 = sectionTheme5 != null ? new SectionThemeUiModel(sectionTheme5.f67724a, sectionTheme5.f67725b) : null;
                        int i2 = WhenMappings.d[productsArticleSection.f67714c.ordinal()];
                        if (i2 == 1) {
                            immersiveArticleProductImageStyleUiModel2 = ImmersiveArticleProductImageStyleUiModel.REGULAR;
                        } else {
                            if (i2 != 2) {
                                v40.g();
                                return null;
                            }
                            immersiveArticleProductImageStyleUiModel2 = ImmersiveArticleProductImageStyleUiModel.MARIE_LOUISE;
                        }
                        ImmersiveArticleProductImageStyleUiModel immersiveArticleProductImageStyleUiModel3 = immersiveArticleProductImageStyleUiModel2;
                        int i3 = WhenMappings.f58689e[productsArticleSection.d.ordinal()];
                        if (i3 == 1) {
                            immersiveArticleProductDisplayStyleUiModel2 = ImmersiveArticleProductDisplayStyleUiModel.FULL_DETAILS;
                        } else {
                            if (i3 != 2) {
                                v40.g();
                                return null;
                            }
                            immersiveArticleProductDisplayStyleUiModel2 = ImmersiveArticleProductDisplayStyleUiModel.IMAGE_ONLY;
                        }
                        ImmersiveArticleProductDisplayStyleUiModel immersiveArticleProductDisplayStyleUiModel3 = immersiveArticleProductDisplayStyleUiModel2;
                        ImmersiveArticleSizeCard immersiveArticleSizeCard3 = productsArticleSection.f67716f;
                        immersiveArticleAuthenticationSectionUiModel = new ProductsArticleSectionUiModel(str18, arrayList2, immersiveArticleProductImageStyleUiModel3, immersiveArticleProductDisplayStyleUiModel3, sectionThemeUiModel3, immersiveArticleSizeCard3 != null ? d(immersiveArticleSizeCard3) : null);
                    } else {
                        if (immersiveArticleSection instanceof TextArticleSection) {
                            TextArticleSection textArticleSection = (TextArticleSection) immersiveArticleSection;
                            String str22 = textArticleSection.f67726a;
                            String str23 = textArticleSection.f67727b;
                            String str24 = textArticleSection.f67728c;
                            ImmersiveArticleFontUiModel immersiveArticleFontUiModelB3 = b(textArticleSection.d);
                            String str25 = textArticleSection.f67729e;
                            ImmersiveArticleFontUiModel immersiveArticleFontUiModelB4 = b(textArticleSection.f67730f);
                            String str26 = textArticleSection.g;
                            ImmersiveArticleFontUiModel immersiveArticleFontUiModelB5 = b(textArticleSection.f67731h);
                            ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModelD3 = d(textArticleSection.f67732i);
                            int i4 = WhenMappings.f58687b[textArticleSection.f67733j.ordinal()];
                            if (i4 == 1) {
                                immersiveArticleTextModuleTypeUiModel = ImmersiveArticleTextModuleTypeUiModel.CITATION;
                            } else {
                                if (i4 != 2) {
                                    v40.g();
                                    return null;
                                }
                                immersiveArticleTextModuleTypeUiModel = ImmersiveArticleTextModuleTypeUiModel.PARAGRAPH;
                            }
                            ImmersiveArticleTextModuleTypeUiModel immersiveArticleTextModuleTypeUiModel2 = immersiveArticleTextModuleTypeUiModel;
                            int i5 = WhenMappings.f58688c[textArticleSection.f67734k.ordinal()];
                            if (i5 == 1) {
                                immersiveArticleTextModuleAlignmentUiModel = ImmersiveArticleTextModuleAlignmentUiModel.CENTER;
                            } else if (i5 == 2) {
                                immersiveArticleTextModuleAlignmentUiModel = ImmersiveArticleTextModuleAlignmentUiModel.RIGHT;
                            } else {
                                if (i5 != 3) {
                                    v40.g();
                                    return null;
                                }
                                immersiveArticleTextModuleAlignmentUiModel = ImmersiveArticleTextModuleAlignmentUiModel.LEFT;
                            }
                            ImmersiveArticleTextModuleAlignmentUiModel immersiveArticleTextModuleAlignmentUiModel2 = immersiveArticleTextModuleAlignmentUiModel;
                            Asset asset3 = textArticleSection.l;
                            AssetUiModel assetUiModelB3 = asset3 != null ? AssetMapperKt.b(asset3) : null;
                            List list7 = textArticleSection.m;
                            if (list7 != null) {
                                List<Pair> list8 = list7;
                                ArrayList arrayList7 = new ArrayList(CollectionsKt.t(list8, 10));
                                for (Pair pair2 : list8) {
                                    arrayList7.add(new Pair(pair2.f71705b, ContributionLinkUiModelKt.a((ContributionLink) pair2.f71706c)));
                                }
                                arrayList = arrayList7;
                            } else {
                                arrayList = null;
                            }
                            SectionTheme sectionTheme6 = textArticleSection.n;
                            SectionThemeUiModel sectionThemeUiModel4 = sectionTheme6 != null ? new SectionThemeUiModel(sectionTheme6.f67724a, sectionTheme6.f67725b) : null;
                            SectionTheme sectionTheme7 = textArticleSection.o;
                            SectionThemeUiModel sectionThemeUiModel5 = sectionTheme7 != null ? new SectionThemeUiModel(sectionTheme7.f67724a, sectionTheme7.f67725b) : null;
                            ImmersiveArticleDisclaimer immersiveArticleDisclaimer = textArticleSection.p;
                            if (immersiveArticleDisclaimer != null) {
                                String str27 = immersiveArticleDisclaimer.f67641a;
                                ImmersiveArticleCta immersiveArticleCta = immersiveArticleDisclaimer.f67642b;
                                immersiveArticleDisclaimerUiModel = new ImmersiveArticleDisclaimerUiModel(str27, immersiveArticleCta != null ? a(immersiveArticleCta) : null);
                            } else {
                                immersiveArticleDisclaimerUiModel = null;
                            }
                            videoCtaArticleSectionUiModel = new TextArticleSectionUiModel(str22, str23, str24, immersiveArticleFontUiModelB3, str25, immersiveArticleFontUiModelB4, str26, immersiveArticleFontUiModelB5, immersiveArticleSizeCardUiModelD3, immersiveArticleTextModuleTypeUiModel2, immersiveArticleTextModuleAlignmentUiModel2, assetUiModelB3, arrayList, sectionThemeUiModel4, sectionThemeUiModel5, immersiveArticleDisclaimerUiModel);
                        } else if (immersiveArticleSection instanceof VideoArticleSection) {
                            VideoArticleSection videoArticleSection = (VideoArticleSection) immersiveArticleSection;
                            String str28 = videoArticleSection.f67736a;
                            ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModelD4 = d(videoArticleSection.f67737b);
                            Asset asset4 = videoArticleSection.f67738c;
                            immersiveArticleAuthenticationSectionUiModel = new VideoArticleSectionUiModel(str28, immersiveArticleSizeCardUiModelD4, asset4 != null ? AssetMapperKt.b(asset4) : null);
                        } else {
                            if (immersiveArticleSection instanceof VideoCtaArticleSection) {
                                VideoCtaArticleSection videoCtaArticleSection = (VideoCtaArticleSection) immersiveArticleSection;
                                String str29 = videoCtaArticleSection.f67739a;
                                String str30 = videoCtaArticleSection.f67740b;
                                String str31 = videoCtaArticleSection.f67741c;
                                ImmersiveArticleFontUiModel immersiveArticleFontUiModelB6 = b(videoCtaArticleSection.d);
                                String str32 = videoCtaArticleSection.f67742e;
                                ImmersiveArticleFontUiModel immersiveArticleFontUiModelB7 = b(videoCtaArticleSection.f67743f);
                                ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModelD5 = d(videoCtaArticleSection.g);
                                ImmersiveArticleVideo immersiveArticleVideo = videoCtaArticleSection.f67744h;
                                ImmersiveArticleVideoUiModel immersiveArticleVideoUiModel = immersiveArticleVideo != null ? new ImmersiveArticleVideoUiModel(immersiveArticleVideo.f67703a, immersiveArticleVideo.f67704b, immersiveArticleVideo.f67705c, immersiveArticleVideo.d) : null;
                                List list9 = videoCtaArticleSection.f67745i;
                                ArrayList arrayList8 = new ArrayList(CollectionsKt.t(list9, 10));
                                Iterator it3 = list9.iterator();
                                while (it3.hasNext()) {
                                    arrayList8.add(c((ImmersiveArticleLookCard) it3.next()));
                                }
                                ContributionLink contributionLink = videoCtaArticleSection.f67746j;
                                ContributionLinkUiModel contributionLinkUiModelA = contributionLink != null ? ContributionLinkUiModelKt.a(contributionLink) : null;
                                Asset asset5 = videoCtaArticleSection.f67747k;
                                AssetUiModel assetUiModelB4 = asset5 != null ? AssetMapperKt.b(asset5) : null;
                                boolean z2 = videoCtaArticleSection.l;
                                SectionTheme sectionTheme8 = videoCtaArticleSection.m;
                                videoCtaArticleSectionUiModel = new VideoCtaArticleSectionUiModel(str29, str30, str31, immersiveArticleFontUiModelB6, str32, immersiveArticleFontUiModelB7, immersiveArticleSizeCardUiModelD5, immersiveArticleVideoUiModel, arrayList8, contributionLinkUiModelA, assetUiModelB4, z2, sectionTheme8 != null ? new SectionThemeUiModel(sectionTheme8.f67724a, sectionTheme8.f67725b) : null);
                            } else if (immersiveArticleSection instanceof WallpaperArticleSection) {
                                WallpaperArticleSection wallpaperArticleSection = (WallpaperArticleSection) immersiveArticleSection;
                                String str33 = wallpaperArticleSection.f67748a;
                                String str34 = wallpaperArticleSection.f67749b;
                                String str35 = wallpaperArticleSection.f67750c;
                                String str36 = wallpaperArticleSection.d;
                                Asset asset6 = wallpaperArticleSection.f67751e;
                                AssetUiModel assetUiModelB5 = asset6 != null ? AssetMapperKt.b(asset6) : null;
                                ImmersiveArticleSizeCard immersiveArticleSizeCard4 = wallpaperArticleSection.f67752f;
                                ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModelD6 = immersiveArticleSizeCard4 != null ? d(immersiveArticleSizeCard4) : null;
                                List list10 = wallpaperArticleSection.g;
                                MutableState mutableStateG = SnapshotStateKt.g(new WallpaperDownloadStateUiModel(false, false, false, 7, null));
                                SectionTheme sectionTheme9 = wallpaperArticleSection.f67753h;
                                immersiveArticleAuthenticationSectionUiModel = new WallpaperArticleSectionUiModel(str33, str34, str35, str36, assetUiModelB5, immersiveArticleSizeCardUiModelD6, list10, mutableStateG, sectionTheme9 != null ? new SectionThemeUiModel(sectionTheme9.f67724a, sectionTheme9.f67725b) : null);
                            } else if (immersiveArticleSection instanceof ImmersiveArticleExpansionList) {
                                ImmersiveArticleExpansionList immersiveArticleExpansionList = (ImmersiveArticleExpansionList) immersiveArticleSection;
                                String str37 = immersiveArticleExpansionList.f67654a;
                                List<ImmersiveArticleExpansionPanel> list11 = immersiveArticleExpansionList.f67655b;
                                ArrayList arrayList9 = new ArrayList(CollectionsKt.t(list11, 10));
                                for (ImmersiveArticleExpansionPanel immersiveArticleExpansionPanel : list11) {
                                    arrayList9.add(new ImmersiveArticleExpansionPanelUiModel(immersiveArticleExpansionPanel.f67656a, immersiveArticleExpansionPanel.f67657b));
                                }
                                immersiveArticleAuthenticationSectionUiModel = new ImmersiveArticleExpansionListUiModel(str37, arrayList9);
                            } else if (immersiveArticleSection instanceof ImmersiveArticleSliderSection) {
                                ImmersiveArticleSliderSection immersiveArticleSliderSection = (ImmersiveArticleSliderSection) immersiveArticleSection;
                                String str38 = immersiveArticleSliderSection.f67697a;
                                String str39 = immersiveArticleSliderSection.f67698b;
                                String str40 = immersiveArticleSliderSection.f67699c;
                                List<ImmersiveArticleSlide> list12 = immersiveArticleSliderSection.d;
                                ArrayList arrayList10 = new ArrayList(CollectionsKt.t(list12, 10));
                                for (ImmersiveArticleSlide immersiveArticleSlide : list12) {
                                    arrayList10.add(new ImmersiveArticleSlideUiModel(immersiveArticleSlide.f67693a, immersiveArticleSlide.f67694b, AssetMapperKt.b(immersiveArticleSlide.f67695c), d(immersiveArticleSlide.d), ContributionLinkUiModelKt.a(immersiveArticleSlide.f67696e)));
                                }
                                SectionTheme sectionTheme10 = immersiveArticleSliderSection.f67700e;
                                immersiveArticleAuthenticationSectionUiModel = new ImmersiveArticleSliderUiModel(str38, str39, str40, arrayList10, sectionTheme10 != null ? new SectionThemeUiModel(sectionTheme10.f67724a, sectionTheme10.f67725b) : null);
                            } else if (immersiveArticleSection instanceof ImmersiveArticleProductTabsSection) {
                                ImmersiveArticleProductTabsSection immersiveArticleProductTabsSection = (ImmersiveArticleProductTabsSection) immersiveArticleSection;
                                String str41 = immersiveArticleProductTabsSection.f67690a;
                                String str42 = immersiveArticleProductTabsSection.f67691b;
                                List<ImmersiveArticleProductTabs> list13 = immersiveArticleProductTabsSection.f67692c.f67689a;
                                ArrayList arrayList11 = new ArrayList(CollectionsKt.t(list13, 10));
                                for (ImmersiveArticleProductTabs immersiveArticleProductTabs : list13) {
                                    String str43 = immersiveArticleProductTabs.f67686a;
                                    String str44 = immersiveArticleProductTabs.f67687b;
                                    List list14 = immersiveArticleProductTabs.f67688c;
                                    String str45 = str6;
                                    Iterator it4 = it2;
                                    ArrayList arrayList12 = new ArrayList(CollectionsKt.t(list14, 10));
                                    Iterator it5 = list14.iterator();
                                    while (it5.hasNext()) {
                                        arrayList12.add(ProductTinyMapperKt.a((ProductTiny) it5.next()));
                                    }
                                    ImmersiveArticleCta immersiveArticleCta2 = immersiveArticleProductTabs.d;
                                    arrayList11.add(new ImmersiveArticleProductTabsUiModel(str43, str44, arrayList12, immersiveArticleCta2 != null ? a(immersiveArticleCta2) : null));
                                    str6 = str45;
                                    it2 = it4;
                                }
                                str3 = str6;
                                it = it2;
                                immersiveArticleAuthenticationSectionUiModel = new ImmersiveArticleProductTabsSectionUiModel(str41, str42, new ImmersiveArticleProductTabsDataUiModel(arrayList11));
                                c2 = '\n';
                            } else {
                                str3 = str6;
                                it = it2;
                                if (immersiveArticleSection instanceof ImmersiveArticleProductListSection) {
                                    ImmersiveArticleProductListSection immersiveArticleProductListSection = (ImmersiveArticleProductListSection) immersiveArticleSection;
                                    String str46 = immersiveArticleProductListSection.f67683a;
                                    String str47 = immersiveArticleProductListSection.f67684b;
                                    if (str47 == null) {
                                        str47 = "";
                                    }
                                    ImmersiveArticleProductListData immersiveArticleProductListData = immersiveArticleProductListSection.f67685c;
                                    List list15 = immersiveArticleProductListData.f67680a;
                                    c2 = '\n';
                                    ArrayList arrayList13 = new ArrayList(CollectionsKt.t(list15, 10));
                                    Iterator it6 = list15.iterator();
                                    while (it6.hasNext()) {
                                        arrayList13.add(ProductTinyMapperKt.a((ProductTiny) it6.next()));
                                    }
                                    int i6 = WhenMappings.d[immersiveArticleProductListData.f67681b.ordinal()];
                                    if (i6 == 1) {
                                        immersiveArticleProductImageStyleUiModel = ImmersiveArticleProductImageStyleUiModel.REGULAR;
                                    } else {
                                        if (i6 != 2) {
                                            v40.g();
                                            return null;
                                        }
                                        immersiveArticleProductImageStyleUiModel = ImmersiveArticleProductImageStyleUiModel.MARIE_LOUISE;
                                    }
                                    int i7 = WhenMappings.f58689e[immersiveArticleProductListData.f67682c.ordinal()];
                                    if (i7 == 1) {
                                        immersiveArticleProductDisplayStyleUiModel = ImmersiveArticleProductDisplayStyleUiModel.FULL_DETAILS;
                                    } else {
                                        if (i7 != 2) {
                                            v40.g();
                                            return null;
                                        }
                                        immersiveArticleProductDisplayStyleUiModel = ImmersiveArticleProductDisplayStyleUiModel.IMAGE_ONLY;
                                    }
                                    immersiveArticleAuthenticationSectionUiModel = new ImmersiveArticleProductListSectionUiModel(str46, str47, new ImmersiveArticleProductListDataUiModel(arrayList13, immersiveArticleProductImageStyleUiModel, immersiveArticleProductDisplayStyleUiModel));
                                } else {
                                    c2 = '\n';
                                    if (immersiveArticleSection instanceof ImmersiveArticleAuthenticationSection) {
                                        ImmersiveArticleAuthenticationSection immersiveArticleAuthenticationSection = (ImmersiveArticleAuthenticationSection) immersiveArticleSection;
                                        immersiveArticleAuthenticationSectionUiModel = new ImmersiveArticleAuthenticationSectionUiModel(immersiveArticleAuthenticationSection.f67632a, immersiveArticleAuthenticationSection.f67633b, immersiveArticleAuthenticationSection.f67634c, immersiveArticleAuthenticationSection.d);
                                    } else {
                                        if (immersiveArticleSection instanceof ImmersiveArticleFashionShowSection) {
                                            ImmersiveArticleFashionShowSection immersiveArticleFashionShowSection = (ImmersiveArticleFashionShowSection) immersiveArticleSection;
                                            String str48 = immersiveArticleFashionShowSection.f67661a;
                                            String str49 = immersiveArticleFashionShowSection.f67662b;
                                            ImmersiveArticleTitles immersiveArticleTitles = immersiveArticleFashionShowSection.f67663c;
                                            ImmersiveArticleTitlesUiModel immersiveArticleTitlesUiModel = new ImmersiveArticleTitlesUiModel(immersiveArticleTitles.f67701a, immersiveArticleTitles.f67702b);
                                            ImmersiveArticleTitles immersiveArticleTitles2 = immersiveArticleFashionShowSection.d;
                                            ImmersiveArticleTitlesUiModel immersiveArticleTitlesUiModel2 = new ImmersiveArticleTitlesUiModel(immersiveArticleTitles2.f67701a, immersiveArticleTitles2.f67702b);
                                            AssetUiModel assetUiModelB6 = AssetMapperKt.b(immersiveArticleFashionShowSection.f67664e);
                                            ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModelD7 = d(immersiveArticleFashionShowSection.f67665f);
                                            AssetVideo assetVideo2 = immersiveArticleFashionShowSection.g;
                                            AssetVideoUiModel assetVideoUiModelC2 = AssetMapperKt.c(assetVideo2);
                                            LiveInfoUiModel liveInfoUiModelA = EditorialModuleUiModelMapperKt.a(assetVideo2);
                                            boolean z3 = assetVideo2.f67115f == LiveVideoStatus.LIVE_UPCOMING && (instant = assetVideo2.f67114e) != null && instant.isAfter(Instant.now());
                                            LiveFormat liveFormat = immersiveArticleFashionShowSection.f67666h;
                                            liveFormat.getClass();
                                            int i8 = EditorialModuleUiModelMapperKt.WhenMappings.f50782c[liveFormat.ordinal()];
                                            if (i8 == 1) {
                                                liveFormatUiModel = LiveFormatUiModel.LANDSCAPE;
                                            } else {
                                                if (i8 != 2) {
                                                    v40.g();
                                                    return null;
                                                }
                                                liveFormatUiModel = LiveFormatUiModel.PORTRAIT;
                                            }
                                            LiveFormatUiModel liveFormatUiModel2 = liveFormatUiModel;
                                            ImmersiveArticleFashionShowContent immersiveArticleFashionShowContent = immersiveArticleFashionShowSection.f67667i;
                                            ImmersiveArticleFashionShowContentUiModel immersiveArticleFashionShowContentUiModel = immersiveArticleFashionShowContent != null ? new ImmersiveArticleFashionShowContentUiModel(immersiveArticleFashionShowContent.f67658a, immersiveArticleFashionShowContent.f67659b, immersiveArticleFashionShowContent.f67660c) : null;
                                            SectionTheme sectionTheme11 = immersiveArticleFashionShowSection.f67668j;
                                            SectionThemeUiModel sectionThemeUiModel6 = sectionTheme11 != null ? new SectionThemeUiModel(sectionTheme11.f67724a, sectionTheme11.f67725b) : null;
                                            SectionTheme sectionTheme12 = immersiveArticleFashionShowSection.f67669k;
                                            immersiveArticleEventSectionUiModel = new ImmersiveArticleFashionShowSectionUiModel(str48, str49, immersiveArticleTitlesUiModel, immersiveArticleTitlesUiModel2, assetUiModelB6, immersiveArticleSizeCardUiModelD7, assetVideoUiModelC2, liveInfoUiModelA, z3, liveFormatUiModel2, immersiveArticleFashionShowContentUiModel, sectionThemeUiModel6, sectionTheme12 != null ? new SectionThemeUiModel(sectionTheme12.f67724a, sectionTheme12.f67725b) : null);
                                        } else if (immersiveArticleSection instanceof ImmersiveArticleEventSection) {
                                            ImmersiveArticleEventSection immersiveArticleEventSection = (ImmersiveArticleEventSection) immersiveArticleSection;
                                            Instant instantC = StringKtExtKt.c(immersiveArticleEventSection.f67651h);
                                            String str50 = immersiveArticleEventSection.f67646a;
                                            String str51 = immersiveArticleEventSection.f67647b;
                                            ImmersiveArticleTitles immersiveArticleTitles3 = immersiveArticleEventSection.f67648c;
                                            ImmersiveArticleTitlesUiModel immersiveArticleTitlesUiModel3 = new ImmersiveArticleTitlesUiModel(immersiveArticleTitles3.f67701a, immersiveArticleTitles3.f67702b);
                                            ImmersiveArticleTitles immersiveArticleTitles4 = immersiveArticleEventSection.d;
                                            ImmersiveArticleTitlesUiModel immersiveArticleTitlesUiModel4 = new ImmersiveArticleTitlesUiModel(immersiveArticleTitles4.f67701a, immersiveArticleTitles4.f67702b);
                                            AssetUiModel assetUiModelB7 = AssetMapperKt.b(immersiveArticleEventSection.f67649e);
                                            ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModelD8 = d(immersiveArticleEventSection.f67650f);
                                            ImmersiveArticleEventContent immersiveArticleEventContent = immersiveArticleEventSection.g;
                                            ImmersiveArticleEventContentUiModel immersiveArticleEventContentUiModel = immersiveArticleEventContent != null ? new ImmersiveArticleEventContentUiModel(immersiveArticleEventContent.f67643a, immersiveArticleEventContent.f67644b, immersiveArticleEventContent.f67645c) : null;
                                            boolean z4 = instantC != null && instantC.isAfter(Instant.now());
                                            SectionTheme sectionTheme13 = immersiveArticleEventSection.f67652i;
                                            SectionThemeUiModel sectionThemeUiModel7 = sectionTheme13 != null ? new SectionThemeUiModel(sectionTheme13.f67724a, sectionTheme13.f67725b) : null;
                                            SectionTheme sectionTheme14 = immersiveArticleEventSection.f67653j;
                                            immersiveArticleEventSectionUiModel = new ImmersiveArticleEventSectionUiModel(str50, str51, immersiveArticleTitlesUiModel3, immersiveArticleTitlesUiModel4, assetUiModelB7, immersiveArticleSizeCardUiModelD8, immersiveArticleEventContentUiModel, instantC, z4, sectionThemeUiModel7, sectionTheme14 != null ? new SectionThemeUiModel(sectionTheme14.f67724a, sectionTheme14.f67725b) : null);
                                        } else {
                                            if (!immersiveArticleSection.equals(com.vuitton.foundation.model.domain.model.immersivearticle.Unknown.f67735a)) {
                                                v40.g();
                                                return null;
                                            }
                                            immersiveArticleAuthenticationSectionUiModel = Unknown.f58836a;
                                        }
                                        immersiveArticleAuthenticationSectionUiModel = immersiveArticleEventSectionUiModel;
                                    }
                                }
                            }
                            arrayList3.add(immersiveArticleAuthenticationSectionUiModel);
                            str6 = str3;
                            it2 = it;
                            str5 = str5;
                        }
                        str3 = str6;
                        it = it2;
                        immersiveArticleAuthenticationSectionUiModel = videoCtaArticleSectionUiModel;
                        c2 = '\n';
                        arrayList3.add(immersiveArticleAuthenticationSectionUiModel);
                        str6 = str3;
                        it2 = it;
                        str5 = str5;
                    }
                }
                str3 = str6;
                it = it2;
                c2 = '\n';
                arrayList3.add(immersiveArticleAuthenticationSectionUiModel);
                str6 = str3;
                it2 = it;
                str5 = str5;
            }
            str = str5;
            str2 = str6;
            audioPlayerItemUiModel = null;
            SnapshotStateList snapshotStateList3 = new SnapshotStateList();
            snapshotStateList3.addAll(arrayList3);
            snapshotStateList = snapshotStateList3;
        } else {
            str = str5;
            str2 = str6;
            audioPlayerItemUiModel = null;
            snapshotStateList = null;
        }
        ImmersiveAudio immersiveAudio = immersiveArticlePage.d;
        if (immersiveAudio != null) {
            Sound sound = immersiveAudio.d;
            long j2 = sound.f67142c;
            String str52 = sound.f67141b;
            AssetImage assetImage2 = immersiveAudio.f67706a;
            String str53 = immersiveAudio.f67707b;
            String str54 = immersiveAudio.f67708c;
            audioPlayerItemUiModel2 = new AudioPlayerItemUiModel(j2, str52, assetImage2, str53, str54 == null ? "" : str54);
        } else {
            audioPlayerItemUiModel2 = audioPlayerItemUiModel;
        }
        ImmersiveArticleBanner immersiveArticleBanner = immersiveArticlePage.f67678e;
        if (immersiveArticleBanner != null) {
            SectionTheme sectionTheme15 = immersiveArticleBanner.f67635a;
            SectionThemeUiModel sectionThemeUiModel8 = new SectionThemeUiModel(sectionTheme15.f67724a, sectionTheme15.f67725b);
            String str55 = immersiveArticleBanner.f67636b;
            ImmersiveArticleCta immersiveArticleCta3 = immersiveArticleBanner.f67637c;
            immersiveArticleBannerUiModel = new ImmersiveArticleBannerUiModel(sectionThemeUiModel8, str55, immersiveArticleCta3 != null ? a(immersiveArticleCta3) : audioPlayerItemUiModel);
        } else {
            immersiveArticleBannerUiModel = audioPlayerItemUiModel;
        }
        return new ImmersiveArticleUiModel(str, str2, snapshotStateList, audioPlayerItemUiModel2, immersiveArticleBannerUiModel, immersiveArticlePage.f67679f);
    }
}
