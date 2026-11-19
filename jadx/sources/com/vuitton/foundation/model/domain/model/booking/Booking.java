package com.vuitton.foundation.model.domain.model.booking;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0085\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\b\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0012¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/Booking;", "", "Lcom/vuitton/foundation/model/domain/model/booking/BookingId;", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;", "experienceId", "Lcom/vuitton/foundation/model/domain/model/booking/BookingType;", "type", "", "title", "surtitle", "disclaimer", "cancellationDisclaimer", "address", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "landscapeImage", "squareImage", "subtitle", "", "Lcom/vuitton/foundation/model/domain/model/booking/BookingInfo;", "information", "Lcom/vuitton/foundation/model/domain/model/booking/BookingAction;", "actions", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/booking/BookingType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Booking {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66675a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66676b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BookingType f66677c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f66678e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f66679f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f66680h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AssetImage f66681i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AssetImage f66682j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f66683k;
    public final List l;
    public final List m;

    public Booking(String str, String str2, BookingType bookingType, String str3, String str4, String str5, String str6, String str7, AssetImage assetImage, AssetImage assetImage2, String str8, List list, List list2, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        bookingType.getClass();
        str3.getClass();
        assetImage.getClass();
        assetImage2.getClass();
        list.getClass();
        list2.getClass();
        this.f66675a = str;
        this.f66676b = str2;
        this.f66677c = bookingType;
        this.d = str3;
        this.f66678e = str4;
        this.f66679f = str5;
        this.g = str6;
        this.f66680h = str7;
        this.f66681i = assetImage;
        this.f66682j = assetImage2;
        this.f66683k = str8;
        this.l = list;
        this.m = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Booking)) {
            return false;
        }
        Booking booking = (Booking) obj;
        String str = booking.f66675a;
        BookingId.Companion companion = BookingId.INSTANCE;
        if (!this.f66675a.equals(str)) {
            return false;
        }
        String str2 = booking.f66676b;
        ExperienceId.Companion companion2 = ExperienceId.INSTANCE;
        return this.f66676b.equals(str2) && this.f66677c == booking.f66677c && this.d.equals(booking.d) && Intrinsics.c(this.f66678e, booking.f66678e) && Intrinsics.c(this.f66679f, booking.f66679f) && Intrinsics.c(this.g, booking.g) && Intrinsics.c(this.f66680h, booking.f66680h) && this.f66681i.equals(booking.f66681i) && this.f66682j.equals(booking.f66682j) && Intrinsics.c(this.f66683k, booking.f66683k) && this.l.equals(booking.l) && this.m.equals(booking.m);
    }

    public final int hashCode() {
        BookingId.Companion companion = BookingId.INSTANCE;
        int iHashCode = this.f66675a.hashCode() * 31;
        ExperienceId.Companion companion2 = ExperienceId.INSTANCE;
        int iB = fc.b((this.f66677c.hashCode() + fc.b(iHashCode, 31, this.f66676b)) * 31, 31, this.d);
        String str = this.f66678e;
        int iHashCode2 = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f66679f;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.g;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f66680h;
        int iHashCode5 = (this.f66682j.hashCode() + ((this.f66681i.hashCode() + ((iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31)) * 31)) * 31;
        String str5 = this.f66683k;
        return this.m.hashCode() + n00.a((iHashCode5 + (str5 != null ? str5.hashCode() : 0)) * 31, 31, this.l);
    }

    public final String toString() {
        BookingId.Companion companion = BookingId.INSTANCE;
        ExperienceId.Companion companion2 = ExperienceId.INSTANCE;
        StringBuilder sbS = fc.s("Booking(id=", this.f66675a, ", experienceId=", this.f66676b, ", type=");
        sbS.append(this.f66677c);
        sbS.append(", title=");
        sbS.append(this.d);
        sbS.append(", surtitle=");
        cj.C(sbS, this.f66678e, ", disclaimer=", this.f66679f, ", cancellationDisclaimer=");
        cj.C(sbS, this.g, ", address=", this.f66680h, ", landscapeImage=");
        sbS.append(this.f66681i);
        sbS.append(", squareImage=");
        sbS.append(this.f66682j);
        sbS.append(", subtitle=");
        d21.z(this.f66683k, ", information=", ", actions=", sbS, this.l);
        return a.o(sbS, this.m, ")");
    }
}
