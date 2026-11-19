package com.vuitton.foundation.model.domain.model.account;

import defpackage.cj;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Bu\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/UpdateProfileInfoParam;", "", "", "login", "firstName", "lastName", "firstName2", "lastName2", "civilityCode", "email", "regionCodeIso31661Alpha2", "taxId", "branchId", "Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;", "mobilePhoneNumber", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class UpdateProfileInfoParam {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66235a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66236b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66237c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f66238e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f66239f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f66240h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f66241i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f66242j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final PhoneNumber f66243k;

    public UpdateProfileInfoParam(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, PhoneNumber phoneNumber) {
        this.f66235a = str;
        this.f66236b = str2;
        this.f66237c = str3;
        this.d = str4;
        this.f66238e = str5;
        this.f66239f = str6;
        this.g = str7;
        this.f66240h = str8;
        this.f66241i = str9;
        this.f66242j = str10;
        this.f66243k = phoneNumber;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UpdateProfileInfoParam)) {
            return false;
        }
        UpdateProfileInfoParam updateProfileInfoParam = (UpdateProfileInfoParam) obj;
        return Intrinsics.c(this.f66235a, updateProfileInfoParam.f66235a) && Intrinsics.c(this.f66236b, updateProfileInfoParam.f66236b) && Intrinsics.c(this.f66237c, updateProfileInfoParam.f66237c) && Intrinsics.c(this.d, updateProfileInfoParam.d) && Intrinsics.c(this.f66238e, updateProfileInfoParam.f66238e) && Intrinsics.c(this.f66239f, updateProfileInfoParam.f66239f) && Intrinsics.c(this.g, updateProfileInfoParam.g) && Intrinsics.c(this.f66240h, updateProfileInfoParam.f66240h) && Intrinsics.c(this.f66241i, updateProfileInfoParam.f66241i) && Intrinsics.c(this.f66242j, updateProfileInfoParam.f66242j) && Intrinsics.c(this.f66243k, updateProfileInfoParam.f66243k);
    }

    public final int hashCode() {
        String str = this.f66235a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f66236b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f66237c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f66238e;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f66239f;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.g;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.f66240h;
        int iHashCode8 = (iHashCode7 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.f66241i;
        int iHashCode9 = (iHashCode8 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.f66242j;
        int iHashCode10 = (iHashCode9 + (str10 == null ? 0 : str10.hashCode())) * 31;
        PhoneNumber phoneNumber = this.f66243k;
        return iHashCode10 + (phoneNumber != null ? phoneNumber.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("UpdateProfileInfoParam(login=", this.f66235a, ", firstName=", this.f66236b, ", lastName=");
        cj.C(sbS, this.f66237c, ", firstName2=", this.d, ", lastName2=");
        cj.C(sbS, this.f66238e, ", civilityCode=", this.f66239f, ", email=");
        cj.C(sbS, this.g, ", regionCodeIso31661Alpha2=", this.f66240h, ", taxId=");
        cj.C(sbS, this.f66241i, ", branchId=", this.f66242j, ", mobilePhoneNumber=");
        sbS.append(this.f66243k);
        sbS.append(")");
        return sbS.toString();
    }
}
