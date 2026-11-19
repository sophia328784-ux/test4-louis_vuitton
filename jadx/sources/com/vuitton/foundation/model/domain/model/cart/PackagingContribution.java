package com.vuitton.foundation.model.domain.model.cart;

import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/cart/PackagingContribution;", "", "", "title", "description", "image", "article", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PackagingContribution {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66984a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66985b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66986c;
    public final String d;

    public PackagingContribution(String str, String str2, String str3, String str4) {
        this.f66984a = str;
        this.f66985b = str2;
        this.f66986c = str3;
        this.d = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PackagingContribution)) {
            return false;
        }
        PackagingContribution packagingContribution = (PackagingContribution) obj;
        return Intrinsics.c(this.f66984a, packagingContribution.f66984a) && Intrinsics.c(this.f66985b, packagingContribution.f66985b) && Intrinsics.c(this.f66986c, packagingContribution.f66986c) && Intrinsics.c(this.d, packagingContribution.d);
    }

    public final int hashCode() {
        String str = this.f66984a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f66985b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f66986c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        return tr.l(fc.s("PackagingContribution(title=", this.f66984a, ", description=", this.f66985b, ", image="), this.f66986c, ", article=", this.d, ")");
    }
}
