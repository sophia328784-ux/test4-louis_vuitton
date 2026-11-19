package com.vuitton.foundation.model.domain.model.product.vto;

import defpackage.fc;
import defpackage.n00;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/vto/Cheekbone;", "", "", "left", "right", "overall", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Cheekbone {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68037a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68038b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f68039c;

    public Cheekbone(String str, String str2, String str3) {
        this.f68037a = str;
        this.f68038b = str2;
        this.f68039c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Cheekbone)) {
            return false;
        }
        Cheekbone cheekbone = (Cheekbone) obj;
        return Intrinsics.c(this.f68037a, cheekbone.f68037a) && Intrinsics.c(this.f68038b, cheekbone.f68038b) && Intrinsics.c(this.f68039c, cheekbone.f68039c);
    }

    public final int hashCode() {
        String str = this.f68037a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f68038b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f68039c;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        return n00.r(this.f68039c, ")", fc.s("Cheekbone(left=", this.f68037a, ", right=", this.f68038b, ", overall="));
    }
}
