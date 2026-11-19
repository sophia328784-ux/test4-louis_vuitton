package com.vuitton.foundation.model.domain.model.booking;

import com.batch.android.s.b;
import defpackage.fc;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;", "", "", b.a.f24015b, "name", "defaultStepId", "Lcom/vuitton/foundation/model/domain/model/booking/BookingFormHeader;", "header", "", "Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;", "modules", "Lcom/vuitton/foundation/model/domain/model/booking/BookingType;", "type", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/booking/BookingFormHeader;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/booking/BookingType;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BookingForm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66699a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66700b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66701c;
    public final BookingFormHeader d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f66702e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BookingType f66703f;

    public BookingForm(String str, String str2, String str3, BookingFormHeader bookingFormHeader, List<BookingFormModule> list, BookingType bookingType) {
        str.getClass();
        str2.getClass();
        bookingFormHeader.getClass();
        list.getClass();
        bookingType.getClass();
        this.f66699a = str;
        this.f66700b = str2;
        this.f66701c = str3;
        this.d = bookingFormHeader;
        this.f66702e = list;
        this.f66703f = bookingType;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingForm)) {
            return false;
        }
        BookingForm bookingForm = (BookingForm) obj;
        return Intrinsics.c(this.f66699a, bookingForm.f66699a) && Intrinsics.c(this.f66700b, bookingForm.f66700b) && Intrinsics.c(this.f66701c, bookingForm.f66701c) && Intrinsics.c(this.d, bookingForm.d) && Intrinsics.c(this.f66702e, bookingForm.f66702e) && this.f66703f == bookingForm.f66703f;
    }

    public final int hashCode() {
        int iB = fc.b(this.f66699a.hashCode() * 31, 31, this.f66700b);
        String str = this.f66701c;
        return this.f66703f.hashCode() + n00.a((this.d.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31)) * 31, 31, this.f66702e);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("BookingForm(id=", this.f66699a, ", name=", this.f66700b, ", defaultStepId=");
        sbS.append(this.f66701c);
        sbS.append(", header=");
        sbS.append(this.d);
        sbS.append(", modules=");
        sbS.append(this.f66702e);
        sbS.append(", type=");
        sbS.append(this.f66703f);
        sbS.append(")");
        return sbS.toString();
    }
}
