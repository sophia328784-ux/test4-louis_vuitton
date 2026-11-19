package com.vuitton.android.presentation.screen.feed.models;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/vuitton/android/presentation/screen/feed/models/AutomationTagsFeed$View", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class AutomationTagsFeed$View {
    public static String a(FeedTab feedTab) {
        feedTab.getClass();
        return AutomationTagsFeedKt.a(feedTab).concat("_carouselLMultiple_view");
    }

    public static String b(FeedTab feedTab) {
        feedTab.getClass();
        return AutomationTagsFeedKt.a(feedTab).concat("_carouselLSingle_view");
    }

    public static String c(FeedTab feedTab) {
        feedTab.getClass();
        return AutomationTagsFeedKt.a(feedTab).concat("_carouselM_view");
    }

    public static String d(FeedTab feedTab) {
        feedTab.getClass();
        return AutomationTagsFeedKt.a(feedTab).concat("_highlight_view");
    }

    public static String e(FeedTab feedTab) {
        feedTab.getClass();
        return AutomationTagsFeedKt.a(feedTab).concat("_slideshow_view");
    }
}
