package com.vuitton.android.presentation.screen.booking.list.models;

import com.vuitton.foundation.model.domain.model.booking.BookingId;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/list/models/ExperienceBottomSheet;", "", "CancelWarning", "Lcom/vuitton/android/presentation/screen/booking/list/models/ExperienceBottomSheet$CancelWarning;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ExperienceBottomSheet {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/list/models/ExperienceBottomSheet$CancelWarning;", "Lcom/vuitton/android/presentation/screen/booking/list/models/ExperienceBottomSheet;", "Lcom/vuitton/foundation/model/domain/model/booking/BookingId;", "bookingId", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CancelWarning implements ExperienceBottomSheet {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54626a;

        public CancelWarning(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f54626a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CancelWarning)) {
                return false;
            }
            String str = ((CancelWarning) obj).f54626a;
            BookingId.Companion companion = BookingId.INSTANCE;
            return this.f54626a.equals(str);
        }

        public final int hashCode() {
            BookingId.Companion companion = BookingId.INSTANCE;
            return this.f54626a.hashCode();
        }

        public final String toString() {
            BookingId.Companion companion = BookingId.INSTANCE;
            return fc.h("CancelWarning(bookingId=", this.f54626a, ")");
        }
    }
}
