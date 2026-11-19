package com.vuitton.android.presentation.screen.booking.form.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/models/BookingDisclaimerUiModel;", "", "", "value", "Lcom/vuitton/android/presentation/screen/booking/form/models/DisclaimerActionUiModel;", "action", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/DisclaimerActionUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BookingDisclaimerUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f54493a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DisclaimerActionUiModel f54494b;

    public BookingDisclaimerUiModel(String str, DisclaimerActionUiModel disclaimerActionUiModel) {
        str.getClass();
        this.f54493a = str;
        this.f54494b = disclaimerActionUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingDisclaimerUiModel)) {
            return false;
        }
        BookingDisclaimerUiModel bookingDisclaimerUiModel = (BookingDisclaimerUiModel) obj;
        return Intrinsics.c(this.f54493a, bookingDisclaimerUiModel.f54493a) && Intrinsics.c(this.f54494b, bookingDisclaimerUiModel.f54494b);
    }

    public final int hashCode() {
        int iHashCode = this.f54493a.hashCode() * 31;
        DisclaimerActionUiModel disclaimerActionUiModel = this.f54494b;
        return iHashCode + (disclaimerActionUiModel == null ? 0 : disclaimerActionUiModel.hashCode());
    }

    public final String toString() {
        return "BookingDisclaimerUiModel(value=" + this.f54493a + ", action=" + this.f54494b + ")";
    }

    public /* synthetic */ BookingDisclaimerUiModel(String str, DisclaimerActionUiModel disclaimerActionUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : disclaimerActionUiModel);
    }
}
