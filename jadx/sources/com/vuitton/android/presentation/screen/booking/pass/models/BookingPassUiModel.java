package com.vuitton.android.presentation.screen.booking.pass.models;

import com.vuitton.android.presentation.screen.booking.list.models.BookingInfoUiModel;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/pass/models/BookingPassUiModel;", "", "", "title", "surtitle", "thumbnailUrl", "", "Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;", "information", "qrCodeUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BookingPassUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f54645a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f54646b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f54647c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f54648e;

    public BookingPassUiModel(String str, String str2, String str3, List<BookingInfoUiModel> list, String str4) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        list.getClass();
        str4.getClass();
        this.f54645a = str;
        this.f54646b = str2;
        this.f54647c = str3;
        this.d = list;
        this.f54648e = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingPassUiModel)) {
            return false;
        }
        BookingPassUiModel bookingPassUiModel = (BookingPassUiModel) obj;
        return Intrinsics.c(this.f54645a, bookingPassUiModel.f54645a) && Intrinsics.c(this.f54646b, bookingPassUiModel.f54646b) && Intrinsics.c(this.f54647c, bookingPassUiModel.f54647c) && Intrinsics.c(this.d, bookingPassUiModel.d) && Intrinsics.c(this.f54648e, bookingPassUiModel.f54648e);
    }

    public final int hashCode() {
        return this.f54648e.hashCode() + n00.a(fc.b(fc.b(this.f54645a.hashCode() * 31, 31, this.f54646b), 31, this.f54647c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("BookingPassUiModel(title=", this.f54645a, ", surtitle=", this.f54646b, ", thumbnailUrl=");
        d21.z(this.f54647c, ", information=", ", qrCodeUrl=", sbS, this.d);
        return n00.r(this.f54648e, ")", sbS);
    }
}
