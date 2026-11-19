package com.vuitton.foundation.model.domain.model.authentication;

import com.vuitton.foundation.model.domain.model.account.PhoneNumber;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BW\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;", "", "", "civility", "firstName", "lastName", "firstName2", "lastName2", "countryCode", "birthDate", "Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;", "mobilePhone", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class UserInformation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66609a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66610b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66611c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f66612e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f66613f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final PhoneNumber f66614h;

    public /* synthetic */ UserInformation(String str, String str2, String str3, String str4, String str5, String str6, String str7, PhoneNumber phoneNumber, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : str5, str6, (i2 & 64) != 0 ? null : str7, (i2 & 128) != 0 ? null : phoneNumber);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UserInformation)) {
            return false;
        }
        UserInformation userInformation = (UserInformation) obj;
        return Intrinsics.c(this.f66609a, userInformation.f66609a) && Intrinsics.c(this.f66610b, userInformation.f66610b) && Intrinsics.c(this.f66611c, userInformation.f66611c) && Intrinsics.c(this.d, userInformation.d) && Intrinsics.c(this.f66612e, userInformation.f66612e) && Intrinsics.c(this.f66613f, userInformation.f66613f) && Intrinsics.c(this.g, userInformation.g) && Intrinsics.c(this.f66614h, userInformation.f66614h);
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(this.f66609a.hashCode() * 31, 31, this.f66610b), 31, this.f66611c);
        String str = this.d;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f66612e;
        int iB2 = fc.b((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.f66613f);
        String str3 = this.g;
        int iHashCode2 = (iB2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        PhoneNumber phoneNumber = this.f66614h;
        return iHashCode2 + (phoneNumber != null ? phoneNumber.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("UserInformation(civility=", this.f66609a, ", firstName=", this.f66610b, ", lastName=");
        cj.C(sbS, this.f66611c, ", firstName2=", this.d, ", lastName2=");
        cj.C(sbS, this.f66612e, ", countryCode=", this.f66613f, ", birthDate=");
        sbS.append(this.g);
        sbS.append(", mobilePhone=");
        sbS.append(this.f66614h);
        sbS.append(")");
        return sbS.toString();
    }

    public UserInformation(String str, String str2, String str3, String str4, String str5, String str6, String str7, PhoneNumber phoneNumber) {
        d21.y(str, str2, str3, str6);
        this.f66609a = str;
        this.f66610b = str2;
        this.f66611c = str3;
        this.d = str4;
        this.f66612e = str5;
        this.f66613f = str6;
        this.g = str7;
        this.f66614h = phoneNumber;
    }
}
