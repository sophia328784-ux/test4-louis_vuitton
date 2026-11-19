package com.vuitton.android.presentation.screen.booking.list.models;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;", "", "", "title", "value", "Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoTypeUiModel;", "type", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoTypeUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BookingInfoUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f54607a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f54608b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BookingInfoTypeUiModel f54609c;

    public BookingInfoUiModel(String str, String str2, BookingInfoTypeUiModel bookingInfoTypeUiModel) {
        str.getClass();
        str2.getClass();
        bookingInfoTypeUiModel.getClass();
        this.f54607a = str;
        this.f54608b = str2;
        this.f54609c = bookingInfoTypeUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingInfoUiModel)) {
            return false;
        }
        BookingInfoUiModel bookingInfoUiModel = (BookingInfoUiModel) obj;
        return Intrinsics.c(this.f54607a, bookingInfoUiModel.f54607a) && Intrinsics.c(this.f54608b, bookingInfoUiModel.f54608b) && this.f54609c == bookingInfoUiModel.f54609c;
    }

    public final int hashCode() {
        return this.f54609c.hashCode() + fc.b(this.f54607a.hashCode() * 31, 31, this.f54608b);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("BookingInfoUiModel(title=", this.f54607a, ", value=", this.f54608b, ", type=");
        sbS.append(this.f54609c);
        sbS.append(")");
        return sbS.toString();
    }
}
