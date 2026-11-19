package com.vuitton.foundation.model.domain.model.cart;

import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/cart/GiftingContribution;", "", "", "imageCart", "imageGiftPage", "article", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class GiftingContribution {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66981a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66982b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66983c;

    public GiftingContribution(String str, String str2, String str3) {
        this.f66981a = str;
        this.f66982b = str2;
        this.f66983c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GiftingContribution)) {
            return false;
        }
        GiftingContribution giftingContribution = (GiftingContribution) obj;
        return Intrinsics.c(this.f66981a, giftingContribution.f66981a) && Intrinsics.c(this.f66982b, giftingContribution.f66982b) && Intrinsics.c(this.f66983c, giftingContribution.f66983c);
    }

    public final int hashCode() {
        String str = this.f66981a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f66982b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f66983c;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        return n00.r(this.f66983c, ")", fc.s("GiftingContribution(imageCart=", this.f66981a, ", imageGiftPage=", this.f66982b, ", article="));
    }
}
