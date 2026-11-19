package com.vuitton.android.presentation.screen.booking.form.models;

import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0087\b\u0018\u00002\u00020\u0001BK\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceHeaderUiModel;", "", "", "title", "surtitle", "description", "additionalInformation", "dateTime", "imageUrl", "tag", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BookingExperienceHeaderUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f54495a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f54496b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f54497c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f54498e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f54499f;
    public final String g;

    public BookingExperienceHeaderUiModel(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        str.getClass();
        str6.getClass();
        this.f54495a = str;
        this.f54496b = str2;
        this.f54497c = str3;
        this.d = str4;
        this.f54498e = str5;
        this.f54499f = str6;
        this.g = str7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingExperienceHeaderUiModel)) {
            return false;
        }
        BookingExperienceHeaderUiModel bookingExperienceHeaderUiModel = (BookingExperienceHeaderUiModel) obj;
        return Intrinsics.c(this.f54495a, bookingExperienceHeaderUiModel.f54495a) && Intrinsics.c(this.f54496b, bookingExperienceHeaderUiModel.f54496b) && Intrinsics.c(this.f54497c, bookingExperienceHeaderUiModel.f54497c) && Intrinsics.c(this.d, bookingExperienceHeaderUiModel.d) && Intrinsics.c(this.f54498e, bookingExperienceHeaderUiModel.f54498e) && Intrinsics.c(this.f54499f, bookingExperienceHeaderUiModel.f54499f) && Intrinsics.c(this.g, bookingExperienceHeaderUiModel.g);
    }

    public final int hashCode() {
        int iHashCode = this.f54495a.hashCode() * 31;
        String str = this.f54496b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f54497c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f54498e;
        int iB = fc.b((iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31, 31, this.f54499f);
        String str5 = this.g;
        return iB + (str5 != null ? str5.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("BookingExperienceHeaderUiModel(title=", this.f54495a, ", surtitle=", this.f54496b, ", description=");
        cj.C(sbS, this.f54497c, ", additionalInformation=", this.d, ", dateTime=");
        cj.C(sbS, this.f54498e, ", imageUrl=", this.f54499f, ", tag=");
        return n00.r(this.g, ")", sbS);
    }

    public /* synthetic */ BookingExperienceHeaderUiModel(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, str5, str6, (i2 & 64) != 0 ? null : str7);
    }
}
