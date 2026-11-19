package com.vuitton.foundation.model.domain.model.product;

import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001BY\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0007\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/Reinsurance;", "", "", "identifier", "title", "subtitle", "text", "", "images", "variations", "variationId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Reinsurance {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67920a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67921b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67922c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f67923e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f67924f;
    public final String g;

    public Reinsurance(String str, String str2, String str3, String str4, List<String> list, List<Reinsurance> list2, String str5) {
        cj.z(str, str2, str4);
        this.f67920a = str;
        this.f67921b = str2;
        this.f67922c = str3;
        this.d = str4;
        this.f67923e = list;
        this.f67924f = list2;
        this.g = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Reinsurance)) {
            return false;
        }
        Reinsurance reinsurance = (Reinsurance) obj;
        return Intrinsics.c(this.f67920a, reinsurance.f67920a) && Intrinsics.c(this.f67921b, reinsurance.f67921b) && Intrinsics.c(this.f67922c, reinsurance.f67922c) && Intrinsics.c(this.d, reinsurance.d) && Intrinsics.c(this.f67923e, reinsurance.f67923e) && Intrinsics.c(this.f67924f, reinsurance.f67924f) && Intrinsics.c(this.g, reinsurance.g);
    }

    public final int hashCode() {
        int iB = fc.b(this.f67920a.hashCode() * 31, 31, this.f67921b);
        String str = this.f67922c;
        int iB2 = fc.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.d);
        List list = this.f67923e;
        int iHashCode = (iB2 + (list == null ? 0 : list.hashCode())) * 31;
        List list2 = this.f67924f;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        String str2 = this.g;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("Reinsurance(identifier=", this.f67920a, ", title=", this.f67921b, ", subtitle=");
        cj.C(sbS, this.f67922c, ", text=", this.d, ", images=");
        a.C(sbS, this.f67923e, ", variations=", this.f67924f, ", variationId=");
        return n00.r(this.g, ")", sbS);
    }

    public /* synthetic */ Reinsurance(String str, String str2, String str3, String str4, List list, List list2, String str5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, (i2 & 16) != 0 ? null : list, (i2 & 32) != 0 ? null : list2, (i2 & 64) != 0 ? null : str5);
    }
}
