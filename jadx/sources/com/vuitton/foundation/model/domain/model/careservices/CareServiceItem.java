package com.vuitton.foundation.model.domain.model.careservices;

import com.batch.android.s.b;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.o60;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000e\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceItem;", "", "", b.a.f24015b, "instructionName", "instructionCode", "instructionNameICONiCS", "", "initialPrice", "updatedPrice", "", "quantity", "", "approved", "addedByRepairCenter", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Double;IZZ)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CareServiceItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66803a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66804b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66805c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final double f66806e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Double f66807f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f66808h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f66809i;

    public CareServiceItem(String str, String str2, String str3, String str4, double d, Double d2, int i2, boolean z, boolean z2) {
        d21.y(str, str2, str3, str4);
        this.f66803a = str;
        this.f66804b = str2;
        this.f66805c = str3;
        this.d = str4;
        this.f66806e = d;
        this.f66807f = d2;
        this.g = i2;
        this.f66808h = z;
        this.f66809i = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CareServiceItem)) {
            return false;
        }
        CareServiceItem careServiceItem = (CareServiceItem) obj;
        return Intrinsics.c(this.f66803a, careServiceItem.f66803a) && Intrinsics.c(this.f66804b, careServiceItem.f66804b) && Intrinsics.c(this.f66805c, careServiceItem.f66805c) && Intrinsics.c(this.d, careServiceItem.d) && Double.compare(this.f66806e, careServiceItem.f66806e) == 0 && Intrinsics.c(this.f66807f, careServiceItem.f66807f) && this.g == careServiceItem.g && this.f66808h == careServiceItem.f66808h && this.f66809i == careServiceItem.f66809i;
    }

    public final int hashCode() {
        int iA = d21.a(this.f66806e, fc.b(fc.b(fc.b(this.f66803a.hashCode() * 31, 31, this.f66804b), 31, this.f66805c), 31, this.d), 31);
        Double d = this.f66807f;
        return Boolean.hashCode(this.f66809i) + o60.b(tr.b(this.g, (iA + (d == null ? 0 : d.hashCode())) * 31, 31), 31, this.f66808h);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("CareServiceItem(id=", this.f66803a, ", instructionName=", this.f66804b, ", instructionCode=");
        cj.C(sbS, this.f66805c, ", instructionNameICONiCS=", this.d, ", initialPrice=");
        sbS.append(this.f66806e);
        sbS.append(", updatedPrice=");
        sbS.append(this.f66807f);
        sbS.append(", quantity=");
        sbS.append(this.g);
        sbS.append(", approved=");
        sbS.append(this.f66808h);
        sbS.append(", addedByRepairCenter=");
        sbS.append(this.f66809i);
        sbS.append(")");
        return sbS.toString();
    }
}
