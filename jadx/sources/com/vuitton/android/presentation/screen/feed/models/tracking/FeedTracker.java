package com.vuitton.android.presentation.screen.feed.models.tracking;

import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModel;
import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModelKt;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortPriceUiModel;
import com.vuitton.android.presentation.tracking.GA4TrackingUiModel;
import com.vuitton.android.presentation.tracking.GA4TrackingUiModelKt;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;", "", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "<init>", "(Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FeedTracker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnalyticsTracker f57933a;

    @Inject
    public FeedTracker(AnalyticsTracker analyticsTracker) {
        analyticsTracker.getClass();
        this.f57933a = analyticsTracker;
    }

    public final void a(FeedTab feedTab, String str, String str2, int i2) {
        feedTab.getClass();
        str2.getClass();
        this.f57933a.a(FeedTrackingUiModelKt.a(new FeedTrackingUiModel.OnHitCarouselItemEvent(feedTab, str, str2, i2)));
    }

    public final void b(FeedTab feedTab, String str, String str2, int i2) {
        feedTab.getClass();
        str2.getClass();
        this.f57933a.a(FeedTrackingUiModelKt.a(new FeedTrackingUiModel.CarouselSwipeEvent(feedTab, str, str2, i2)));
    }

    public final void c(List list) {
        list.getClass();
        String strA = CarouselSItemUiModelKt.a(list);
        List list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        int i2 = 0;
        for (Object obj : list2) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt.t0();
                throw null;
            }
            arrayList.add(((CarouselSItemUiModel) obj).a(i2, "homepage.most_purchased_with", "Most purchased with"));
            i2 = i3;
        }
        this.f57933a.a(GA4TrackingUiModelKt.a(new GA4TrackingUiModel.ViewItemListLoaded("feed", strA, "homepage.most_purchased_with", "Most purchased with", arrayList)));
    }

    public final void d(CarouselSItemUiModel carouselSItemUiModel, int i2) {
        carouselSItemUiModel.getClass();
        ProductShortPriceUiModel productShortPriceUiModel = carouselSItemUiModel.f50799e;
        this.f57933a.a(GA4TrackingUiModelKt.a(new GA4TrackingUiModel.SelectItemClicked("feed", productShortPriceUiModel != null ? productShortPriceUiModel.d : null, "homepage.most_purchased_with", "Most purchased with", carouselSItemUiModel.f50796a, carouselSItemUiModel.f50797b, productShortPriceUiModel != null ? productShortPriceUiModel.f62983c : null, i2, null, null, 768, null)));
    }
}
