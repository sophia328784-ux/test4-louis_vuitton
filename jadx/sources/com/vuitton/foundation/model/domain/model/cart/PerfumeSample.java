package com.vuitton.foundation.model.domain.model.cart;

import defpackage.cj;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/cart/PerfumeSample;", "", "", "sampleId", "identifier", "name", "description", "imageUrl", "", "isSelected", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PerfumeSample {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66987a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66988b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66989c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f66990e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f66991f;

    public PerfumeSample(String str, String str2, String str3, String str4, String str5, boolean z) {
        this.f66987a = str;
        this.f66988b = str2;
        this.f66989c = str3;
        this.d = str4;
        this.f66990e = str5;
        this.f66991f = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PerfumeSample)) {
            return false;
        }
        PerfumeSample perfumeSample = (PerfumeSample) obj;
        return Intrinsics.c(this.f66987a, perfumeSample.f66987a) && Intrinsics.c(this.f66988b, perfumeSample.f66988b) && Intrinsics.c(this.f66989c, perfumeSample.f66989c) && Intrinsics.c(this.d, perfumeSample.d) && Intrinsics.c(this.f66990e, perfumeSample.f66990e) && this.f66991f == perfumeSample.f66991f;
    }

    public final int hashCode() {
        String str = this.f66987a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f66988b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f66989c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f66990e;
        return Boolean.hashCode(this.f66991f) + ((iHashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("PerfumeSample(sampleId=", this.f66987a, ", identifier=", this.f66988b, ", name=");
        cj.C(sbS, this.f66989c, ", description=", this.d, ", imageUrl=");
        sbS.append(this.f66990e);
        sbS.append(", isSelected=");
        sbS.append(this.f66991f);
        sbS.append(")");
        return sbS.toString();
    }
}
