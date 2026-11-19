package com.vuitton.android.data.dto.linktype.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.linktype.LinkTypeDto;
import com.vuitton.foundation.model.domain.model.booking.ExperienceId;
import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.v40;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LinkTypeMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f46102a;

        static {
            int[] iArr = new int[LinkTypeDto.values().length];
            try {
                iArr[LinkTypeDto.AI_COMPANION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LinkTypeDto.CATEGORY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LinkTypeDto.EXCLUSIVE_OFFER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LinkTypeDto.IMMERSIVE_ARTICLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[LinkTypeDto.MONOGRAM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[LinkTypeDto.PORTAL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[LinkTypeDto.PRODUCT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[LinkTypeDto.PRODUCT_LIST.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[LinkTypeDto.PUSH_NOTIFICATION.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[LinkTypeDto.SHADE_FINDER.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[LinkTypeDto.SPOTLIGHT.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[LinkTypeDto.STORY.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[LinkTypeDto.WEBVIEW.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[LinkTypeDto.REPAIR_CREATE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[LinkTypeDto.SEO_LANDING_PAGE.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[LinkTypeDto.OSA.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[LinkTypeDto.OTHER.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[LinkTypeDto.BOOKING_FORM.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[LinkTypeDto.WISHLIST.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[LinkTypeDto.WISHLIST_SHARED.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[LinkTypeDto.MY_LV.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[LinkTypeDto.UNKNOWN.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            f46102a = iArr;
        }
    }

    public static final ContributionLink a(LinkTypeDto linkTypeDto, String str, String str2) {
        linkTypeDto.getClass();
        switch (WhenMappings.f46102a[linkTypeDto.ordinal()]) {
            case 1:
                return ContributionLink.AICompanion.INSTANCE;
            case 2:
                return new ContributionLink.Category(str);
            case 3:
                return new ContributionLink.ExclusiveOffer(str);
            case 4:
                return new ContributionLink.ImmersiveArticle(str);
            case 5:
                if (str2 == null) {
                    str2 = new String();
                }
                return new ContributionLink.Monogram(str, str2);
            case 6:
                return new ContributionLink.Portal(str);
            case 7:
                SkuId.Companion companion = SkuId.INSTANCE;
                return new ContributionLink.Product(str, false, null);
            case 8:
                List<String> listSplit$default = StringsKt__StringsKt.split$default(str, new String[]{","}, false, 0, 6, null);
                ArrayList arrayList = new ArrayList(CollectionsKt.t(listSplit$default, 10));
                for (String str3 : listSplit$default) {
                    SkuId.Companion companion2 = SkuId.INSTANCE;
                    str3.getClass();
                    arrayList.add(new SkuId(str3));
                }
                return new ContributionLink.ProductList(arrayList);
            case 9:
                return ContributionLink.PushNotification.INSTANCE;
            case 10:
                return ContributionLink.ShadeFinder.INSTANCE;
            case 11:
                return new ContributionLink.Spotlight(str);
            case 12:
                return new ContributionLink.NativeStory(str);
            case 13:
                return new ContributionLink.WebView(str);
            case 14:
                return ContributionLink.CareServiceCreate.INSTANCE;
            case 15:
                return new ContributionLink.SeoLandingPage(str);
            case 16:
                return new ContributionLink.AppointmentCreate(str);
            case 17:
                return new ContributionLink.Other(str);
            case 18:
                ExperienceId.Companion companion3 = ExperienceId.INSTANCE;
                return new ContributionLink.BookingExperience(str, null);
            case 19:
                return ContributionLink.Wishlist.INSTANCE;
            case 20:
                return ContributionLink.Unknown.INSTANCE;
            case 21:
                return ContributionLink.MyLv.INSTANCE;
            case 22:
                return ContributionLink.Unknown.INSTANCE;
            default:
                v40.g();
                return null;
        }
    }
}
