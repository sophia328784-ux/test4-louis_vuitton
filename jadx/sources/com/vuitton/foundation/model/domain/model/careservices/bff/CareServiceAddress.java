package com.vuitton.foundation.model.domain.model.careservices.bff;

import com.vuitton.foundation.model.domain.model.account.address.AddressId;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0086\b\u0018\u00002\u00020\u0001B\u0081\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;", "", "Lcom/vuitton/foundation/model/domain/model/account/address/AddressId;", "identifier", "", "description", "addressLine1", "addressLine2", "addressLine3", "postalCode", "stateName", "stateCode", "cityName", "countryName", "countryCode", "firstName", "lastName", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CareServiceAddress {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66825a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66826b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66827c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f66828e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f66829f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f66830h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f66831i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f66832j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f66833k;
    public final String l;
    public final String m;

    public CareServiceAddress(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, DefaultConstructorMarker defaultConstructorMarker) {
        d21.y(str3, str6, str9, str11);
        this.f66825a = str;
        this.f66826b = str2;
        this.f66827c = str3;
        this.d = str4;
        this.f66828e = str5;
        this.f66829f = str6;
        this.g = str7;
        this.f66830h = str8;
        this.f66831i = str9;
        this.f66832j = str10;
        this.f66833k = str11;
        this.l = str12;
        this.m = str13;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0018  */
    public final boolean equals(Object obj) {
        boolean zEquals;
        if (this != obj) {
            if (obj instanceof CareServiceAddress) {
                CareServiceAddress careServiceAddress = (CareServiceAddress) obj;
                String str = careServiceAddress.f66825a;
                String str2 = this.f66825a;
                if (str2 == null) {
                    if (str == null) {
                        zEquals = true;
                    } else {
                        zEquals = false;
                    }
                } else if (str == null) {
                    zEquals = false;
                } else {
                    zEquals = str2.equals(str);
                }
                if (zEquals && Intrinsics.c(this.f66826b, careServiceAddress.f66826b) && this.f66827c.equals(careServiceAddress.f66827c) && Intrinsics.c(this.d, careServiceAddress.d) && Intrinsics.c(this.f66828e, careServiceAddress.f66828e) && this.f66829f.equals(careServiceAddress.f66829f) && Intrinsics.c(this.g, careServiceAddress.g) && Intrinsics.c(this.f66830h, careServiceAddress.f66830h) && this.f66831i.equals(careServiceAddress.f66831i) && Intrinsics.c(this.f66832j, careServiceAddress.f66832j) && this.f66833k.equals(careServiceAddress.f66833k) && Intrinsics.c(this.l, careServiceAddress.l) && Intrinsics.c(this.m, careServiceAddress.m)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.f66825a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f66826b;
        int iB = fc.b((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.f66827c);
        String str3 = this.d;
        int iHashCode2 = (iB + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f66828e;
        int iB2 = fc.b((iHashCode2 + (str4 == null ? 0 : str4.hashCode())) * 31, 31, this.f66829f);
        String str5 = this.g;
        int iHashCode3 = (iB2 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f66830h;
        int iB3 = fc.b((iHashCode3 + (str6 == null ? 0 : str6.hashCode())) * 31, 31, this.f66831i);
        String str7 = this.f66832j;
        int iB4 = fc.b((iB3 + (str7 == null ? 0 : str7.hashCode())) * 31, 31, this.f66833k);
        String str8 = this.l;
        int iHashCode4 = (iB4 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.m;
        return iHashCode4 + (str9 != null ? str9.hashCode() : 0);
    }

    public final String toString() {
        String str = this.f66825a;
        StringBuilder sbS = fc.s("CareServiceAddress(identifier=", str == null ? "null" : AddressId.a(str), ", description=", this.f66826b, ", addressLine1=");
        cj.C(sbS, this.f66827c, ", addressLine2=", this.d, ", addressLine3=");
        cj.C(sbS, this.f66828e, ", postalCode=", this.f66829f, ", stateName=");
        cj.C(sbS, this.g, ", stateCode=", this.f66830h, ", cityName=");
        cj.C(sbS, this.f66831i, ", countryName=", this.f66832j, ", countryCode=");
        cj.C(sbS, this.f66833k, ", firstName=", this.l, ", lastName=");
        return n00.r(this.m, ")", sbS);
    }
}
