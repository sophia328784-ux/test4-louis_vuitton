package com.vuitton.foundation.model.domain.model.product.availability;

import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/availability/BackInStockSubscribeBody;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "", "installIdentifier", "", "isPreview", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BackInStockSubscribeBody {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67935a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67936b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Boolean f67937c;

    public BackInStockSubscribeBody(String str, String str2, Boolean bool, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        this.f67935a = str;
        this.f67936b = str2;
        this.f67937c = bool;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BackInStockSubscribeBody)) {
            return false;
        }
        BackInStockSubscribeBody backInStockSubscribeBody = (BackInStockSubscribeBody) obj;
        String str = backInStockSubscribeBody.f67935a;
        SkuId.Companion companion = SkuId.INSTANCE;
        return Intrinsics.c(this.f67935a, str) && Intrinsics.c(this.f67936b, backInStockSubscribeBody.f67936b) && Intrinsics.c(this.f67937c, backInStockSubscribeBody.f67937c);
    }

    public final int hashCode() {
        SkuId.Companion companion = SkuId.INSTANCE;
        int iB = fc.b(this.f67935a.hashCode() * 31, 31, this.f67936b);
        Boolean bool = this.f67937c;
        return iB + (bool == null ? 0 : bool.hashCode());
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        StringBuilder sbS = fc.s("BackInStockSubscribeBody(sku=", this.f67935a, ", installIdentifier=", this.f67936b, ", isPreview=");
        sbS.append(this.f67937c);
        sbS.append(")");
        return sbS.toString();
    }

    public /* synthetic */ BackInStockSubscribeBody(String str, String str2, Boolean bool, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : bool, null);
    }
}
