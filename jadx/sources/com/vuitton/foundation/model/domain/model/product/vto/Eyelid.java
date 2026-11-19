package com.vuitton.foundation.model.domain.model.product.vto;

import defpackage.cj;
import defpackage.fc;
import defpackage.tr;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\b\u0018\u00002\u00020\u0001BW\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/vto/Eyelid;", "", "", "leftEyelid", "rightEyelid", "leftAngle", "rightAngle", "leftShape", "rightShape", "setting", "size", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Eyelid {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68051a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68052b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f68053c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f68054e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f68055f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f68056h;

    public Eyelid(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.f68051a = str;
        this.f68052b = str2;
        this.f68053c = str3;
        this.d = str4;
        this.f68054e = str5;
        this.f68055f = str6;
        this.g = str7;
        this.f68056h = str8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Eyelid)) {
            return false;
        }
        Eyelid eyelid = (Eyelid) obj;
        return Intrinsics.c(this.f68051a, eyelid.f68051a) && Intrinsics.c(this.f68052b, eyelid.f68052b) && Intrinsics.c(this.f68053c, eyelid.f68053c) && Intrinsics.c(this.d, eyelid.d) && Intrinsics.c(this.f68054e, eyelid.f68054e) && Intrinsics.c(this.f68055f, eyelid.f68055f) && Intrinsics.c(this.g, eyelid.g) && Intrinsics.c(this.f68056h, eyelid.f68056h);
    }

    public final int hashCode() {
        String str = this.f68051a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f68052b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f68053c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f68054e;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f68055f;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.g;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.f68056h;
        return iHashCode7 + (str8 != null ? str8.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("Eyelid(leftEyelid=", this.f68051a, ", rightEyelid=", this.f68052b, ", leftAngle=");
        cj.C(sbS, this.f68053c, ", rightAngle=", this.d, ", leftShape=");
        cj.C(sbS, this.f68054e, ", rightShape=", this.f68055f, ", setting=");
        return tr.l(sbS, this.g, ", size=", this.f68056h, ")");
    }
}
