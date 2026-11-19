package com.vuitton.android.data.dto.booking;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.w9;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingActionDto;", "", "Lcom/vuitton/android/data/dto/booking/BookingActionTypeDto;", "type", "Lcom/vuitton/android/data/dto/booking/BookingCalendarDataDto;", DbParams.KEY_DATA, "<init>", "(Lcom/vuitton/android/data/dto/booking/BookingActionTypeDto;Lcom/vuitton/android/data/dto/booking/BookingCalendarDataDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/booking/BookingActionTypeDto;Lcom/vuitton/android/data/dto/booking/BookingCalendarDataDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class BookingActionDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy[] f44620c = {LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new w9(29)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BookingActionTypeDto f44621a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BookingCalendarDataDto f44622b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingActionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/booking/BookingActionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<BookingActionDto> serializer() {
            return BookingActionDto$$serializer.f44623a;
        }
    }

    public /* synthetic */ BookingActionDto(int i2, BookingActionTypeDto bookingActionTypeDto, BookingCalendarDataDto bookingCalendarDataDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, BookingActionDto$$serializer.f44623a.getF19838b());
            throw null;
        }
        this.f44621a = bookingActionTypeDto;
        if ((i2 & 2) == 0) {
            this.f44622b = null;
        } else {
            this.f44622b = bookingCalendarDataDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingActionDto)) {
            return false;
        }
        BookingActionDto bookingActionDto = (BookingActionDto) obj;
        return this.f44621a == bookingActionDto.f44621a && Intrinsics.c(this.f44622b, bookingActionDto.f44622b);
    }

    public final int hashCode() {
        int iHashCode = this.f44621a.hashCode() * 31;
        BookingCalendarDataDto bookingCalendarDataDto = this.f44622b;
        return iHashCode + (bookingCalendarDataDto == null ? 0 : bookingCalendarDataDto.hashCode());
    }

    public final String toString() {
        return "BookingActionDto(type=" + this.f44621a + ", data=" + this.f44622b + ")";
    }

    public BookingActionDto(BookingActionTypeDto bookingActionTypeDto, BookingCalendarDataDto bookingCalendarDataDto) {
        bookingActionTypeDto.getClass();
        this.f44621a = bookingActionTypeDto;
        this.f44622b = bookingCalendarDataDto;
    }

    public /* synthetic */ BookingActionDto(BookingActionTypeDto bookingActionTypeDto, BookingCalendarDataDto bookingCalendarDataDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(bookingActionTypeDto, (i2 & 2) != 0 ? null : bookingCalendarDataDto);
    }
}
