package com.vuitton.foundation.model.domain.model.product.vto;

import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001Bu\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/vto/Eyebrow;", "", "", "gap", "leftShape", "rightShape", "leftBodyThickness", "leftTailThickness", "leftThinness", "rightBodyThickness", "rightTailThickness", "rightThinness", "leftShortness", "rightShortness", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Eyebrow {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68042a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68043b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f68044c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f68045e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f68046f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f68047h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f68048i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f68049j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f68050k;

    public Eyebrow(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        this.f68042a = str;
        this.f68043b = str2;
        this.f68044c = str3;
        this.d = str4;
        this.f68045e = str5;
        this.f68046f = str6;
        this.g = str7;
        this.f68047h = str8;
        this.f68048i = str9;
        this.f68049j = str10;
        this.f68050k = str11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Eyebrow)) {
            return false;
        }
        Eyebrow eyebrow = (Eyebrow) obj;
        return Intrinsics.c(this.f68042a, eyebrow.f68042a) && Intrinsics.c(this.f68043b, eyebrow.f68043b) && Intrinsics.c(this.f68044c, eyebrow.f68044c) && Intrinsics.c(this.d, eyebrow.d) && Intrinsics.c(this.f68045e, eyebrow.f68045e) && Intrinsics.c(this.f68046f, eyebrow.f68046f) && Intrinsics.c(this.g, eyebrow.g) && Intrinsics.c(this.f68047h, eyebrow.f68047h) && Intrinsics.c(this.f68048i, eyebrow.f68048i) && Intrinsics.c(this.f68049j, eyebrow.f68049j) && Intrinsics.c(this.f68050k, eyebrow.f68050k);
    }

    public final int hashCode() {
        String str = this.f68042a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f68043b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f68044c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f68045e;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f68046f;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.g;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.f68047h;
        int iHashCode8 = (iHashCode7 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.f68048i;
        int iHashCode9 = (iHashCode8 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.f68049j;
        int iHashCode10 = (iHashCode9 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.f68050k;
        return iHashCode10 + (str11 != null ? str11.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("Eyebrow(gap=", this.f68042a, ", leftShape=", this.f68043b, ", rightShape=");
        cj.C(sbS, this.f68044c, ", leftBodyThickness=", this.d, ", leftTailThickness=");
        cj.C(sbS, this.f68045e, ", leftThinness=", this.f68046f, ", rightBodyThickness=");
        cj.C(sbS, this.g, ", rightTailThickness=", this.f68047h, ", rightThinness=");
        cj.C(sbS, this.f68048i, ", leftShortness=", this.f68049j, ", rightShortness=");
        return n00.r(this.f68050k, ")", sbS);
    }
}
