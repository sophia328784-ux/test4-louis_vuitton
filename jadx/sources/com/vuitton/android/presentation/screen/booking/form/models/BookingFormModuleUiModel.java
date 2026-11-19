package com.vuitton.android.presentation.screen.booking.form.models;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0085\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\t\u0012\b\b\u0002\u0010\f\u001a\u00020\t\u0012\b\b\u0002\u0010\r\u001a\u00020\t\u0012\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0012\u001a\u00020\t¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;", "", "", b.a.f24015b, "title", "subtitle", "description", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingDisclaimerUiModel;", "disclaimer", "", "isExpanded", "isOptional", "isEnabled", "updateFormAfterEditing", "", "disruptedStepsAfterEditing", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;", DbParams.KEY_DATA, "isLoading", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingDisclaimerUiModel;ZZZZLjava/util/List;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BookingFormModuleUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f54536a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f54537b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f54538c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final BookingDisclaimerUiModel f54539e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f54540f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f54541h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f54542i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f54543j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final BookingFormModuleDataUiModel f54544k;
    public final boolean l;

    public BookingFormModuleUiModel(String str, String str2, String str3, String str4, BookingDisclaimerUiModel bookingDisclaimerUiModel, boolean z, boolean z2, boolean z3, boolean z4, List list, BookingFormModuleDataUiModel bookingFormModuleDataUiModel, boolean z5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : bookingDisclaimerUiModel, (i2 & 32) != 0 ? false : z, (i2 & 64) != 0 ? false : z2, (i2 & 128) != 0 ? false : z3, (i2 & 256) != 0 ? false : z4, (i2 & 512) != 0 ? EmptyList.f71768b : list, bookingFormModuleDataUiModel, (i2 & 2048) != 0 ? false : z5);
    }

    public static BookingFormModuleUiModel a(BookingFormModuleUiModel bookingFormModuleUiModel, boolean z, boolean z2, BookingFormModuleDataUiModel bookingFormModuleDataUiModel, boolean z3, int i2) {
        String str = bookingFormModuleUiModel.f54536a;
        String str2 = bookingFormModuleUiModel.f54537b;
        String str3 = bookingFormModuleUiModel.f54538c;
        String str4 = bookingFormModuleUiModel.d;
        BookingDisclaimerUiModel bookingDisclaimerUiModel = bookingFormModuleUiModel.f54539e;
        if ((i2 & 32) != 0) {
            z = bookingFormModuleUiModel.f54540f;
        }
        boolean z4 = z;
        boolean z5 = bookingFormModuleUiModel.g;
        boolean z6 = (i2 & 128) != 0 ? bookingFormModuleUiModel.f54541h : z2;
        boolean z7 = bookingFormModuleUiModel.f54542i;
        List list = bookingFormModuleUiModel.f54543j;
        BookingFormModuleDataUiModel bookingFormModuleDataUiModel2 = (i2 & 1024) != 0 ? bookingFormModuleUiModel.f54544k : bookingFormModuleDataUiModel;
        boolean z8 = (i2 & 2048) != 0 ? bookingFormModuleUiModel.l : z3;
        bookingFormModuleUiModel.getClass();
        str.getClass();
        str2.getClass();
        list.getClass();
        bookingFormModuleDataUiModel2.getClass();
        return new BookingFormModuleUiModel(str, str2, str3, str4, bookingDisclaimerUiModel, z4, z5, z6, z7, list, bookingFormModuleDataUiModel2, z8);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingFormModuleUiModel)) {
            return false;
        }
        BookingFormModuleUiModel bookingFormModuleUiModel = (BookingFormModuleUiModel) obj;
        return Intrinsics.c(this.f54536a, bookingFormModuleUiModel.f54536a) && Intrinsics.c(this.f54537b, bookingFormModuleUiModel.f54537b) && Intrinsics.c(this.f54538c, bookingFormModuleUiModel.f54538c) && Intrinsics.c(this.d, bookingFormModuleUiModel.d) && Intrinsics.c(this.f54539e, bookingFormModuleUiModel.f54539e) && this.f54540f == bookingFormModuleUiModel.f54540f && this.g == bookingFormModuleUiModel.g && this.f54541h == bookingFormModuleUiModel.f54541h && this.f54542i == bookingFormModuleUiModel.f54542i && Intrinsics.c(this.f54543j, bookingFormModuleUiModel.f54543j) && Intrinsics.c(this.f54544k, bookingFormModuleUiModel.f54544k) && this.l == bookingFormModuleUiModel.l;
    }

    public final int hashCode() {
        int iB = fc.b(this.f54536a.hashCode() * 31, 31, this.f54537b);
        String str = this.f54538c;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        BookingDisclaimerUiModel bookingDisclaimerUiModel = this.f54539e;
        return Boolean.hashCode(this.l) + ((this.f54544k.hashCode() + n00.a(o60.b(o60.b(o60.b(o60.b((iHashCode2 + (bookingDisclaimerUiModel != null ? bookingDisclaimerUiModel.hashCode() : 0)) * 31, 31, this.f54540f), 31, this.g), 31, this.f54541h), 31, this.f54542i), 31, this.f54543j)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("BookingFormModuleUiModel(id=", this.f54536a, ", title=", this.f54537b, ", subtitle=");
        cj.C(sbS, this.f54538c, ", description=", this.d, ", disclaimer=");
        sbS.append(this.f54539e);
        sbS.append(", isExpanded=");
        sbS.append(this.f54540f);
        sbS.append(", isOptional=");
        fc.y(sbS, this.g, ", isEnabled=", this.f54541h, ", updateFormAfterEditing=");
        sbS.append(this.f54542i);
        sbS.append(", disruptedStepsAfterEditing=");
        sbS.append(this.f54543j);
        sbS.append(", data=");
        sbS.append(this.f54544k);
        sbS.append(", isLoading=");
        sbS.append(this.l);
        sbS.append(")");
        return sbS.toString();
    }

    public BookingFormModuleUiModel(String str, String str2, String str3, String str4, BookingDisclaimerUiModel bookingDisclaimerUiModel, boolean z, boolean z2, boolean z3, boolean z4, List<String> list, BookingFormModuleDataUiModel bookingFormModuleDataUiModel, boolean z5) {
        str.getClass();
        str2.getClass();
        list.getClass();
        bookingFormModuleDataUiModel.getClass();
        this.f54536a = str;
        this.f54537b = str2;
        this.f54538c = str3;
        this.d = str4;
        this.f54539e = bookingDisclaimerUiModel;
        this.f54540f = z;
        this.g = z2;
        this.f54541h = z3;
        this.f54542i = z4;
        this.f54543j = list;
        this.f54544k = bookingFormModuleDataUiModel;
        this.l = z5;
    }
}
