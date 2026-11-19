package com.vuitton.foundation.model.domain.model.booking;

import com.vuitton.foundation.model.domain.model.common.AssetImage;
import defpackage.fc;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\n\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/BookingPass;", "", "", "title", "surtitle", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "thumbnail", "", "Lcom/vuitton/foundation/model/domain/model/booking/BookingInfo;", "information", "qrCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BookingPass {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66751a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66752b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetImage f66753c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AssetImage f66754e;

    public BookingPass(String str, String str2, AssetImage assetImage, List<BookingInfo> list, AssetImage assetImage2) {
        str.getClass();
        str2.getClass();
        assetImage.getClass();
        list.getClass();
        assetImage2.getClass();
        this.f66751a = str;
        this.f66752b = str2;
        this.f66753c = assetImage;
        this.d = list;
        this.f66754e = assetImage2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingPass)) {
            return false;
        }
        BookingPass bookingPass = (BookingPass) obj;
        return Intrinsics.c(this.f66751a, bookingPass.f66751a) && Intrinsics.c(this.f66752b, bookingPass.f66752b) && Intrinsics.c(this.f66753c, bookingPass.f66753c) && Intrinsics.c(this.d, bookingPass.d) && Intrinsics.c(this.f66754e, bookingPass.f66754e);
    }

    public final int hashCode() {
        return this.f66754e.hashCode() + n00.a((this.f66753c.hashCode() + fc.b(this.f66751a.hashCode() * 31, 31, this.f66752b)) * 31, 31, this.d);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("BookingPass(title=", this.f66751a, ", surtitle=", this.f66752b, ", thumbnail=");
        sbS.append(this.f66753c);
        sbS.append(", information=");
        sbS.append(this.d);
        sbS.append(", qrCode=");
        sbS.append(this.f66754e);
        sbS.append(")");
        return sbS.toString();
    }
}
