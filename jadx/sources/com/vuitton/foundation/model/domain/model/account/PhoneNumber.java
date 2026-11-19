package com.vuitton.foundation.model.domain.model.account;

import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;", "", "", "nationalValue", "Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;", "type", "regionCodeIso31661Alpha2", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PhoneNumber {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66232a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PhoneNumberType f66233b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66234c;

    public PhoneNumber(String str, PhoneNumberType phoneNumberType, String str2) {
        str.getClass();
        phoneNumberType.getClass();
        str2.getClass();
        this.f66232a = str;
        this.f66233b = phoneNumberType;
        this.f66234c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PhoneNumber)) {
            return false;
        }
        PhoneNumber phoneNumber = (PhoneNumber) obj;
        return Intrinsics.c(this.f66232a, phoneNumber.f66232a) && this.f66233b == phoneNumber.f66233b && Intrinsics.c(this.f66234c, phoneNumber.f66234c);
    }

    public final int hashCode() {
        return this.f66234c.hashCode() + ((this.f66233b.hashCode() + (this.f66232a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PhoneNumber(nationalValue=");
        sb.append(this.f66232a);
        sb.append(", type=");
        sb.append(this.f66233b);
        sb.append(", regionCodeIso31661Alpha2=");
        return n00.r(this.f66234c, ")", sb);
    }
}
