package com.vuitton.foundation.model.domain.model.careservices.bff;

import com.vuitton.foundation.model.domain.model.account.PhoneNumber;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001BI\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;", "", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAppointment;", "appointment", "Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;", "phone", "", "email", "issueDescription", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceContactMethod;", "contactMethod", "", "imageList", "postalCode", "<init>", "(Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAppointment;Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceContactMethod;Ljava/util/List;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CareServiceCreationParam {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CareServiceAppointment f66837a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PhoneNumber f66838b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66839c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CareServiceContactMethod f66840e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f66841f;
    public final String g;

    public CareServiceCreationParam(CareServiceAppointment careServiceAppointment, PhoneNumber phoneNumber, String str, String str2, CareServiceContactMethod careServiceContactMethod, List<String> list, String str3) {
        phoneNumber.getClass();
        str.getClass();
        str2.getClass();
        careServiceContactMethod.getClass();
        list.getClass();
        this.f66837a = careServiceAppointment;
        this.f66838b = phoneNumber;
        this.f66839c = str;
        this.d = str2;
        this.f66840e = careServiceContactMethod;
        this.f66841f = list;
        this.g = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CareServiceCreationParam)) {
            return false;
        }
        CareServiceCreationParam careServiceCreationParam = (CareServiceCreationParam) obj;
        return Intrinsics.c(this.f66837a, careServiceCreationParam.f66837a) && Intrinsics.c(this.f66838b, careServiceCreationParam.f66838b) && Intrinsics.c(this.f66839c, careServiceCreationParam.f66839c) && Intrinsics.c(this.d, careServiceCreationParam.d) && this.f66840e == careServiceCreationParam.f66840e && Intrinsics.c(this.f66841f, careServiceCreationParam.f66841f) && Intrinsics.c(this.g, careServiceCreationParam.g);
    }

    public final int hashCode() {
        CareServiceAppointment careServiceAppointment = this.f66837a;
        int iA = n00.a((this.f66840e.hashCode() + fc.b(fc.b((this.f66838b.hashCode() + ((careServiceAppointment == null ? 0 : careServiceAppointment.hashCode()) * 31)) * 31, 31, this.f66839c), 31, this.d)) * 31, 31, this.f66841f);
        String str = this.g;
        return iA + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CareServiceCreationParam(appointment=");
        sb.append(this.f66837a);
        sb.append(", phone=");
        sb.append(this.f66838b);
        sb.append(", email=");
        cj.C(sb, this.f66839c, ", issueDescription=", this.d, ", contactMethod=");
        sb.append(this.f66840e);
        sb.append(", imageList=");
        sb.append(this.f66841f);
        sb.append(", postalCode=");
        return n00.r(this.g, ")", sb);
    }
}
