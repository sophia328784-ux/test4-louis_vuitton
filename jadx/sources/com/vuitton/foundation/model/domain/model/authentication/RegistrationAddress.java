package com.vuitton.foundation.model.domain.model.authentication;

import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/RegistrationAddress;", "", "", "addressLine1", "addressLine2", "addressLine3", "cityName", "postalCode", "stateCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class RegistrationAddress {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66603a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66604b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66605c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f66606e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f66607f;

    public RegistrationAddress(String str, String str2, String str3, String str4, String str5, String str6) {
        d21.y(str, str4, str5, str6);
        this.f66603a = str;
        this.f66604b = str2;
        this.f66605c = str3;
        this.d = str4;
        this.f66606e = str5;
        this.f66607f = str6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RegistrationAddress)) {
            return false;
        }
        RegistrationAddress registrationAddress = (RegistrationAddress) obj;
        return Intrinsics.c(this.f66603a, registrationAddress.f66603a) && Intrinsics.c(this.f66604b, registrationAddress.f66604b) && Intrinsics.c(this.f66605c, registrationAddress.f66605c) && Intrinsics.c(this.d, registrationAddress.d) && Intrinsics.c(this.f66606e, registrationAddress.f66606e) && Intrinsics.c(this.f66607f, registrationAddress.f66607f);
    }

    public final int hashCode() {
        int iHashCode = this.f66603a.hashCode() * 31;
        String str = this.f66604b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f66605c;
        return this.f66607f.hashCode() + fc.b(fc.b((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31, 31, this.d), 31, this.f66606e);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("RegistrationAddress(addressLine1=", this.f66603a, ", addressLine2=", this.f66604b, ", addressLine3=");
        cj.C(sbS, this.f66605c, ", cityName=", this.d, ", postalCode=");
        return tr.l(sbS, this.f66606e, ", stateCode=", this.f66607f, ")");
    }

    public /* synthetic */ RegistrationAddress(String str, String str2, String str3, String str4, String str5, String str6, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, str4, str5, str6);
    }
}
