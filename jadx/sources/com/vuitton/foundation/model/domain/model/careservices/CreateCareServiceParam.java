package com.vuitton.foundation.model.domain.model.careservices;

import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;", "", "", "phone", "email", "description", "Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;", "origin", "startTime", "", "images", "appExternalId", "zipPostalCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CreateCareServiceParam {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66819a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66820b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66821c;
    public final CareServiceOrigin d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f66822e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f66823f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f66824h;

    public CreateCareServiceParam(String str, String str2, String str3, CareServiceOrigin careServiceOrigin, String str4, List<String> list, String str5, String str6) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        careServiceOrigin.getClass();
        str4.getClass();
        list.getClass();
        str5.getClass();
        str6.getClass();
        this.f66819a = str;
        this.f66820b = str2;
        this.f66821c = str3;
        this.d = careServiceOrigin;
        this.f66822e = str4;
        this.f66823f = list;
        this.g = str5;
        this.f66824h = str6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CreateCareServiceParam)) {
            return false;
        }
        CreateCareServiceParam createCareServiceParam = (CreateCareServiceParam) obj;
        return Intrinsics.c(this.f66819a, createCareServiceParam.f66819a) && Intrinsics.c(this.f66820b, createCareServiceParam.f66820b) && Intrinsics.c(this.f66821c, createCareServiceParam.f66821c) && this.d == createCareServiceParam.d && Intrinsics.c(this.f66822e, createCareServiceParam.f66822e) && Intrinsics.c(this.f66823f, createCareServiceParam.f66823f) && Intrinsics.c(this.g, createCareServiceParam.g) && Intrinsics.c(this.f66824h, createCareServiceParam.f66824h);
    }

    public final int hashCode() {
        return this.f66824h.hashCode() + fc.b(n00.a(fc.b((this.d.hashCode() + fc.b(fc.b(this.f66819a.hashCode() * 31, 31, this.f66820b), 31, this.f66821c)) * 31, 31, this.f66822e), 31, this.f66823f), 31, this.g);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("CreateCareServiceParam(phone=", this.f66819a, ", email=", this.f66820b, ", description=");
        sbS.append(this.f66821c);
        sbS.append(", origin=");
        sbS.append(this.d);
        sbS.append(", startTime=");
        d21.z(this.f66822e, ", images=", ", appExternalId=", sbS, this.f66823f);
        return tr.l(sbS, this.g, ", zipPostalCode=", this.f66824h, ")");
    }
}
