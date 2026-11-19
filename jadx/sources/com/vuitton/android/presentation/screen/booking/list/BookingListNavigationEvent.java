package com.vuitton.android.presentation.screen.booking.list;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/list/BookingListNavigationEvent;", "", "BookingUpdated", "BookingDeleted", "ToOSAForm", "Lcom/vuitton/android/presentation/screen/booking/list/BookingListNavigationEvent$BookingDeleted;", "Lcom/vuitton/android/presentation/screen/booking/list/BookingListNavigationEvent$BookingUpdated;", "Lcom/vuitton/android/presentation/screen/booking/list/BookingListNavigationEvent$ToOSAForm;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface BookingListNavigationEvent {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/list/BookingListNavigationEvent$BookingDeleted;", "Lcom/vuitton/android/presentation/screen/booking/list/BookingListNavigationEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BookingDeleted implements BookingListNavigationEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final BookingDeleted f54568a = new BookingDeleted();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof BookingDeleted);
        }

        public final int hashCode() {
            return 916534627;
        }

        public final String toString() {
            return "BookingDeleted";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/list/BookingListNavigationEvent$BookingUpdated;", "Lcom/vuitton/android/presentation/screen/booking/list/BookingListNavigationEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BookingUpdated implements BookingListNavigationEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final BookingUpdated f54569a = new BookingUpdated();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof BookingUpdated);
        }

        public final int hashCode() {
            return -868358651;
        }

        public final String toString() {
            return "BookingUpdated";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/list/BookingListNavigationEvent$ToOSAForm;", "Lcom/vuitton/android/presentation/screen/booking/list/BookingListNavigationEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToOSAForm implements BookingListNavigationEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToOSAForm f54570a = new ToOSAForm();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToOSAForm);
        }

        public final int hashCode() {
            return -1431846749;
        }

        public final String toString() {
            return "ToOSAForm";
        }
    }
}
