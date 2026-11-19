package com.vuitton.android.data.dto.linktype.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.linktype.ContributionLinkAICompanionDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkAppointmentCreateDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkAudioGuideDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkBookingFormDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkCareServiceCreateDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkCategoryDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkExclusiveOfferDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkImmersiveArticleDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkMonogramDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkMyLvDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkNativeStoryDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkOtherDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkPortalDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkProductDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkProductListDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkPushNotificationDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkSeoLandingPageDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkShadeFinderDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkSpotlightDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkUnknownDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkWebViewDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkWishlistDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkWishlistSharedDto;
import com.vuitton.foundation.model.domain.model.booking.ExperienceId;
import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.v40;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ContributionLinkMapperKt {
    public static final ContributionLink a(ContributionLinkDto contributionLinkDto) {
        contributionLinkDto.getClass();
        if (contributionLinkDto instanceof ContributionLinkAICompanionDto) {
            return ContributionLink.AICompanion.INSTANCE;
        }
        if (contributionLinkDto instanceof ContributionLinkCategoryDto) {
            ContributionLinkCategoryDto.Data data = ((ContributionLinkCategoryDto) contributionLinkDto).f46015b;
            return data != null ? new ContributionLink.Category(data.f46017a) : ContributionLink.Unknown.INSTANCE;
        }
        if (contributionLinkDto instanceof ContributionLinkExclusiveOfferDto) {
            ContributionLinkExclusiveOfferDto.Data data2 = ((ContributionLinkExclusiveOfferDto) contributionLinkDto).f46021b;
            return data2 != null ? new ContributionLink.ExclusiveOffer(data2.f46023a) : ContributionLink.Unknown.INSTANCE;
        }
        if (contributionLinkDto instanceof ContributionLinkImmersiveArticleDto) {
            ContributionLinkImmersiveArticleDto.Data data3 = ((ContributionLinkImmersiveArticleDto) contributionLinkDto).f46026b;
            return data3 != null ? new ContributionLink.ImmersiveArticle(data3.f46028a) : ContributionLink.Unknown.INSTANCE;
        }
        if (contributionLinkDto instanceof ContributionLinkWishlistDto) {
            return ContributionLink.Wishlist.INSTANCE;
        }
        if (contributionLinkDto instanceof ContributionLinkWishlistSharedDto) {
            ContributionLinkWishlistSharedDto.Data data4 = ((ContributionLinkWishlistSharedDto) contributionLinkDto).f46093b;
            String str = data4.f46096a;
            List<String> list = data4.f46097b;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            for (String str2 : list) {
                SkuId.Companion companion = SkuId.INSTANCE;
                str2.getClass();
                arrayList.add(new SkuId(str2));
            }
            return new ContributionLink.WishlistShared(str, arrayList);
        }
        if (contributionLinkDto instanceof ContributionLinkMyLvDto) {
            return ContributionLink.MyLv.INSTANCE;
        }
        if (contributionLinkDto instanceof ContributionLinkAppointmentCreateDto) {
            ContributionLinkAppointmentCreateDto.Data data5 = ((ContributionLinkAppointmentCreateDto) contributionLinkDto).f45997b;
            return data5 != null ? new ContributionLink.AppointmentCreate(data5.f45999a) : ContributionLink.Unknown.INSTANCE;
        }
        if (contributionLinkDto instanceof ContributionLinkCareServiceCreateDto) {
            return ContributionLink.CareServiceCreate.INSTANCE;
        }
        if (contributionLinkDto instanceof ContributionLinkMonogramDto) {
            ContributionLinkMonogramDto.Data data6 = ((ContributionLinkMonogramDto) contributionLinkDto).f46035b;
            return data6 != null ? new ContributionLink.Monogram(data6.f46037a, data6.f46038b) : ContributionLink.Unknown.INSTANCE;
        }
        if (contributionLinkDto instanceof ContributionLinkNativeStoryDto) {
            ContributionLinkNativeStoryDto.Data data7 = ((ContributionLinkNativeStoryDto) contributionLinkDto).f46043b;
            return data7 != null ? new ContributionLink.NativeStory(data7.f46045a) : ContributionLink.Unknown.INSTANCE;
        }
        if (contributionLinkDto instanceof ContributionLinkOtherDto) {
            ContributionLinkOtherDto.Data data8 = ((ContributionLinkOtherDto) contributionLinkDto).f46048b;
            return data8 != null ? new ContributionLink.Other(data8.f46050a) : ContributionLink.Unknown.INSTANCE;
        }
        if (contributionLinkDto instanceof ContributionLinkPortalDto) {
            ContributionLinkPortalDto.Data data9 = ((ContributionLinkPortalDto) contributionLinkDto).f46053b;
            return data9 != null ? new ContributionLink.Portal(data9.f46055a) : ContributionLink.Unknown.INSTANCE;
        }
        if (contributionLinkDto instanceof ContributionLinkProductDto) {
            ContributionLinkProductDto.Data data10 = ((ContributionLinkProductDto) contributionLinkDto).f46058b;
            if (data10 == null) {
                return ContributionLink.Unknown.INSTANCE;
            }
            String str3 = data10.f46060a;
            SkuId.Companion companion2 = SkuId.INSTANCE;
            str3.getClass();
            return new ContributionLink.Product(str3, data10.f46061b, null);
        }
        if (contributionLinkDto instanceof ContributionLinkProductListDto) {
            ContributionLinkProductListDto.Data data11 = ((ContributionLinkProductListDto) contributionLinkDto).f46064b;
            if (data11 == null) {
                return ContributionLink.Unknown.INSTANCE;
            }
            List<String> list2 = data11.f46067a;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
            for (String str4 : list2) {
                SkuId.Companion companion3 = SkuId.INSTANCE;
                str4.getClass();
                arrayList2.add(new SkuId(str4));
            }
            return new ContributionLink.ProductList(arrayList2);
        }
        if (contributionLinkDto instanceof ContributionLinkPushNotificationDto) {
            return ContributionLink.PushNotification.INSTANCE;
        }
        if (contributionLinkDto instanceof ContributionLinkSeoLandingPageDto) {
            ContributionLinkSeoLandingPageDto.Data data12 = ((ContributionLinkSeoLandingPageDto) contributionLinkDto).f46072b;
            return data12 != null ? new ContributionLink.SeoLandingPage(data12.f46074a) : ContributionLink.Unknown.INSTANCE;
        }
        if (contributionLinkDto instanceof ContributionLinkShadeFinderDto) {
            return ContributionLink.ShadeFinder.INSTANCE;
        }
        if (contributionLinkDto instanceof ContributionLinkSpotlightDto) {
            ContributionLinkSpotlightDto.Data data13 = ((ContributionLinkSpotlightDto) contributionLinkDto).f46079b;
            return data13 != null ? new ContributionLink.Spotlight(data13.f46081a) : ContributionLink.Unknown.INSTANCE;
        }
        if (contributionLinkDto instanceof ContributionLinkWebViewDto) {
            ContributionLinkWebViewDto.Data data14 = ((ContributionLinkWebViewDto) contributionLinkDto).f46086b;
            return data14 != null ? new ContributionLink.WebView(data14.f46088a) : ContributionLink.Unknown.INSTANCE;
        }
        if (contributionLinkDto instanceof ContributionLinkBookingFormDto) {
            ContributionLinkBookingFormDto.Data data15 = ((ContributionLinkBookingFormDto) contributionLinkDto).f46008b;
            if (data15 == null) {
                return ContributionLink.Unknown.INSTANCE;
            }
            String str5 = data15.f46010a;
            ExperienceId.Companion companion4 = ExperienceId.INSTANCE;
            str5.getClass();
            return new ContributionLink.BookingExperience(str5, null);
        }
        if (contributionLinkDto instanceof ContributionLinkUnknownDto) {
            return ContributionLink.Unknown.INSTANCE;
        }
        if (contributionLinkDto instanceof ContributionLinkAudioGuideDto) {
            ContributionLinkAudioGuideDto.Data data16 = ((ContributionLinkAudioGuideDto) contributionLinkDto).f46002b;
            return data16 != null ? new ContributionLink.AudioGuide(data16.f46004a) : ContributionLink.Unknown.INSTANCE;
        }
        v40.g();
        return null;
    }
}
