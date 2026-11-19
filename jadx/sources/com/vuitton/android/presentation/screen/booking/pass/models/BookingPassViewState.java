package com.vuitton.android.presentation.screen.booking.pass.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/pass/models/BookingPassViewState;", "", "Loading", "Success", "Error", "Lcom/vuitton/android/presentation/screen/booking/pass/models/BookingPassViewState$Error;", "Lcom/vuitton/android/presentation/screen/booking/pass/models/BookingPassViewState$Loading;", "Lcom/vuitton/android/presentation/screen/booking/pass/models/BookingPassViewState$Success;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface BookingPassViewState {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/pass/models/BookingPassViewState$Error;", "Lcom/vuitton/android/presentation/screen/booking/pass/models/BookingPassViewState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Error implements BookingPassViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Error f54649a = new Error();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Error);
        }

        public final int hashCode() {
            return 567713079;
        }

        public final String toString() {
            return "Error";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/pass/models/BookingPassViewState$Loading;", "Lcom/vuitton/android/presentation/screen/booking/pass/models/BookingPassViewState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Loading implements BookingPassViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Loading f54650a = new Loading();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Loading);
        }

        public final int hashCode() {
            return 1927060651;
        }

        public final String toString() {
            return "Loading";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/pass/models/BookingPassViewState$Success;", "Lcom/vuitton/android/presentation/screen/booking/pass/models/BookingPassViewState;", "Lcom/vuitton/android/presentation/screen/booking/pass/models/BookingPassUiModel;", "bookingPass", "<init>", "(Lcom/vuitton/android/presentation/screen/booking/pass/models/BookingPassUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Success implements BookingPassViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BookingPassUiModel f54651a;

        public Success(BookingPassUiModel bookingPassUiModel) {
            bookingPassUiModel.getClass();
            this.f54651a = bookingPassUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Success) && Intrinsics.c(this.f54651a, ((Success) obj).f54651a);
        }

        public final int hashCode() {
            return this.f54651a.hashCode();
        }

        public final String toString() {
            return "Success(bookingPass=" + this.f54651a + ")";
        }
    }
}
