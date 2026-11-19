package com.vuitton.foundation.model.domain.model.product.universal;

import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/Edito;", "", "", "title", "imageUrl", "description", "cta", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Edito {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67981a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67982b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67983c;
    public final String d;

    public Edito(String str, String str2, String str3, String str4) {
        str3.getClass();
        str4.getClass();
        this.f67981a = str;
        this.f67982b = str2;
        this.f67983c = str3;
        this.d = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Edito)) {
            return false;
        }
        Edito edito = (Edito) obj;
        return Intrinsics.c(this.f67981a, edito.f67981a) && Intrinsics.c(this.f67982b, edito.f67982b) && Intrinsics.c(this.f67983c, edito.f67983c) && Intrinsics.c(this.d, edito.d);
    }

    public final int hashCode() {
        String str = this.f67981a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f67982b;
        return this.d.hashCode() + fc.b((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31, 31, this.f67983c);
    }

    public final String toString() {
        return tr.l(fc.s("Edito(title=", this.f67981a, ", imageUrl=", this.f67982b, ", description="), this.f67983c, ", cta=", this.d, ")");
    }
}
