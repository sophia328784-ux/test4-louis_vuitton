package com.vuitton.foundation.model.domain.model.account.address;

import defpackage.cj;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001BC\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/address/AddressDetails;", "", "", "addressLine", "addressLine2", "stateName", "stateCode", "cityName", "postalCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AddressDetails {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66245a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66246b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66247c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f66248e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f66249f;

    public AddressDetails(String str, String str2, String str3, String str4, String str5, String str6) {
        this.f66245a = str;
        this.f66246b = str2;
        this.f66247c = str3;
        this.d = str4;
        this.f66248e = str5;
        this.f66249f = str6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AddressDetails)) {
            return false;
        }
        AddressDetails addressDetails = (AddressDetails) obj;
        return Intrinsics.c(this.f66245a, addressDetails.f66245a) && Intrinsics.c(this.f66246b, addressDetails.f66246b) && Intrinsics.c(this.f66247c, addressDetails.f66247c) && Intrinsics.c(this.d, addressDetails.d) && Intrinsics.c(this.f66248e, addressDetails.f66248e) && Intrinsics.c(this.f66249f, addressDetails.f66249f);
    }

    public final int hashCode() {
        String str = this.f66245a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f66246b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f66247c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f66248e;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f66249f;
        return iHashCode5 + (str6 != null ? str6.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("AddressDetails(addressLine=", this.f66245a, ", addressLine2=", this.f66246b, ", stateName=");
        cj.C(sbS, this.f66247c, ", stateCode=", this.d, ", cityName=");
        return tr.l(sbS, this.f66248e, ", postalCode=", this.f66249f, ")");
    }
}
