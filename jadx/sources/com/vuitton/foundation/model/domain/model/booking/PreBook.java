package com.vuitton.foundation.model.domain.model.booking;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.time.Instant;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B[\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/PreBook;", "", "Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;", "experienceId", "Lcom/vuitton/foundation/model/domain/model/booking/BookingType;", "type", "", "title", "surtitle", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "", "Lcom/vuitton/foundation/model/domain/model/booking/BookingInfo;", "information", "disclaimer", "Ljava/time/Instant;", "expirationDate", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/booking/BookingType;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/util/List;Ljava/lang/String;Ljava/time/Instant;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PreBook {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66757a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66758b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BookingType f66759c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f66760e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AssetImage f66761f;
    public final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f66762h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Instant f66763i;

    public PreBook(String str, String str2, BookingType bookingType, String str3, String str4, AssetImage assetImage, List list, String str5, Instant instant, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        bookingType.getClass();
        str3.getClass();
        assetImage.getClass();
        list.getClass();
        this.f66757a = str;
        this.f66758b = str2;
        this.f66759c = bookingType;
        this.d = str3;
        this.f66760e = str4;
        this.f66761f = assetImage;
        this.g = list;
        this.f66762h = str5;
        this.f66763i = instant;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PreBook)) {
            return false;
        }
        PreBook preBook = (PreBook) obj;
        String str = preBook.f66757a;
        PreBookId.Companion companion = PreBookId.INSTANCE;
        if (!this.f66757a.equals(str)) {
            return false;
        }
        String str2 = preBook.f66758b;
        ExperienceId.Companion companion2 = ExperienceId.INSTANCE;
        return this.f66758b.equals(str2) && this.f66759c == preBook.f66759c && this.d.equals(preBook.d) && Intrinsics.c(this.f66760e, preBook.f66760e) && this.f66761f.equals(preBook.f66761f) && this.g.equals(preBook.g) && Intrinsics.c(this.f66762h, preBook.f66762h) && Intrinsics.c(this.f66763i, preBook.f66763i);
    }

    public final int hashCode() {
        PreBookId.Companion companion = PreBookId.INSTANCE;
        int iHashCode = this.f66757a.hashCode() * 31;
        ExperienceId.Companion companion2 = ExperienceId.INSTANCE;
        int iB = fc.b((this.f66759c.hashCode() + fc.b(iHashCode, 31, this.f66758b)) * 31, 31, this.d);
        String str = this.f66760e;
        int iA = n00.a((this.f66761f.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31)) * 31, 31, this.g);
        String str2 = this.f66762h;
        int iHashCode2 = (iA + (str2 == null ? 0 : str2.hashCode())) * 31;
        Instant instant = this.f66763i;
        return iHashCode2 + (instant != null ? instant.hashCode() : 0);
    }

    public final String toString() {
        PreBookId.Companion companion = PreBookId.INSTANCE;
        ExperienceId.Companion companion2 = ExperienceId.INSTANCE;
        StringBuilder sbS = fc.s("PreBook(id=", this.f66757a, ", experienceId=", this.f66758b, ", type=");
        sbS.append(this.f66759c);
        sbS.append(", title=");
        sbS.append(this.d);
        sbS.append(", surtitle=");
        sbS.append(this.f66760e);
        sbS.append(", image=");
        sbS.append(this.f66761f);
        sbS.append(", information=");
        o60.B(", disclaimer=", this.f66762h, ", expirationDate=", sbS, this.g);
        sbS.append(this.f66763i);
        sbS.append(")");
        return sbS.toString();
    }
}
