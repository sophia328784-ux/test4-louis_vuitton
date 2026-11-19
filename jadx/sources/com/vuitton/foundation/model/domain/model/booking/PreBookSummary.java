package com.vuitton.foundation.model.domain.model.booking;

import com.vuitton.foundation.model.domain.model.product.universal.Price;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/PreBookSummary;", "", "", "Lcom/vuitton/foundation/model/domain/model/booking/PreBook;", "prebookList", "Lcom/vuitton/foundation/model/domain/model/booking/BookingAdditional;", "additionalList", "Lcom/vuitton/foundation/model/domain/model/product/universal/Price;", "priceInfo", "", "freeLabel", "<init>", "(Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/product/universal/Price;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PreBookSummary {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f66776a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f66777b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Price f66778c;
    public final String d;

    public PreBookSummary(List<PreBook> list, List<BookingAdditional> list2, Price price, String str) {
        list.getClass();
        list2.getClass();
        price.getClass();
        this.f66776a = list;
        this.f66777b = list2;
        this.f66778c = price;
        this.d = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PreBookSummary)) {
            return false;
        }
        PreBookSummary preBookSummary = (PreBookSummary) obj;
        return Intrinsics.c(this.f66776a, preBookSummary.f66776a) && Intrinsics.c(this.f66777b, preBookSummary.f66777b) && Intrinsics.c(this.f66778c, preBookSummary.f66778c) && Intrinsics.c(this.d, preBookSummary.d);
    }

    public final int hashCode() {
        int iHashCode = (this.f66778c.hashCode() + n00.a(this.f66776a.hashCode() * 31, 31, this.f66777b)) * 31;
        String str = this.d;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sbS = o60.s("PreBookSummary(prebookList=", ", additionalList=", ", priceInfo=", this.f66776a, this.f66777b);
        sbS.append(this.f66778c);
        sbS.append(", freeLabel=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }
}
