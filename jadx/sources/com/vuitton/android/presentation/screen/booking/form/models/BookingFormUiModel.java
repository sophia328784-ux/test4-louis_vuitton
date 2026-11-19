package com.vuitton.android.presentation.screen.booking.form.models;

import com.batch.android.s.b;
import com.vuitton.android.presentation.screen.booking.list.models.BookingTypeUiModel;
import defpackage.fc;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;", "", "", b.a.f24015b, "name", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceHeaderUiModel;", "header", "", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;", "modules", "Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;", "type", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceHeaderUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BookingFormUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f54556a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f54557b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BookingExperienceHeaderUiModel f54558c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final BookingTypeUiModel f54559e;

    public BookingFormUiModel(String str, String str2, BookingExperienceHeaderUiModel bookingExperienceHeaderUiModel, List<BookingFormModuleUiModel> list, BookingTypeUiModel bookingTypeUiModel) {
        str.getClass();
        str2.getClass();
        bookingExperienceHeaderUiModel.getClass();
        list.getClass();
        bookingTypeUiModel.getClass();
        this.f54556a = str;
        this.f54557b = str2;
        this.f54558c = bookingExperienceHeaderUiModel;
        this.d = list;
        this.f54559e = bookingTypeUiModel;
    }

    public static BookingFormUiModel a(BookingFormUiModel bookingFormUiModel, List list) {
        String str = bookingFormUiModel.f54556a;
        String str2 = bookingFormUiModel.f54557b;
        BookingExperienceHeaderUiModel bookingExperienceHeaderUiModel = bookingFormUiModel.f54558c;
        BookingTypeUiModel bookingTypeUiModel = bookingFormUiModel.f54559e;
        bookingFormUiModel.getClass();
        str.getClass();
        str2.getClass();
        bookingExperienceHeaderUiModel.getClass();
        list.getClass();
        bookingTypeUiModel.getClass();
        return new BookingFormUiModel(str, str2, bookingExperienceHeaderUiModel, list, bookingTypeUiModel);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingFormUiModel)) {
            return false;
        }
        BookingFormUiModel bookingFormUiModel = (BookingFormUiModel) obj;
        return Intrinsics.c(this.f54556a, bookingFormUiModel.f54556a) && Intrinsics.c(this.f54557b, bookingFormUiModel.f54557b) && Intrinsics.c(this.f54558c, bookingFormUiModel.f54558c) && Intrinsics.c(this.d, bookingFormUiModel.d) && this.f54559e == bookingFormUiModel.f54559e;
    }

    public final int hashCode() {
        return this.f54559e.hashCode() + n00.a((this.f54558c.hashCode() + fc.b(this.f54556a.hashCode() * 31, 31, this.f54557b)) * 31, 31, this.d);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("BookingFormUiModel(id=", this.f54556a, ", name=", this.f54557b, ", header=");
        sbS.append(this.f54558c);
        sbS.append(", modules=");
        sbS.append(this.d);
        sbS.append(", type=");
        sbS.append(this.f54559e);
        sbS.append(")");
        return sbS.toString();
    }
}
