package com.vuitton.foundation.model.domain.model.cart;

import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/cart/FormattedTaxDetails;", "", "", "gst", "qst", "hst", "pst", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FormattedTaxDetails {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66969a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66970b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66971c;
    public final String d;

    public FormattedTaxDetails(String str, String str2, String str3, String str4) {
        this.f66969a = str;
        this.f66970b = str2;
        this.f66971c = str3;
        this.d = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FormattedTaxDetails)) {
            return false;
        }
        FormattedTaxDetails formattedTaxDetails = (FormattedTaxDetails) obj;
        return Intrinsics.c(this.f66969a, formattedTaxDetails.f66969a) && Intrinsics.c(this.f66970b, formattedTaxDetails.f66970b) && Intrinsics.c(this.f66971c, formattedTaxDetails.f66971c) && Intrinsics.c(this.d, formattedTaxDetails.d);
    }

    public final int hashCode() {
        String str = this.f66969a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f66970b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f66971c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        return tr.l(fc.s("FormattedTaxDetails(gst=", this.f66969a, ", qst=", this.f66970b, ", hst="), this.f66971c, ", pst=", this.d, ")");
    }
}
