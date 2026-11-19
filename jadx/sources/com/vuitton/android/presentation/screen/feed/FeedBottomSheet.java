package com.vuitton.android.presentation.screen.feed;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/FeedBottomSheet;", "", "CalendarEvent", "Lcom/vuitton/android/presentation/screen/feed/FeedBottomSheet$CalendarEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class FeedBottomSheet {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/FeedBottomSheet$CalendarEvent;", "Lcom/vuitton/android/presentation/screen/feed/FeedBottomSheet;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CalendarEvent extends FeedBottomSheet {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CalendarEvent f57587a = new CalendarEvent(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CalendarEvent);
        }

        public final int hashCode() {
            return -913304845;
        }

        public final String toString() {
            return "CalendarEvent";
        }
    }

    public FeedBottomSheet(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
