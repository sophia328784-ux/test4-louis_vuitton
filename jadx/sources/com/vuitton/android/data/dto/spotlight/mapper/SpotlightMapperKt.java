package com.vuitton.android.data.dto.spotlight.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetVideoDto;
import com.vuitton.android.data.dto.common.mapper.AssetMapperKt;
import com.vuitton.android.data.dto.common.mapper.FeatureThemeMapperKt;
import com.vuitton.android.data.dto.linktype.ContributionLinkLegacyDto;
import com.vuitton.android.data.dto.linktype.LinkTypeDto;
import com.vuitton.android.data.dto.linktype.mapper.LinkTypeMapperKt;
import com.vuitton.android.data.dto.spotlight.SpotlightCtaDto;
import com.vuitton.android.data.dto.spotlight.SpotlightDto;
import com.vuitton.android.data.dto.spotlight.SpotlightHotspotContentDto;
import com.vuitton.android.data.dto.spotlight.SpotlightHotspotDetailDto;
import com.vuitton.android.data.dto.spotlight.SpotlightHotspotDto;
import com.vuitton.android.data.dto.spotlight.SpotlightPositionDto;
import com.vuitton.android.data.dto.spotlight.SpotlightSlideDto;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.common.AssetVideo;
import com.vuitton.foundation.model.domain.model.common.FeatureTheme;
import com.vuitton.foundation.model.domain.model.spotlight.HotspotContent;
import com.vuitton.foundation.model.domain.model.spotlight.HotspotDetail;
import com.vuitton.foundation.model.domain.model.spotlight.Spotlight;
import com.vuitton.foundation.model.domain.model.spotlight.SpotlightCta;
import com.vuitton.foundation.model.domain.model.spotlight.SpotlightHotspot;
import com.vuitton.foundation.model.domain.model.spotlight.SpotlightPosition;
import com.vuitton.foundation.model.domain.model.spotlight.SpotlightSlide;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SpotlightMapperKt {
    public static final Spotlight a(SpotlightDto spotlightDto) throws Throwable {
        AssetVideo assetVideo;
        AssetVideo assetVideo2;
        SpotlightCta spotlightCta;
        DefaultConstructorMarker defaultConstructorMarker;
        HotspotDetail hotspotDetail;
        spotlightDto.getClass();
        String str = spotlightDto.f46800a;
        List list = spotlightDto.f46801b;
        int i2 = 10;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            SpotlightSlideDto spotlightSlideDto = (SpotlightSlideDto) it.next();
            String str2 = spotlightSlideDto.f46818a;
            String str3 = spotlightSlideDto.f46819b;
            Asset assetA = AssetMapperKt.a(spotlightSlideDto.f46820c);
            float f2 = spotlightSlideDto.d;
            AssetVideoDto assetVideoDto = spotlightSlideDto.f46821e;
            if (assetVideoDto != null) {
                Object objC = AssetMapperKt.c(assetVideoDto);
                ResultKt.b(objC);
                assetVideo = (AssetVideo) objC;
            } else {
                assetVideo = null;
            }
            AssetVideoDto assetVideoDto2 = spotlightSlideDto.f46822f;
            if (assetVideoDto2 != null) {
                Object objC2 = AssetMapperKt.c(assetVideoDto2);
                ResultKt.b(objC2);
                assetVideo2 = (AssetVideo) objC2;
            } else {
                assetVideo2 = null;
            }
            List list2 = spotlightSlideDto.g;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, i2));
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                SpotlightHotspotDto spotlightHotspotDto = (SpotlightHotspotDto) it2.next();
                String str4 = spotlightHotspotDto.f46810a;
                Iterator it3 = it;
                SpotlightPositionDto spotlightPositionDto = spotlightHotspotDto.f46811b;
                AssetVideo assetVideo3 = assetVideo;
                String str5 = str2;
                SpotlightPosition spotlightPosition = new SpotlightPosition(spotlightPositionDto.f46815b, spotlightPositionDto.f46814a);
                Asset assetA2 = AssetMapperKt.a(spotlightHotspotDto.f46812c);
                SpotlightHotspotContentDto spotlightHotspotContentDto = spotlightHotspotDto.d;
                String str6 = str3;
                String str7 = spotlightHotspotContentDto.f46803a;
                SpotlightHotspotDetailDto spotlightHotspotDetailDto = spotlightHotspotContentDto.f46804b;
                if (spotlightHotspotDetailDto != null) {
                    String str8 = spotlightHotspotDetailDto.f46806a;
                    String str9 = spotlightHotspotDetailDto.f46807b;
                    AssetImage assetImageB = AssetMapperKt.b(spotlightHotspotDetailDto.f46808c);
                    SpotlightCtaDto spotlightCtaDto = spotlightHotspotDetailDto.d;
                    String str10 = spotlightCtaDto.f46796a;
                    ContributionLinkLegacyDto contributionLinkLegacyDto = spotlightCtaDto.f46797b;
                    LinkTypeDto linkTypeDto = contributionLinkLegacyDto.f46030a;
                    String str11 = contributionLinkLegacyDto.f46031b;
                    if (str11 == null) {
                        str11 = "";
                    }
                    defaultConstructorMarker = null;
                    hotspotDetail = new HotspotDetail(str8, str9, assetImageB, new SpotlightCta(str10, LinkTypeMapperKt.a(linkTypeDto, str11, null)));
                } else {
                    defaultConstructorMarker = null;
                    hotspotDetail = null;
                }
                arrayList2.add(new SpotlightHotspot(str4, spotlightPosition, assetA2, new HotspotContent(str7, hotspotDetail, defaultConstructorMarker)));
                it = it3;
                assetVideo = assetVideo3;
                str2 = str5;
                str3 = str6;
                assetA = assetA;
                f2 = f2;
                assetVideo2 = assetVideo2;
                it2 = it2;
                str = str;
                arrayList = arrayList;
                spotlightSlideDto = spotlightSlideDto;
            }
            Iterator it4 = it;
            String str12 = str;
            ArrayList arrayList3 = arrayList;
            AssetVideo assetVideo4 = assetVideo;
            String str13 = str2;
            String str14 = str3;
            Asset asset = assetA;
            float f3 = f2;
            AssetVideo assetVideo5 = assetVideo2;
            FeatureTheme featureThemeA = FeatureThemeMapperKt.a(spotlightSlideDto.f46823h);
            SpotlightCtaDto spotlightCtaDto2 = spotlightSlideDto.f46824i;
            if (spotlightCtaDto2 != null) {
                String str15 = spotlightCtaDto2.f46796a;
                ContributionLinkLegacyDto contributionLinkLegacyDto2 = spotlightCtaDto2.f46797b;
                LinkTypeDto linkTypeDto2 = contributionLinkLegacyDto2.f46030a;
                String str16 = contributionLinkLegacyDto2.f46031b;
                spotlightCta = new SpotlightCta(str15, LinkTypeMapperKt.a(linkTypeDto2, str16 == null ? "" : str16, null));
            } else {
                spotlightCta = null;
            }
            arrayList3.add(new SpotlightSlide(str13, str14, asset, f3, assetVideo4, assetVideo5, arrayList2, featureThemeA, spotlightCta));
            arrayList = arrayList3;
            it = it4;
            str = str12;
            i2 = 10;
        }
        return new Spotlight(str, arrayList);
    }
}
