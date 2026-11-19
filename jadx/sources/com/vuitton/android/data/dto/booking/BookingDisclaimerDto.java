package com.vuitton.android.data.dto.booking;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingDisclaimerDto;", "", "", "value", "Lcom/vuitton/android/data/dto/booking/BookingDisclaimerActionDto;", "action", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/booking/BookingDisclaimerActionDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/booking/BookingDisclaimerActionDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class BookingDisclaimerDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44639a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BookingDisclaimerActionDto f44640b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingDisclaimerDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/booking/BookingDisclaimerDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<BookingDisclaimerDto> serializer() {
            return BookingDisclaimerDto$$serializer.f44641a;
        }
    }

    public /* synthetic */ BookingDisclaimerDto(int i2, String str, BookingDisclaimerActionDto bookingDisclaimerActionDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, BookingDisclaimerDto$$serializer.f44641a.a());
            throw null;
        }
        this.f44639a = str;
        if ((i2 & 2) == 0) {
            this.f44640b = null;
        } else {
            this.f44640b = bookingDisclaimerActionDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingDisclaimerDto)) {
            return false;
        }
        BookingDisclaimerDto bookingDisclaimerDto = (BookingDisclaimerDto) obj;
        return Intrinsics.c(this.f44639a, bookingDisclaimerDto.f44639a) && Intrinsics.c(this.f44640b, bookingDisclaimerDto.f44640b);
    }

    public final int hashCode() {
        int iHashCode = this.f44639a.hashCode() * 31;
        BookingDisclaimerActionDto bookingDisclaimerActionDto = this.f44640b;
        return iHashCode + (bookingDisclaimerActionDto == null ? 0 : bookingDisclaimerActionDto.hashCode());
    }

    public final String toString() {
        return "BookingDisclaimerDto(value=" + this.f44639a + ", action=" + this.f44640b + ")";
    }

    public BookingDisclaimerDto(String str, BookingDisclaimerActionDto bookingDisclaimerActionDto) {
        str.getClass();
        this.f44639a = str;
        this.f44640b = bookingDisclaimerActionDto;
    }

    public /* synthetic */ BookingDisclaimerDto(String str, BookingDisclaimerActionDto bookingDisclaimerActionDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : bookingDisclaimerActionDto);
    }
}
