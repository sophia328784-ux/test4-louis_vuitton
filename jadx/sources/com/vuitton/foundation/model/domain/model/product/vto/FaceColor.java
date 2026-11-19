package com.vuitton.foundation.model.domain.model.product.vto;

import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/vto/FaceColor;", "", "", "eye", "lip", "eyebrow", "skin", "hair", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FaceColor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68057a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68058b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f68059c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f68060e;

    public FaceColor(String str, String str2, String str3, String str4, String str5) {
        this.f68057a = str;
        this.f68058b = str2;
        this.f68059c = str3;
        this.d = str4;
        this.f68060e = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FaceColor)) {
            return false;
        }
        FaceColor faceColor = (FaceColor) obj;
        return Intrinsics.c(this.f68057a, faceColor.f68057a) && Intrinsics.c(this.f68058b, faceColor.f68058b) && Intrinsics.c(this.f68059c, faceColor.f68059c) && Intrinsics.c(this.d, faceColor.d) && Intrinsics.c(this.f68060e, faceColor.f68060e);
    }

    public final int hashCode() {
        String str = this.f68057a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f68058b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f68059c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f68060e;
        return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("FaceColor(eye=", this.f68057a, ", lip=", this.f68058b, ", eyebrow=");
        cj.C(sbS, this.f68059c, ", skin=", this.d, ", hair=");
        return n00.r(this.f68060e, ")", sbS);
    }
}
