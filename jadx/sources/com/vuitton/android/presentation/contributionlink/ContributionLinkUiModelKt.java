package com.vuitton.android.presentation.contributionlink;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ContributionLinkUiModelKt {
    public static final ContributionLinkUiModel a(ContributionLink contributionLink) {
        contributionLink.getClass();
        if (contributionLink instanceof ContributionLink.AICompanion) {
            return ContributionLinkUiModel.AICompanion.f51163b;
        }
        if (contributionLink.equals(ContributionLink.Wishlist.INSTANCE)) {
            return ContributionLinkUiModel.Wishlist.f51186b;
        }
        if (contributionLink instanceof ContributionLink.WishlistShared) {
            ContributionLink.WishlistShared wishlistShared = (ContributionLink.WishlistShared) contributionLink;
            String str = wishlistShared.f67470a;
            List list = wishlistShared.f67471b;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str2 = ((SkuId) it.next()).f67933a;
                SkuIdUiModel.f61763c.getClass();
                SkuIdUiModel.Companion.c(str2);
                arrayList.add(new SkuIdUiModel(str2));
            }
            return new ContributionLinkUiModel.WishlistShared(str, arrayList);
        }
        if (contributionLink.equals(ContributionLink.MyLv.INSTANCE)) {
            return ContributionLinkUiModel.MyLv.f51171b;
        }
        if (contributionLink instanceof ContributionLink.Category) {
            return new ContributionLinkUiModel.Category(((ContributionLink.Category) contributionLink).f67432a);
        }
        if (contributionLink instanceof ContributionLink.ExclusiveOffer) {
            return new ContributionLinkUiModel.ExclusiveOffer(((ContributionLink.ExclusiveOffer) contributionLink).f67435a);
        }
        if (contributionLink instanceof ContributionLink.ImmersiveArticle) {
            return new ContributionLinkUiModel.ImmersiveArticle(((ContributionLink.ImmersiveArticle) contributionLink).f67439a);
        }
        if (contributionLink instanceof ContributionLink.AppointmentCreate) {
            return new ContributionLinkUiModel.Osa(((ContributionLink.AppointmentCreate) contributionLink).f67425a);
        }
        if (!contributionLink.equals(ContributionLink.CareServiceCreate.INSTANCE) && !(contributionLink instanceof ContributionLink.Generic)) {
            if (contributionLink instanceof ContributionLink.Monogram) {
                ContributionLink.Monogram monogram = (ContributionLink.Monogram) contributionLink;
                return new ContributionLinkUiModel.Monogram(monogram.f67441a, monogram.f67442b);
            }
            if (contributionLink instanceof ContributionLink.NativeStory) {
                return new ContributionLinkUiModel.Story(((ContributionLink.NativeStory) contributionLink).f67445a);
            }
            if (contributionLink instanceof ContributionLink.Other) {
                return new ContributionLinkUiModel.Other(((ContributionLink.Other) contributionLink).f67447a);
            }
            if (contributionLink instanceof ContributionLink.Portal) {
                return new ContributionLinkUiModel.Portal(((ContributionLink.Portal) contributionLink).f67449a);
            }
            if (contributionLink instanceof ContributionLink.Product) {
                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                String str3 = ((ContributionLink.Product) contributionLink).f67451a;
                companion.getClass();
                SkuIdUiModel.Companion.c(str3);
                return new ContributionLinkUiModel.Product(str3, false, null);
            }
            if (contributionLink instanceof ContributionLink.ProductList) {
                List list2 = ((ContributionLink.ProductList) contributionLink).f67455a;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    String str4 = ((SkuId) it2.next()).f67933a;
                    SkuIdUiModel.f61763c.getClass();
                    SkuIdUiModel.Companion.c(str4);
                    arrayList2.add(new SkuIdUiModel(str4));
                }
                return new ContributionLinkUiModel.ProductList(arrayList2);
            }
            if (contributionLink.equals(ContributionLink.PushNotification.INSTANCE)) {
                return ContributionLinkUiModel.PushNotification.f51178b;
            }
            if (contributionLink instanceof ContributionLink.SeoLandingPage) {
                return new ContributionLinkUiModel.SeoLandingPage(((ContributionLink.SeoLandingPage) contributionLink).f67458a);
            }
            if (contributionLink.equals(ContributionLink.ShadeFinder.INSTANCE)) {
                return ContributionLinkUiModel.ShadeFinder.f51181b;
            }
            if (contributionLink instanceof ContributionLink.Spotlight) {
                return new ContributionLinkUiModel.Spotlight(((ContributionLink.Spotlight) contributionLink).f67461a);
            }
            if (contributionLink instanceof ContributionLink.Url) {
                return new ContributionLinkUiModel.Other(((ContributionLink.Url) contributionLink).f67464a);
            }
            if (contributionLink instanceof ContributionLink.WebView) {
                return new ContributionLinkUiModel.WebView(((ContributionLink.WebView) contributionLink).f67466a);
            }
            if (contributionLink instanceof ContributionLink.BookingExperience) {
                return new ContributionLinkUiModel.BookingExperience(((ContributionLink.BookingExperience) contributionLink).f67429a);
            }
            if (contributionLink instanceof ContributionLink.AudioGuide) {
                return new ContributionLinkUiModel.AudioGuide(((ContributionLink.AudioGuide) contributionLink).f67427a);
            }
            if (contributionLink.equals(ContributionLink.Unknown.INSTANCE)) {
                return ContributionLinkUiModel.Unknown.f51184b;
            }
            v40.g();
            return null;
        }
        return ContributionLinkUiModel.RepairCreate.f51179b;
    }
}
