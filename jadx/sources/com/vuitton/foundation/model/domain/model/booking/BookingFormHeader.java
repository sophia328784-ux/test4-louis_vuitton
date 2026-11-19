package com.vuitton.foundation.model.domain.model.booking;

import com.vuitton.foundation.model.domain.model.common.AssetImage;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001BK\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\t\u001a\u00020\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/BookingFormHeader;", "", "", "title", "surtitle", "description", "additionalInformation", "dateTime", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "tag", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BookingFormHeader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66704a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66705b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66706c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f66707e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AssetImage f66708f;
    public final String g;

    public BookingFormHeader(String str, String str2, String str3, String str4, String str5, AssetImage assetImage, String str6) {
        str.getClass();
        assetImage.getClass();
        this.f66704a = str;
        this.f66705b = str2;
        this.f66706c = str3;
        this.d = str4;
        this.f66707e = str5;
        this.f66708f = assetImage;
        this.g = str6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingFormHeader)) {
            return false;
        }
        BookingFormHeader bookingFormHeader = (BookingFormHeader) obj;
        return Intrinsics.c(this.f66704a, bookingFormHeader.f66704a) && Intrinsics.c(this.f66705b, bookingFormHeader.f66705b) && Intrinsics.c(this.f66706c, bookingFormHeader.f66706c) && Intrinsics.c(this.d, bookingFormHeader.d) && Intrinsics.c(this.f66707e, bookingFormHeader.f66707e) && Intrinsics.c(this.f66708f, bookingFormHeader.f66708f) && Intrinsics.c(this.g, bookingFormHeader.g);
    }

    public final int hashCode() {
        int iHashCode = this.f66704a.hashCode() * 31;
        String str = this.f66705b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f66706c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f66707e;
        int iHashCode5 = (this.f66708f.hashCode() + ((iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31)) * 31;
        String str5 = this.g;
        return iHashCode5 + (str5 != null ? str5.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("BookingFormHeader(title=", this.f66704a, ", surtitle=", this.f66705b, ", description=");
        cj.C(sbS, this.f66706c, ", additionalInformation=", this.d, ", dateTime=");
        sbS.append(this.f66707e);
        sbS.append(", image=");
        sbS.append(this.f66708f);
        sbS.append(", tag=");
        return n00.r(this.g, ")", sbS);
    }

    public /* synthetic */ BookingFormHeader(String str, String str2, String str3, String str4, String str5, AssetImage assetImage, String str6, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, str5, assetImage, (i2 & 64) != 0 ? null : str6);
    }
}
