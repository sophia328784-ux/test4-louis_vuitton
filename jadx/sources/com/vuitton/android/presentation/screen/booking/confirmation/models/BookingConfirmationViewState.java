package com.vuitton.android.presentation.screen.booking.confirmation.models;

import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModel;
import defpackage.d21;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationViewState;", "", "Loading", "Success", "Error", "Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationViewState$Error;", "Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationViewState$Loading;", "Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationViewState$Success;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface BookingConfirmationViewState {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationViewState$Error;", "Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationViewState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Error implements BookingConfirmationViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Error f54394a = new Error();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Error);
        }

        public final int hashCode() {
            return -1214763593;
        }

        public final String toString() {
            return "Error";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationViewState$Loading;", "Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationViewState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Loading implements BookingConfirmationViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Loading f54395a = new Loading();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Loading);
        }

        public final int hashCode() {
            return -1636037333;
        }

        public final String toString() {
            return "Loading";
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationViewState$Success;", "Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationViewState;", "", "Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;", "bookingList", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Success implements BookingConfirmationViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f54396a;

        public Success(List<BookingUiModel> list) {
            list.getClass();
            this.f54396a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Success) && Intrinsics.c(this.f54396a, ((Success) obj).f54396a);
        }

        public final int hashCode() {
            return this.f54396a.hashCode();
        }

        public final String toString() {
            return d21.o("Success(bookingList=", ")", this.f54396a);
        }
    }
}
