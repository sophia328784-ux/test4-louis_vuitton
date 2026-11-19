package com.vuitton.foundation.model.domain.model.booking;

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
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Be\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\t\u0012\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;", "", "", b.a.f24015b, "title", "subtitle", "description", "Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimer;", "disclaimer", "", "isOptional", "updateFormAfterEditing", "", "disruptedStepsAfterEditing", "Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimer;ZZLjava/util/List;Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BookingFormModule {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66709a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66710b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66711c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final BookingDisclaimer f66712e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f66713f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f66714h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final BookingFormModuleData f66715i;

    public BookingFormModule(String str, String str2, String str3, String str4, BookingDisclaimer bookingDisclaimer, boolean z, boolean z2, List<String> list, BookingFormModuleData bookingFormModuleData) {
        str.getClass();
        str2.getClass();
        list.getClass();
        bookingFormModuleData.getClass();
        this.f66709a = str;
        this.f66710b = str2;
        this.f66711c = str3;
        this.d = str4;
        this.f66712e = bookingDisclaimer;
        this.f66713f = z;
        this.g = z2;
        this.f66714h = list;
        this.f66715i = bookingFormModuleData;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingFormModule)) {
            return false;
        }
        BookingFormModule bookingFormModule = (BookingFormModule) obj;
        return Intrinsics.c(this.f66709a, bookingFormModule.f66709a) && Intrinsics.c(this.f66710b, bookingFormModule.f66710b) && Intrinsics.c(this.f66711c, bookingFormModule.f66711c) && Intrinsics.c(this.d, bookingFormModule.d) && Intrinsics.c(this.f66712e, bookingFormModule.f66712e) && this.f66713f == bookingFormModule.f66713f && this.g == bookingFormModule.g && Intrinsics.c(this.f66714h, bookingFormModule.f66714h) && Intrinsics.c(this.f66715i, bookingFormModule.f66715i);
    }

    public final int hashCode() {
        int iB = fc.b(this.f66709a.hashCode() * 31, 31, this.f66710b);
        String str = this.f66711c;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        BookingDisclaimer bookingDisclaimer = this.f66712e;
        return this.f66715i.hashCode() + n00.a(o60.b(o60.b((iHashCode2 + (bookingDisclaimer != null ? bookingDisclaimer.hashCode() : 0)) * 31, 31, this.f66713f), 31, this.g), 31, this.f66714h);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("BookingFormModule(id=", this.f66709a, ", title=", this.f66710b, ", subtitle=");
        cj.C(sbS, this.f66711c, ", description=", this.d, ", disclaimer=");
        sbS.append(this.f66712e);
        sbS.append(", isOptional=");
        sbS.append(this.f66713f);
        sbS.append(", updateFormAfterEditing=");
        sbS.append(this.g);
        sbS.append(", disruptedStepsAfterEditing=");
        sbS.append(this.f66714h);
        sbS.append(", data=");
        sbS.append(this.f66715i);
        sbS.append(")");
        return sbS.toString();
    }

    public BookingFormModule(String str, String str2, String str3, String str4, BookingDisclaimer bookingDisclaimer, boolean z, boolean z2, List list, BookingFormModuleData bookingFormModuleData, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : bookingDisclaimer, z, (i2 & 64) != 0 ? false : z2, (i2 & 128) != 0 ? EmptyList.f71768b : list, bookingFormModuleData);
    }
}
