package com.vuitton.android.presentation.screen.feed;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0006\u0002\u0003\u0004\u0005\u0006\u0007\u0082\u0001\u0006\b\t\n\u000b\f\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/FeedNotification;", "", "CalendarAddingSuccess", "CalendarAddingError", "CalendarRemoveSuccess", "CalendarRemoveError", "NotificationAlreadyEnabled", "ErrorGeneric", "Lcom/vuitton/android/presentation/screen/feed/FeedNotification$CalendarAddingError;", "Lcom/vuitton/android/presentation/screen/feed/FeedNotification$CalendarAddingSuccess;", "Lcom/vuitton/android/presentation/screen/feed/FeedNotification$CalendarRemoveError;", "Lcom/vuitton/android/presentation/screen/feed/FeedNotification$CalendarRemoveSuccess;", "Lcom/vuitton/android/presentation/screen/feed/FeedNotification$ErrorGeneric;", "Lcom/vuitton/android/presentation/screen/feed/FeedNotification$NotificationAlreadyEnabled;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class FeedNotification {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/FeedNotification$CalendarAddingError;", "Lcom/vuitton/android/presentation/screen/feed/FeedNotification;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CalendarAddingError extends FeedNotification {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CalendarAddingError f57608a = new CalendarAddingError(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CalendarAddingError);
        }

        public final int hashCode() {
            return -1044908427;
        }

        public final String toString() {
            return "CalendarAddingError";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/FeedNotification$CalendarAddingSuccess;", "Lcom/vuitton/android/presentation/screen/feed/FeedNotification;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CalendarAddingSuccess extends FeedNotification {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CalendarAddingSuccess f57609a = new CalendarAddingSuccess(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CalendarAddingSuccess);
        }

        public final int hashCode() {
            return 477166896;
        }

        public final String toString() {
            return "CalendarAddingSuccess";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/FeedNotification$CalendarRemoveError;", "Lcom/vuitton/android/presentation/screen/feed/FeedNotification;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CalendarRemoveError extends FeedNotification {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CalendarRemoveError f57610a = new CalendarRemoveError(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CalendarRemoveError);
        }

        public final int hashCode() {
            return -492280974;
        }

        public final String toString() {
            return "CalendarRemoveError";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/FeedNotification$CalendarRemoveSuccess;", "Lcom/vuitton/android/presentation/screen/feed/FeedNotification;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CalendarRemoveSuccess extends FeedNotification {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CalendarRemoveSuccess f57611a = new CalendarRemoveSuccess(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CalendarRemoveSuccess);
        }

        public final int hashCode() {
            return -1023795475;
        }

        public final String toString() {
            return "CalendarRemoveSuccess";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/FeedNotification$ErrorGeneric;", "Lcom/vuitton/android/presentation/screen/feed/FeedNotification;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ErrorGeneric extends FeedNotification {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ErrorGeneric f57612a = new ErrorGeneric(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ErrorGeneric);
        }

        public final int hashCode() {
            return -513682813;
        }

        public final String toString() {
            return "ErrorGeneric";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/FeedNotification$NotificationAlreadyEnabled;", "Lcom/vuitton/android/presentation/screen/feed/FeedNotification;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NotificationAlreadyEnabled extends FeedNotification {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final NotificationAlreadyEnabled f57613a = new NotificationAlreadyEnabled(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NotificationAlreadyEnabled);
        }

        public final int hashCode() {
            return -943827352;
        }

        public final String toString() {
            return "NotificationAlreadyEnabled";
        }
    }

    public FeedNotification(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
