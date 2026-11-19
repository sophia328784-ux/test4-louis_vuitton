package com.vuitton.android.presentation.screen.booking.summary.models;

import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet;", "", "ExitWarning", "ExpiredPrebook", "BookingConflict", "Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet$BookingConflict;", "Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet$ExitWarning;", "Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet$ExpiredPrebook;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface SummaryBottomSheet {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet$BookingConflict;", "Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet;", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "message", "<init>", "(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BookingConflict implements SummaryBottomSheet {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final StringResourceUiModel f54832a;

        public BookingConflict(StringResourceUiModel stringResourceUiModel) {
            stringResourceUiModel.getClass();
            this.f54832a = stringResourceUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BookingConflict) && Intrinsics.c(this.f54832a, ((BookingConflict) obj).f54832a);
        }

        public final int hashCode() {
            return this.f54832a.hashCode();
        }

        public final String toString() {
            return "BookingConflict(message=" + this.f54832a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet$ExitWarning;", "Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ExitWarning implements SummaryBottomSheet {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ExitWarning f54833a = new ExitWarning();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ExitWarning);
        }

        public final int hashCode() {
            return -42505818;
        }

        public final String toString() {
            return "ExitWarning";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet$ExpiredPrebook;", "Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ExpiredPrebook implements SummaryBottomSheet {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ExpiredPrebook f54834a = new ExpiredPrebook();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ExpiredPrebook);
        }

        public final int hashCode() {
            return 1033419551;
        }

        public final String toString() {
            return "ExpiredPrebook";
        }
    }
}
