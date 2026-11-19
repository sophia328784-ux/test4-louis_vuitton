package com.vuitton.foundation.model.domain.model.product.availability;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/availability/BackInStockUnsubscribeBody;", "", "", "installIdentifier", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BackInStockUnsubscribeBody {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67938a;

    public BackInStockUnsubscribeBody(String str) {
        str.getClass();
        this.f67938a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BackInStockUnsubscribeBody) && Intrinsics.c(this.f67938a, ((BackInStockUnsubscribeBody) obj).f67938a);
    }

    public final int hashCode() {
        return this.f67938a.hashCode();
    }

    public final String toString() {
        return fc.h("BackInStockUnsubscribeBody(installIdentifier=", this.f67938a, ")");
    }
}
