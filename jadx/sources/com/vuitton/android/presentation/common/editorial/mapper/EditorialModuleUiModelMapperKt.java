package com.vuitton.android.presentation.common.editorial.mapper;

import com.vuitton.android.presentation.common.editorial.models.AssetLayoutUiModel;
import com.vuitton.android.presentation.common.editorial.models.CarouselItemTitlesUiModel;
import com.vuitton.android.presentation.common.editorial.models.CarouselLMultipleItemUiModel;
import com.vuitton.android.presentation.common.editorial.models.CarouselLSingleItemUiModel;
import com.vuitton.android.presentation.common.editorial.models.CarouselMItemUiModel;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleCardTypeUiModel;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.common.editorial.models.GeolocationUiModel;
import com.vuitton.android.presentation.common.editorial.models.HeaderUiModel;
import com.vuitton.android.presentation.common.editorial.models.LiveFormatUiModel;
import com.vuitton.android.presentation.common.editorial.models.LiveInfoUiModel;
import com.vuitton.android.presentation.common.editorial.models.RatioUiModel;
import com.vuitton.android.presentation.common.editorial.models.SlideShowItemUiModel;
import com.vuitton.android.presentation.common.editorial.models.TargetingUiModel;
import com.vuitton.android.presentation.common.editorial.models.TitlesUiModel;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModelKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.IconUiModel;
import com.vuitton.android.presentation.model.common.VideoIdUiModel;
import com.vuitton.android.presentation.model.common.mapper.AssetMapperKt;
import com.vuitton.android.presentation.model.common.mapper.IconUiModelMapperKt$WhenMappings;
import com.vuitton.android.presentation.screen.livevideo.models.LiveVideoStatusUiModel;
import com.vuitton.android.presentation.screen.livevideo.models.LiveVideoStatusUiModelKt$WhenMappings;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.common.AssetVideo;
import com.vuitton.foundation.model.domain.model.common.Icon;
import com.vuitton.foundation.model.domain.model.common.LiveVideoStatus;
import com.vuitton.foundation.model.domain.model.common.editorial.AssetLayout;
import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModule;
import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModuleSlide;
import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModuleSlideSingle;
import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModuleTitles;
import com.vuitton.foundation.model.domain.model.common.editorial.Geolocation;
import com.vuitton.foundation.model.domain.model.common.editorial.Header;
import com.vuitton.foundation.model.domain.model.common.editorial.LiveFormat;
import com.vuitton.foundation.model.domain.model.common.editorial.Ratio;
import com.vuitton.foundation.model.domain.model.common.editorial.Targeting;
import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import com.vuitton.foundation.util.StringKtExtKt;
import defpackage.v40;
import java.time.Instant;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class EditorialModuleUiModelMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f50780a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f50781b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f50782c;

        static {
            int[] iArr = new int[AssetLayout.values().length];
            try {
                iArr[AssetLayout.FULL_WIDTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AssetLayout.MARIELOUISE_CENTERED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AssetLayout.MARIELOUISE_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f50780a = iArr;
            int[] iArr2 = new int[Ratio.values().length];
            try {
                iArr2[Ratio.RATIO_2X3.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[Ratio.RATIO_4X5.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[Ratio.RATIO_16X9.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[Ratio.RATIO_9X16.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[Ratio.RATIO_1X1.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[Ratio.FULLSCREEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused9) {
            }
            f50781b = iArr2;
            int[] iArr3 = new int[LiveFormat.values().length];
            try {
                iArr3[LiveFormat.LANDSCAPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr3[LiveFormat.PORTRAIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
            f50782c = iArr3;
        }
    }

    public static final LiveInfoUiModel a(AssetVideo assetVideo) {
        LiveVideoStatusUiModel liveVideoStatusUiModel;
        assetVideo.getClass();
        VideoIdUiModel.Companion companion = VideoIdUiModel.f51798c;
        String str = assetVideo.f67111a;
        companion.getClass();
        int i2 = LiveVideoStatusUiModelKt$WhenMappings.f58966a[assetVideo.f67115f.ordinal()];
        if (i2 == 1) {
            liveVideoStatusUiModel = LiveVideoStatusUiModel.LIVE;
        } else if (i2 == 2) {
            liveVideoStatusUiModel = LiveVideoStatusUiModel.LIVE_UPCOMING;
        } else if (i2 == 3) {
            liveVideoStatusUiModel = LiveVideoStatusUiModel.LIVE_DONE;
        } else {
            if (i2 != 4) {
                v40.g();
                return null;
            }
            liveVideoStatusUiModel = LiveVideoStatusUiModel.LIVE_REPLAY;
        }
        return new LiveInfoUiModel(str, liveVideoStatusUiModel, assetVideo.f67114e, assetVideo.g, null, assetVideo.f67112b, 16, null);
    }

    public static final EditorialModuleUiModel b(EditorialModule editorialModule) {
        IconUiModel iconUiModel;
        HeaderUiModel headerUiModel;
        HeaderUiModel headerUiModel2;
        LiveFormatUiModel liveFormatUiModel;
        Instant instant;
        AssetLayoutUiModel assetLayoutUiModel;
        editorialModule.getClass();
        if (editorialModule instanceof EditorialModule.Card) {
            EditorialModule.Card card = (EditorialModule.Card) editorialModule;
            String str = card.f67157a;
            EditorialModuleTitles editorialModuleTitles = card.f67158b;
            TitlesUiModel titlesUiModel = editorialModuleTitles != null ? new TitlesUiModel(editorialModuleTitles.f67212a, editorialModuleTitles.f67213b) : null;
            ContributionLink contributionLink = card.f67159c;
            ContributionLinkUiModel contributionLinkUiModelA = contributionLink != null ? ContributionLinkUiModelKt.a(contributionLink) : null;
            AssetUiModel assetUiModelB = AssetMapperKt.b(card.d);
            RatioUiModel ratioUiModelC = c(card.f67161f);
            Targeting targeting = card.g;
            TargetingUiModel targetingUiModelD = targeting != null ? d(targeting) : null;
            int i2 = WhenMappings.f50780a[card.f67160e.ordinal()];
            if (i2 == 1) {
                assetLayoutUiModel = AssetLayoutUiModel.FULL_WIDTH;
            } else if (i2 == 2) {
                assetLayoutUiModel = AssetLayoutUiModel.MARIELOUISE_CENTERED;
            } else {
                if (i2 != 3) {
                    v40.g();
                    return null;
                }
                assetLayoutUiModel = AssetLayoutUiModel.MARIELOUISE_LEFT;
            }
            return new EditorialModuleUiModel.CardUiModel(str, titlesUiModel, contributionLinkUiModelA, assetUiModelB, ratioUiModelC, targetingUiModelD, new EditorialModuleCardTypeUiModel.Simple(assetLayoutUiModel));
        }
        if (editorialModule instanceof EditorialModule.Event) {
            EditorialModule.Event event = (EditorialModule.Event) editorialModule;
            Instant instantC = StringKtExtKt.c(event.f67181f);
            String str2 = event.f67177a;
            EditorialModuleTitles editorialModuleTitles2 = event.f67178b;
            TitlesUiModel titlesUiModel2 = editorialModuleTitles2 != null ? new TitlesUiModel(editorialModuleTitles2.f67212a, editorialModuleTitles2.f67213b) : null;
            ContributionLink contributionLink2 = event.f67179c;
            ContributionLinkUiModel contributionLinkUiModelA2 = contributionLink2 != null ? ContributionLinkUiModelKt.a(contributionLink2) : null;
            AssetUiModel assetUiModelB2 = AssetMapperKt.b(event.d);
            RatioUiModel ratioUiModelC2 = c(event.f67180e);
            Targeting targeting2 = event.g;
            return new EditorialModuleUiModel.CardUiModel(str2, titlesUiModel2, contributionLinkUiModelA2, assetUiModelB2, ratioUiModelC2, targeting2 != null ? d(targeting2) : null, new EditorialModuleCardTypeUiModel.Event(instantC, instantC != null && instantC.isAfter(Instant.now())));
        }
        if (editorialModule instanceof EditorialModule.Live) {
            EditorialModule.Live live = (EditorialModule.Live) editorialModule;
            String str3 = live.f67189a;
            AssetVideo assetVideo = live.f67193f;
            String str4 = live.f67190b;
            TitlesUiModel titlesUiModel3 = str4 != null ? new TitlesUiModel(str4, live.f67192e) : null;
            AssetUiModel assetUiModelB3 = AssetMapperKt.b(live.f67191c);
            RatioUiModel ratioUiModelC3 = c(live.d);
            Targeting targeting3 = live.g;
            TargetingUiModel targetingUiModelD2 = targeting3 != null ? d(targeting3) : null;
            LiveInfoUiModel liveInfoUiModelA = a(assetVideo);
            LiveFormat liveFormat = live.f67194h;
            liveFormat.getClass();
            int i3 = WhenMappings.f50782c[liveFormat.ordinal()];
            if (i3 == 1) {
                liveFormatUiModel = LiveFormatUiModel.LANDSCAPE;
            } else {
                if (i3 != 2) {
                    v40.g();
                    return null;
                }
                liveFormatUiModel = LiveFormatUiModel.PORTRAIT;
            }
            return new EditorialModuleUiModel.CardUiModel(str3, titlesUiModel3, null, assetUiModelB3, ratioUiModelC3, targetingUiModelD2, new EditorialModuleCardTypeUiModel.Live(liveInfoUiModelA, liveFormatUiModel, assetVideo.f67115f == LiveVideoStatus.LIVE_UPCOMING && (instant = assetVideo.f67114e) != null && instant.isAfter(Instant.now())));
        }
        if (editorialModule instanceof EditorialModule.HighlightCard) {
            EditorialModule.HighlightCard highlightCard = (EditorialModule.HighlightCard) editorialModule;
            String str5 = highlightCard.f67185a;
            String str6 = highlightCard.f67186b;
            String str7 = highlightCard.f67187c;
            AssetImage assetImage = highlightCard.d;
            AssetImageUiModel assetImageUiModelA = assetImage != null ? AssetMapperKt.a(assetImage) : null;
            Targeting targeting4 = highlightCard.f67188e;
            return new EditorialModuleUiModel.HighLightUiModel(str5, str6, str7, assetImageUiModelA, targeting4 != null ? d(targeting4) : null);
        }
        if (editorialModule instanceof EditorialModule.SlideShow) {
            EditorialModule.SlideShow slideShow = (EditorialModule.SlideShow) editorialModule;
            String str8 = slideShow.f67202a;
            String str9 = slideShow.f67203b;
            List<EditorialModuleSlide> list = slideShow.f67204c;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            for (EditorialModuleSlide editorialModuleSlide : list) {
                editorialModuleSlide.getClass();
                String str10 = editorialModuleSlide.f67205a;
                EditorialModuleTitles editorialModuleTitles3 = editorialModuleSlide.f67206b;
                String str11 = editorialModuleTitles3 != null ? editorialModuleTitles3.f67212a : null;
                String str12 = editorialModuleTitles3 != null ? editorialModuleTitles3.f67213b : null;
                AssetUiModel assetUiModelB4 = AssetMapperKt.b(editorialModuleSlide.f67207c);
                ContributionLinkUiModel contributionLinkUiModelA3 = ContributionLinkUiModelKt.a(editorialModuleSlide.d);
                Targeting targeting5 = editorialModuleSlide.f67208e;
                arrayList.add(new SlideShowItemUiModel(str10, str11, str12, contributionLinkUiModelA3, assetUiModelB4, targeting5 != null ? d(targeting5) : null));
            }
            Targeting targeting6 = slideShow.d;
            return new EditorialModuleUiModel.SlideShowUiModel(str8, str9, arrayList, targeting6 != null ? d(targeting6) : null);
        }
        if (editorialModule instanceof EditorialModule.CarouselMedium) {
            EditorialModule.CarouselMedium carouselMedium = (EditorialModule.CarouselMedium) editorialModule;
            String str13 = carouselMedium.f67169a;
            String str14 = carouselMedium.f67170b;
            List<EditorialModuleSlide> list2 = carouselMedium.f67171c;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
            for (EditorialModuleSlide editorialModuleSlide2 : list2) {
                editorialModuleSlide2.getClass();
                String str15 = editorialModuleSlide2.f67205a;
                EditorialModuleTitles editorialModuleTitles4 = editorialModuleSlide2.f67206b;
                CarouselItemTitlesUiModel carouselItemTitlesUiModel = editorialModuleTitles4 != null ? new CarouselItemTitlesUiModel(editorialModuleTitles4.f67212a, editorialModuleTitles4.f67213b) : null;
                ContributionLinkUiModel contributionLinkUiModelA4 = ContributionLinkUiModelKt.a(editorialModuleSlide2.d);
                AssetUiModel assetUiModelB5 = AssetMapperKt.b(editorialModuleSlide2.f67207c);
                Targeting targeting7 = editorialModuleSlide2.f67208e;
                arrayList2.add(new CarouselMItemUiModel(str15, carouselItemTitlesUiModel, contributionLinkUiModelA4, assetUiModelB5, targeting7 != null ? d(targeting7) : null));
            }
            Targeting targeting8 = carouselMedium.d;
            return new EditorialModuleUiModel.CarouselMUiModel(str13, str14, arrayList2, targeting8 != null ? d(targeting8) : null);
        }
        if (editorialModule instanceof EditorialModule.CarouselLargeMultiple) {
            EditorialModule.CarouselLargeMultiple carouselLargeMultiple = (EditorialModule.CarouselLargeMultiple) editorialModule;
            String str16 = carouselLargeMultiple.f67162a;
            EditorialModuleTitles editorialModuleTitles5 = carouselLargeMultiple.f67163b;
            CarouselItemTitlesUiModel carouselItemTitlesUiModel2 = editorialModuleTitles5 != null ? new CarouselItemTitlesUiModel(editorialModuleTitles5.f67212a, editorialModuleTitles5.f67213b) : null;
            List<EditorialModuleSlide> list3 = carouselLargeMultiple.f67164c;
            ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list3, 10));
            for (EditorialModuleSlide editorialModuleSlide3 : list3) {
                editorialModuleSlide3.getClass();
                String str17 = editorialModuleSlide3.f67205a;
                EditorialModuleTitles editorialModuleTitles6 = editorialModuleSlide3.f67206b;
                CarouselItemTitlesUiModel carouselItemTitlesUiModel3 = editorialModuleTitles6 != null ? new CarouselItemTitlesUiModel(editorialModuleTitles6.f67212a, editorialModuleTitles6.f67213b) : null;
                ContributionLinkUiModel contributionLinkUiModelA5 = ContributionLinkUiModelKt.a(editorialModuleSlide3.d);
                AssetUiModel assetUiModelB6 = AssetMapperKt.b(editorialModuleSlide3.f67207c);
                Targeting targeting9 = editorialModuleSlide3.f67208e;
                arrayList3.add(new CarouselLMultipleItemUiModel(str17, carouselItemTitlesUiModel3, contributionLinkUiModelA5, assetUiModelB6, targeting9 != null ? d(targeting9) : null));
            }
            Targeting targeting10 = carouselLargeMultiple.d;
            return new EditorialModuleUiModel.CarouselLMultipleUiModel(str16, carouselItemTitlesUiModel2, arrayList3, targeting10 != null ? d(targeting10) : null);
        }
        if (editorialModule instanceof EditorialModule.CarouselLargeSingle) {
            EditorialModule.CarouselLargeSingle carouselLargeSingle = (EditorialModule.CarouselLargeSingle) editorialModule;
            String str18 = carouselLargeSingle.f67165a;
            EditorialModuleTitles editorialModuleTitles7 = carouselLargeSingle.f67166b;
            CarouselItemTitlesUiModel carouselItemTitlesUiModel4 = editorialModuleTitles7 != null ? new CarouselItemTitlesUiModel(editorialModuleTitles7.f67212a, editorialModuleTitles7.f67213b) : null;
            List<EditorialModuleSlideSingle> list4 = carouselLargeSingle.f67167c;
            ArrayList arrayList4 = new ArrayList(CollectionsKt.t(list4, 10));
            for (EditorialModuleSlideSingle editorialModuleSlideSingle : list4) {
                editorialModuleSlideSingle.getClass();
                String str19 = editorialModuleSlideSingle.f67209a;
                AssetUiModel assetUiModelB7 = AssetMapperKt.b(editorialModuleSlideSingle.f67210b);
                Targeting targeting11 = editorialModuleSlideSingle.f67211c;
                arrayList4.add(new CarouselLSingleItemUiModel(str19, assetUiModelB7, targeting11 != null ? d(targeting11) : null));
            }
            ContributionLinkUiModel contributionLinkUiModelA6 = ContributionLinkUiModelKt.a(carouselLargeSingle.f67168e);
            Targeting targeting12 = carouselLargeSingle.d;
            return new EditorialModuleUiModel.CarouselLSingleUiModel(str18, carouselItemTitlesUiModel4, arrayList4, contributionLinkUiModelA6, targeting12 != null ? d(targeting12) : null);
        }
        if (editorialModule instanceof EditorialModule.CarouselSmall) {
            EditorialModule.CarouselSmall carouselSmall = (EditorialModule.CarouselSmall) editorialModule;
            String str20 = carouselSmall.f67172a;
            Header header = carouselSmall.f67173b;
            if (header != null) {
                String str21 = header.f67217a;
                String str22 = header.f67218b;
                AssetImage assetImage2 = header.f67219c;
                headerUiModel2 = new HeaderUiModel(str21, str22, assetImage2 != null ? AssetMapperKt.a(assetImage2) : null);
            } else {
                headerUiModel2 = null;
            }
            return new EditorialModuleUiModel.CarouselSmallUiModel(str20, headerUiModel2, carouselSmall.f67174c, carouselSmall.d, EmptyList.f71768b, null, true, 32, null);
        }
        if (editorialModule instanceof EditorialModule.GridSmall) {
            EditorialModule.GridSmall gridSmall = (EditorialModule.GridSmall) editorialModule;
            String str23 = gridSmall.f67182a;
            Header header2 = gridSmall.f67183b;
            if (header2 != null) {
                String str24 = header2.f67217a;
                String str25 = header2.f67218b;
                AssetImage assetImage3 = header2.f67219c;
                headerUiModel = new HeaderUiModel(str24, str25, assetImage3 != null ? AssetMapperKt.a(assetImage3) : null);
            } else {
                headerUiModel = null;
            }
            return new EditorialModuleUiModel.GridSmallUiModel(str23, headerUiModel, gridSmall.f67184c, gridSmall.d, EmptyList.f71768b, null, true, 32, null);
        }
        if (editorialModule instanceof EditorialModule.Authentication) {
            EditorialModule.Authentication authentication = (EditorialModule.Authentication) editorialModule;
            return new EditorialModuleUiModel.AuthenticationUiModel(authentication.f67154a, authentication.f67155b, authentication.f67156c, AssetMapperKt.a(authentication.d));
        }
        if (!(editorialModule instanceof EditorialModule.PushCard)) {
            if (editorialModule instanceof EditorialModule.ProductCarousel) {
                return new EditorialModuleUiModel.ProductCarouselUiModel(((EditorialModule.ProductCarousel) editorialModule).f67195a, EmptyList.f71768b, false, 4, null);
            }
            if (editorialModule instanceof EditorialModule.Contactability) {
                EditorialModule.Contactability contactability = (EditorialModule.Contactability) editorialModule;
                return new EditorialModuleUiModel.ContactabilityUiModel(contactability.f67175a, AssetMapperKt.a(contactability.f67176b));
            }
            v40.g();
            return null;
        }
        EditorialModule.PushCard pushCard = (EditorialModule.PushCard) editorialModule;
        String str26 = pushCard.f67197a;
        String str27 = pushCard.f67198b;
        String str28 = pushCard.f67199c;
        ContributionLinkUiModel contributionLinkUiModelA7 = ContributionLinkUiModelKt.a(pushCard.d);
        Icon icon = pushCard.f67200e;
        if (icon == null) {
            iconUiModel = null;
        } else {
            if (IconUiModelMapperKt$WhenMappings.f51803a[icon.ordinal()] != 1) {
                v40.g();
                return null;
            }
            iconUiModel = IconUiModel.AI_COMPANION;
        }
        AssetImage assetImage4 = pushCard.f67201f;
        return new EditorialModuleUiModel.PushCardUiModel(str26, str27, str28, contributionLinkUiModelA7, iconUiModel, assetImage4 != null ? AssetMapperKt.a(assetImage4) : null);
    }

    public static final RatioUiModel c(Ratio ratio) {
        ratio.getClass();
        switch (WhenMappings.f50781b[ratio.ordinal()]) {
            case 1:
                return RatioUiModel.RATIO_2X3;
            case 2:
                return RatioUiModel.RATIO_4X5;
            case 3:
                return RatioUiModel.RATIO_16X9;
            case 4:
                return RatioUiModel.RATIO_9X16;
            case 5:
                return RatioUiModel.RATIO_1X1;
            case 6:
                return RatioUiModel.FULLSCREEN;
            default:
                v40.g();
                return null;
        }
    }

    public static final TargetingUiModel d(Targeting targeting) {
        targeting.getClass();
        List<Geolocation> list = targeting.f67220a;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (Geolocation geolocation : list) {
            arrayList.add(new GeolocationUiModel(geolocation.f67214a, geolocation.f67215b, geolocation.f67216c));
        }
        return new TargetingUiModel(arrayList);
    }
}
