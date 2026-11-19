package com.vuitton.android.data.dto.common.editorial.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.IconDto;
import com.vuitton.android.data.dto.common.editorial.AlgorithmTypeDto;
import com.vuitton.android.data.dto.common.editorial.AssetLayoutDto;
import com.vuitton.android.data.dto.common.editorial.EditorialModuleDto;
import com.vuitton.android.data.dto.common.editorial.EditorialModuleSlideDto;
import com.vuitton.android.data.dto.common.editorial.EditorialModuleSlideSingleDto;
import com.vuitton.android.data.dto.common.editorial.EditorialModuleTitlesDto;
import com.vuitton.android.data.dto.common.editorial.GeolocationDto;
import com.vuitton.android.data.dto.common.editorial.LiveFormatDto;
import com.vuitton.android.data.dto.common.editorial.RatioDto;
import com.vuitton.android.data.dto.common.editorial.TargetingDto;
import com.vuitton.android.data.dto.common.mapper.AssetMapperKt;
import com.vuitton.android.data.dto.common.mapper.IconMapperKt$WhenMappings;
import com.vuitton.android.data.dto.linktype.ContributionLinkLegacyDto;
import com.vuitton.android.data.dto.linktype.LinkTypeDto;
import com.vuitton.android.data.dto.linktype.mapper.ContributionLinkMapperKt;
import com.vuitton.android.data.dto.linktype.mapper.LinkTypeMapperKt;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.common.AssetVideo;
import com.vuitton.foundation.model.domain.model.common.Icon;
import com.vuitton.foundation.model.domain.model.common.editorial.AlgorithmType;
import com.vuitton.foundation.model.domain.model.common.editorial.AssetLayout;
import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModule;
import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModuleSlide;
import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModuleSlideSingle;
import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModuleTitles;
import com.vuitton.foundation.model.domain.model.common.editorial.Geolocation;
import com.vuitton.foundation.model.domain.model.common.editorial.LiveFormat;
import com.vuitton.foundation.model.domain.model.common.editorial.Ratio;
import com.vuitton.foundation.model.domain.model.common.editorial.Targeting;
import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class EditorialModuleMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f45360a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f45361b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f45362c;
        public static final /* synthetic */ int[] d;

        static {
            int[] iArr = new int[AlgorithmTypeDto.values().length];
            try {
                iArr[AlgorithmTypeDto.DYNAMIC_YIELD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AlgorithmTypeDto.MOST_PURCHASED_WITH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AlgorithmTypeDto.LAST_VIEWED_PRODUCTS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AlgorithmTypeDto.SKUS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f45360a = iArr;
            int[] iArr2 = new int[AssetLayoutDto.values().length];
            try {
                iArr2[AssetLayoutDto.FULL_WIDTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[AssetLayoutDto.MARIELOUISE_CENTERED.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[AssetLayoutDto.MARIELOUISE_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            f45361b = iArr2;
            int[] iArr3 = new int[RatioDto.values().length];
            try {
                iArr3[RatioDto.RATIO_2X3.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr3[RatioDto.RATIO_4X5.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr3[RatioDto.RATIO_16X9.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr3[RatioDto.RATIO_9X16.ordinal()] = 4;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr3[RatioDto.RATIO_1X1.ordinal()] = 5;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr3[RatioDto.FULLSCREEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused13) {
            }
            f45362c = iArr3;
            int[] iArr4 = new int[LiveFormatDto.values().length];
            try {
                iArr4[LiveFormatDto.LANDSCAPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr4[LiveFormatDto.PORTRAIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused15) {
            }
            d = iArr4;
        }
    }

    public static final AlgorithmType a(AlgorithmTypeDto algorithmTypeDto) {
        algorithmTypeDto.getClass();
        int i2 = WhenMappings.f45360a[algorithmTypeDto.ordinal()];
        if (i2 == 1) {
            return AlgorithmType.DYNAMIC_YIELD;
        }
        if (i2 == 2) {
            return AlgorithmType.MOST_PURCHASED_WITH;
        }
        if (i2 == 3) {
            return AlgorithmType.LAST_VIEWED_PRODUCTS;
        }
        if (i2 == 4) {
            return AlgorithmType.SKUS;
        }
        v40.g();
        return null;
    }

    public static final EditorialModule.Card b(EditorialModuleDto.CardSectionDto cardSectionDto, String str) throws Throwable {
        ContributionLink contributionLinkA;
        AssetLayout assetLayout;
        cardSectionDto.getClass();
        str.getClass();
        EditorialModuleTitlesDto editorialModuleTitlesDto = cardSectionDto.f45273b;
        EditorialModuleTitles editorialModuleTitlesK = editorialModuleTitlesDto != null ? k(editorialModuleTitlesDto) : null;
        ContributionLinkLegacyDto contributionLinkLegacyDto = cardSectionDto.f45274c;
        if (contributionLinkLegacyDto != null) {
            LinkTypeDto linkTypeDto = contributionLinkLegacyDto.f46030a;
            String str2 = contributionLinkLegacyDto.f46031b;
            if (str2 == null) {
                str2 = "";
            }
            contributionLinkA = LinkTypeMapperKt.a(linkTypeDto, str2, contributionLinkLegacyDto.f46032c);
        } else {
            contributionLinkA = null;
        }
        Asset assetA = AssetMapperKt.a(cardSectionDto.d);
        AssetLayoutDto assetLayoutDto = cardSectionDto.f45275e;
        assetLayoutDto.getClass();
        int i2 = WhenMappings.f45361b[assetLayoutDto.ordinal()];
        if (i2 == 1) {
            assetLayout = AssetLayout.FULL_WIDTH;
        } else if (i2 == 2) {
            assetLayout = AssetLayout.MARIELOUISE_CENTERED;
        } else {
            if (i2 != 3) {
                v40.g();
                return null;
            }
            assetLayout = AssetLayout.MARIELOUISE_LEFT;
        }
        AssetLayout assetLayout2 = assetLayout;
        Ratio ratioL = l(cardSectionDto.f45276f);
        TargetingDto targetingDto = cardSectionDto.g;
        return new EditorialModule.Card(str, editorialModuleTitlesK, contributionLinkA, assetA, assetLayout2, ratioL, targetingDto != null ? m(targetingDto) : null);
    }

    public static final EditorialModule.CarouselLargeMultiple c(EditorialModuleDto.CarouselLargeMultipleSectionDto carouselLargeMultipleSectionDto, String str) {
        carouselLargeMultipleSectionDto.getClass();
        str.getClass();
        EditorialModuleTitlesDto editorialModuleTitlesDto = carouselLargeMultipleSectionDto.f45279b;
        EditorialModuleTitles editorialModuleTitlesK = editorialModuleTitlesDto != null ? k(editorialModuleTitlesDto) : null;
        List list = carouselLargeMultipleSectionDto.f45280c;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(j((EditorialModuleSlideDto) it.next()));
        }
        TargetingDto targetingDto = carouselLargeMultipleSectionDto.d;
        return new EditorialModule.CarouselLargeMultiple(str, editorialModuleTitlesK, arrayList, targetingDto != null ? m(targetingDto) : null);
    }

    public static final EditorialModule.CarouselLargeSingle d(EditorialModuleDto.CarouselLargeSingleSectionDto carouselLargeSingleSectionDto, String str) throws Throwable {
        carouselLargeSingleSectionDto.getClass();
        str.getClass();
        EditorialModuleTitlesDto editorialModuleTitlesDto = carouselLargeSingleSectionDto.f45283b;
        EditorialModuleTitles editorialModuleTitlesK = editorialModuleTitlesDto != null ? k(editorialModuleTitlesDto) : null;
        List<EditorialModuleSlideSingleDto> list = carouselLargeSingleSectionDto.f45284c;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (EditorialModuleSlideSingleDto editorialModuleSlideSingleDto : list) {
            editorialModuleSlideSingleDto.getClass();
            String str2 = editorialModuleSlideSingleDto.f45337a;
            Asset assetA = AssetMapperKt.a(editorialModuleSlideSingleDto.f45338b);
            TargetingDto targetingDto = editorialModuleSlideSingleDto.f45339c;
            arrayList.add(new EditorialModuleSlideSingle(str2, assetA, targetingDto != null ? m(targetingDto) : null));
        }
        TargetingDto targetingDto2 = carouselLargeSingleSectionDto.d;
        Targeting targetingM = targetingDto2 != null ? m(targetingDto2) : null;
        ContributionLinkLegacyDto contributionLinkLegacyDto = carouselLargeSingleSectionDto.f45285e;
        LinkTypeDto linkTypeDto = contributionLinkLegacyDto.f46030a;
        String str3 = contributionLinkLegacyDto.f46031b;
        if (str3 == null) {
            str3 = "";
        }
        return new EditorialModule.CarouselLargeSingle(str, editorialModuleTitlesK, arrayList, targetingM, LinkTypeMapperKt.a(linkTypeDto, str3, contributionLinkLegacyDto.f46032c));
    }

    public static final EditorialModule.CarouselMedium e(EditorialModuleDto.CarouselMediumSectionDto carouselMediumSectionDto, String str) {
        carouselMediumSectionDto.getClass();
        str.getClass();
        String str2 = carouselMediumSectionDto.f45288b;
        List list = carouselMediumSectionDto.f45289c;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(j((EditorialModuleSlideDto) it.next()));
        }
        TargetingDto targetingDto = carouselMediumSectionDto.d;
        return new EditorialModule.CarouselMedium(str, str2, arrayList, targetingDto != null ? m(targetingDto) : null);
    }

    public static final EditorialModule.Event f(EditorialModuleDto.EventSectionDto eventSectionDto, String str) throws Throwable {
        ContributionLink contributionLinkA;
        eventSectionDto.getClass();
        str.getClass();
        EditorialModuleTitlesDto editorialModuleTitlesDto = eventSectionDto.f45296b;
        EditorialModuleTitles editorialModuleTitlesK = editorialModuleTitlesDto != null ? k(editorialModuleTitlesDto) : null;
        ContributionLinkLegacyDto contributionLinkLegacyDto = eventSectionDto.f45297c;
        if (contributionLinkLegacyDto != null) {
            LinkTypeDto linkTypeDto = contributionLinkLegacyDto.f46030a;
            String str2 = contributionLinkLegacyDto.f46031b;
            if (str2 == null) {
                str2 = "";
            }
            contributionLinkA = LinkTypeMapperKt.a(linkTypeDto, str2, contributionLinkLegacyDto.f46032c);
        } else {
            contributionLinkA = null;
        }
        Asset assetA = AssetMapperKt.a(eventSectionDto.d);
        Ratio ratioL = l(eventSectionDto.f45298e);
        String str3 = eventSectionDto.f45299f;
        TargetingDto targetingDto = eventSectionDto.g;
        return new EditorialModule.Event(str, editorialModuleTitlesK, contributionLinkA, assetA, ratioL, str3, targetingDto != null ? m(targetingDto) : null);
    }

    public static final EditorialModule.Live g(EditorialModuleDto.LiveSectionDto liveSectionDto, String str) throws Throwable {
        LiveFormat liveFormat;
        liveSectionDto.getClass();
        str.getClass();
        String str2 = liveSectionDto.f45310b;
        Asset assetA = AssetMapperKt.a(liveSectionDto.f45311c);
        Ratio ratioL = l(liveSectionDto.d);
        String str3 = liveSectionDto.f45312e;
        Object objC = AssetMapperKt.c(liveSectionDto.g);
        ResultKt.b(objC);
        AssetVideo assetVideo = (AssetVideo) objC;
        TargetingDto targetingDto = liveSectionDto.f45313f;
        Targeting targetingM = targetingDto != null ? m(targetingDto) : null;
        LiveFormatDto liveFormatDto = liveSectionDto.f45314h;
        liveFormatDto.getClass();
        int i2 = WhenMappings.d[liveFormatDto.ordinal()];
        if (i2 == 1) {
            liveFormat = LiveFormat.LANDSCAPE;
        } else {
            if (i2 != 2) {
                v40.g();
                return null;
            }
            liveFormat = LiveFormat.PORTRAIT;
        }
        return new EditorialModule.Live(str, str2, assetA, ratioL, str3, assetVideo, targetingM, liveFormat);
    }

    public static final EditorialModule.PushCard h(EditorialModuleDto.PushCardSectionDto pushCardSectionDto, String str) {
        Icon icon;
        pushCardSectionDto.getClass();
        str.getClass();
        String str2 = pushCardSectionDto.f45321b;
        String str3 = pushCardSectionDto.f45322c;
        ContributionLink contributionLinkA = ContributionLinkMapperKt.a(pushCardSectionDto.d);
        IconDto iconDto = pushCardSectionDto.f45323e;
        if (iconDto == null) {
            icon = null;
        } else {
            if (IconMapperKt$WhenMappings.f45365a[iconDto.ordinal()] != 1) {
                v40.g();
                return null;
            }
            icon = Icon.AI_COMPANION;
        }
        AssetImageDto assetImageDto = pushCardSectionDto.f45324f;
        return new EditorialModule.PushCard(str, str2, str3, contributionLinkA, icon, assetImageDto != null ? AssetMapperKt.b(assetImageDto) : null);
    }

    public static final EditorialModule.SlideShow i(EditorialModuleDto.SlideShowSectionDto slideShowSectionDto, String str) {
        slideShowSectionDto.getClass();
        str.getClass();
        String str2 = slideShowSectionDto.f45327b;
        List list = slideShowSectionDto.f45328c;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(j((EditorialModuleSlideDto) it.next()));
        }
        TargetingDto targetingDto = slideShowSectionDto.d;
        return new EditorialModule.SlideShow(str, str2, arrayList, targetingDto != null ? m(targetingDto) : null);
    }

    public static final EditorialModuleSlide j(EditorialModuleSlideDto editorialModuleSlideDto) throws Throwable {
        editorialModuleSlideDto.getClass();
        String str = editorialModuleSlideDto.f45332a;
        EditorialModuleTitlesDto editorialModuleTitlesDto = editorialModuleSlideDto.f45333b;
        EditorialModuleTitles editorialModuleTitlesK = editorialModuleTitlesDto != null ? k(editorialModuleTitlesDto) : null;
        Asset assetA = AssetMapperKt.a(editorialModuleSlideDto.f45334c);
        ContributionLinkLegacyDto contributionLinkLegacyDto = editorialModuleSlideDto.d;
        LinkTypeDto linkTypeDto = contributionLinkLegacyDto.f46030a;
        String str2 = contributionLinkLegacyDto.f46031b;
        if (str2 == null) {
            str2 = "";
        }
        ContributionLink contributionLinkA = LinkTypeMapperKt.a(linkTypeDto, str2, contributionLinkLegacyDto.f46032c);
        TargetingDto targetingDto = editorialModuleSlideDto.f45335e;
        return new EditorialModuleSlide(str, editorialModuleTitlesK, assetA, contributionLinkA, targetingDto != null ? m(targetingDto) : null);
    }

    public static final EditorialModuleTitles k(EditorialModuleTitlesDto editorialModuleTitlesDto) {
        editorialModuleTitlesDto.getClass();
        return new EditorialModuleTitles(editorialModuleTitlesDto.f45341a, editorialModuleTitlesDto.f45342b);
    }

    public static final Ratio l(RatioDto ratioDto) {
        ratioDto.getClass();
        switch (WhenMappings.f45362c[ratioDto.ordinal()]) {
            case 1:
                return Ratio.RATIO_2X3;
            case 2:
                return Ratio.RATIO_4X5;
            case 3:
                return Ratio.RATIO_16X9;
            case 4:
                return Ratio.RATIO_9X16;
            case 5:
                return Ratio.RATIO_1X1;
            case 6:
                return Ratio.FULLSCREEN;
            default:
                v40.g();
                return null;
        }
    }

    public static final Targeting m(TargetingDto targetingDto) {
        targetingDto.getClass();
        List<GeolocationDto> list = targetingDto.f45358a;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (GeolocationDto geolocationDto : list) {
            geolocationDto.getClass();
            arrayList.add(new Geolocation(geolocationDto.f45349a, geolocationDto.f45350b, geolocationDto.f45351c));
        }
        return new Targeting(arrayList);
    }
}
