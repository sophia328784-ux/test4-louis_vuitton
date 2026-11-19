package com.vuitton.foundation.model.domain.model.booking;

import defpackage.cj;
import defpackage.fc;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Bg\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/PreBookConfirmForm;", "", "", "email", "firstName", "firstName2", "lastName", "lastName2", "country", "phoneNumber", "phoneNumberCountry", "phoneNumberType", "civilityCode", "", "isOptInToReceiveNewsletterEmails", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PreBookConfirmForm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66764a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66765b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66766c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f66767e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f66768f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f66769h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f66770i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f66771j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Boolean f66772k;

    public PreBookConfirmForm(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, Boolean bool) {
        pq0.z(str, str2, str4, str7, str8);
        str9.getClass();
        str10.getClass();
        this.f66764a = str;
        this.f66765b = str2;
        this.f66766c = str3;
        this.d = str4;
        this.f66767e = str5;
        this.f66768f = str6;
        this.g = str7;
        this.f66769h = str8;
        this.f66770i = str9;
        this.f66771j = str10;
        this.f66772k = bool;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PreBookConfirmForm)) {
            return false;
        }
        PreBookConfirmForm preBookConfirmForm = (PreBookConfirmForm) obj;
        return Intrinsics.c(this.f66764a, preBookConfirmForm.f66764a) && Intrinsics.c(this.f66765b, preBookConfirmForm.f66765b) && Intrinsics.c(this.f66766c, preBookConfirmForm.f66766c) && Intrinsics.c(this.d, preBookConfirmForm.d) && Intrinsics.c(this.f66767e, preBookConfirmForm.f66767e) && Intrinsics.c(this.f66768f, preBookConfirmForm.f66768f) && Intrinsics.c(this.g, preBookConfirmForm.g) && Intrinsics.c(this.f66769h, preBookConfirmForm.f66769h) && Intrinsics.c(this.f66770i, preBookConfirmForm.f66770i) && Intrinsics.c(this.f66771j, preBookConfirmForm.f66771j) && Intrinsics.c(this.f66772k, preBookConfirmForm.f66772k);
    }

    public final int hashCode() {
        int iB = fc.b(this.f66764a.hashCode() * 31, 31, this.f66765b);
        String str = this.f66766c;
        int iB2 = fc.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.d);
        String str2 = this.f66767e;
        int iHashCode = (iB2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f66768f;
        int iB3 = fc.b(fc.b(fc.b(fc.b((iHashCode + (str3 == null ? 0 : str3.hashCode())) * 31, 31, this.g), 31, this.f66769h), 31, this.f66770i), 31, this.f66771j);
        Boolean bool = this.f66772k;
        return iB3 + (bool != null ? bool.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("PreBookConfirmForm(email=", this.f66764a, ", firstName=", this.f66765b, ", firstName2=");
        cj.C(sbS, this.f66766c, ", lastName=", this.d, ", lastName2=");
        cj.C(sbS, this.f66767e, ", country=", this.f66768f, ", phoneNumber=");
        cj.C(sbS, this.g, ", phoneNumberCountry=", this.f66769h, ", phoneNumberType=");
        cj.C(sbS, this.f66770i, ", civilityCode=", this.f66771j, ", isOptInToReceiveNewsletterEmails=");
        sbS.append(this.f66772k);
        sbS.append(")");
        return sbS.toString();
    }
}
