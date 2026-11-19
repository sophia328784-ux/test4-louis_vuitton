package com.vuitton.android.data.dto.booking;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013Bo\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\n\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingFormStepDto;", "", "", b.a.f24015b, "type", "title", "subtitle", "description", "Lcom/vuitton/android/data/dto/booking/BookingDisclaimerDto;", "disclaimer", "", "mandatory", "updateFormAfterEditing", "", "disruptedStepsAfterEditing", "Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/booking/BookingDisclaimerDto;ZZLjava/util/List;Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto;)V", "Companion"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable(with = BookingFormStepDtoSerializer.class)
public final /* data */ class BookingFormStepDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44711a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44712b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44713c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f44714e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BookingDisclaimerDto f44715f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f44716h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f44717i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final BookingFormStepDataDto f44718j;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingFormStepDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/booking/BookingFormStepDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<BookingFormStepDto> serializer() {
            return BookingFormStepDtoSerializer.f44719a;
        }
    }

    public BookingFormStepDto(String str, String str2, String str3, String str4, String str5, BookingDisclaimerDto bookingDisclaimerDto, boolean z, boolean z2, List<String> list, BookingFormStepDataDto bookingFormStepDataDto) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        list.getClass();
        bookingFormStepDataDto.getClass();
        this.f44711a = str;
        this.f44712b = str2;
        this.f44713c = str3;
        this.d = str4;
        this.f44714e = str5;
        this.f44715f = bookingDisclaimerDto;
        this.g = z;
        this.f44716h = z2;
        this.f44717i = list;
        this.f44718j = bookingFormStepDataDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingFormStepDto)) {
            return false;
        }
        BookingFormStepDto bookingFormStepDto = (BookingFormStepDto) obj;
        return Intrinsics.c(this.f44711a, bookingFormStepDto.f44711a) && Intrinsics.c(this.f44712b, bookingFormStepDto.f44712b) && Intrinsics.c(this.f44713c, bookingFormStepDto.f44713c) && Intrinsics.c(this.d, bookingFormStepDto.d) && Intrinsics.c(this.f44714e, bookingFormStepDto.f44714e) && Intrinsics.c(this.f44715f, bookingFormStepDto.f44715f) && this.g == bookingFormStepDto.g && this.f44716h == bookingFormStepDto.f44716h && Intrinsics.c(this.f44717i, bookingFormStepDto.f44717i) && Intrinsics.c(this.f44718j, bookingFormStepDto.f44718j);
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(this.f44711a.hashCode() * 31, 31, this.f44712b), 31, this.f44713c);
        String str = this.d;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f44714e;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        BookingDisclaimerDto bookingDisclaimerDto = this.f44715f;
        return this.f44718j.hashCode() + n00.a(o60.b(o60.b((iHashCode2 + (bookingDisclaimerDto != null ? bookingDisclaimerDto.hashCode() : 0)) * 31, 31, this.g), 31, this.f44716h), 31, this.f44717i);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("BookingFormStepDto(id=", this.f44711a, ", type=", this.f44712b, ", title=");
        cj.C(sbS, this.f44713c, ", subtitle=", this.d, ", description=");
        sbS.append(this.f44714e);
        sbS.append(", disclaimer=");
        sbS.append(this.f44715f);
        sbS.append(", mandatory=");
        fc.y(sbS, this.g, ", updateFormAfterEditing=", this.f44716h, ", disruptedStepsAfterEditing=");
        sbS.append(this.f44717i);
        sbS.append(", data=");
        sbS.append(this.f44718j);
        sbS.append(")");
        return sbS.toString();
    }

    public BookingFormStepDto(String str, String str2, String str3, String str4, String str5, BookingDisclaimerDto bookingDisclaimerDto, boolean z, boolean z2, List list, BookingFormStepDataDto bookingFormStepDataDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : str5, (i2 & 32) != 0 ? null : bookingDisclaimerDto, (i2 & 64) != 0 ? false : z, (i2 & 128) != 0 ? false : z2, (i2 & 256) != 0 ? EmptyList.f71768b : list, bookingFormStepDataDto);
    }
}
