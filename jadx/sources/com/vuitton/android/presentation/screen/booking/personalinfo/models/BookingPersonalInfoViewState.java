package com.vuitton.android.presentation.screen.booking.personalinfo.models;

import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.foundation.model.domain.model.booking.BookingExternalContent;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BO\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;", "", "", "accountStatusEmailToCheck", "", "showEmailError", "isLoading", "isError", "Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;", "form", "isFormValid", "Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;", "bookingPolicy", "<init>", "(Ljava/lang/String;ZZZLcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZLcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BookingPersonalInfoViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f54731a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f54732b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f54733c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FormUiModel f54734e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f54735f;
    public final BookingExternalContent g;

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ BookingPersonalInfoViewState(String str, boolean z, boolean z2, boolean z3, FormUiModel formUiModel, boolean z4, BookingExternalContent bookingExternalContent, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        str = (i2 & 1) != 0 ? "" : str;
        z = (i2 & 2) != 0 ? false : z;
        z2 = (i2 & 4) != 0 ? false : z2;
        z3 = (i2 & 8) != 0 ? false : z3;
        if ((i2 & 16) != 0) {
            FormUiModel.f57485b.getClass();
            formUiModel = FormUiModel.Companion.a();
        }
        this(str, z, z2, z3, formUiModel, (i2 & 32) != 0 ? false : z4, (i2 & 64) != 0 ? null : bookingExternalContent);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingPersonalInfoViewState)) {
            return false;
        }
        BookingPersonalInfoViewState bookingPersonalInfoViewState = (BookingPersonalInfoViewState) obj;
        return Intrinsics.c(this.f54731a, bookingPersonalInfoViewState.f54731a) && this.f54732b == bookingPersonalInfoViewState.f54732b && this.f54733c == bookingPersonalInfoViewState.f54733c && this.d == bookingPersonalInfoViewState.d && Intrinsics.c(this.f54734e, bookingPersonalInfoViewState.f54734e) && this.f54735f == bookingPersonalInfoViewState.f54735f && Intrinsics.c(this.g, bookingPersonalInfoViewState.g);
    }

    public final int hashCode() {
        int iB = o60.b(n00.a(o60.b(o60.b(o60.b(this.f54731a.hashCode() * 31, 31, this.f54732b), 31, this.f54733c), 31, this.d), 31, this.f54734e.f57486a), 31, this.f54735f);
        BookingExternalContent bookingExternalContent = this.g;
        return iB + (bookingExternalContent == null ? 0 : bookingExternalContent.hashCode());
    }

    public final String toString() {
        StringBuilder sbS = d21.s("BookingPersonalInfoViewState(accountStatusEmailToCheck=", this.f54731a, ", showEmailError=", ", isLoading=", this.f54732b);
        fc.y(sbS, this.f54733c, ", isError=", this.d, ", form=");
        sbS.append(this.f54734e);
        sbS.append(", isFormValid=");
        sbS.append(this.f54735f);
        sbS.append(", bookingPolicy=");
        sbS.append(this.g);
        sbS.append(")");
        return sbS.toString();
    }

    public BookingPersonalInfoViewState(String str, boolean z, boolean z2, boolean z3, FormUiModel formUiModel, boolean z4, BookingExternalContent bookingExternalContent) {
        str.getClass();
        formUiModel.getClass();
        this.f54731a = str;
        this.f54732b = z;
        this.f54733c = z2;
        this.d = z3;
        this.f54734e = formUiModel;
        this.f54735f = z4;
        this.g = bookingExternalContent;
    }

    public BookingPersonalInfoViewState() {
        this(null, false, false, false, null, false, null, CertificateBody.profileType, null);
    }
}
