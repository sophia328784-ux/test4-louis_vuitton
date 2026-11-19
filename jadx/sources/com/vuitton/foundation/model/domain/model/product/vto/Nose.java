package com.vuitton.foundation.model.domain.model.product.vto;

import defpackage.d21;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/vto/Nose;", "", "", "width", "length", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Nose {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68068a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68069b;

    public Nose(String str, String str2) {
        this.f68068a = str;
        this.f68069b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Nose)) {
            return false;
        }
        Nose nose = (Nose) obj;
        return Intrinsics.c(this.f68068a, nose.f68068a) && Intrinsics.c(this.f68069b, nose.f68069b);
    }

    public final int hashCode() {
        String str = this.f68068a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f68069b;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return d21.l("Nose(width=", this.f68068a, ", length=", this.f68069b, ")");
    }
}
