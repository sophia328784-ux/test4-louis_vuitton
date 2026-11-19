package com.vuitton.android.data.dto.booking;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006B/\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0005\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingFormFreeTypingDto;", "", "", "value", "placeholder", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class BookingFormFreeTypingDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44673a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44674b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingFormFreeTypingDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/booking/BookingFormFreeTypingDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<BookingFormFreeTypingDto> serializer() {
            return BookingFormFreeTypingDto$$serializer.f44675a;
        }
    }

    public /* synthetic */ BookingFormFreeTypingDto(int i2, String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
        if (2 != (i2 & 2)) {
            PluginExceptionsKt.b(i2, 2, BookingFormFreeTypingDto$$serializer.f44675a.a());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f44673a = null;
        } else {
            this.f44673a = str;
        }
        this.f44674b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingFormFreeTypingDto)) {
            return false;
        }
        BookingFormFreeTypingDto bookingFormFreeTypingDto = (BookingFormFreeTypingDto) obj;
        return Intrinsics.c(this.f44673a, bookingFormFreeTypingDto.f44673a) && Intrinsics.c(this.f44674b, bookingFormFreeTypingDto.f44674b);
    }

    public final int hashCode() {
        String str = this.f44673a;
        return this.f44674b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
    }

    public final String toString() {
        return d21.l("BookingFormFreeTypingDto(value=", this.f44673a, ", placeholder=", this.f44674b, ")");
    }

    public BookingFormFreeTypingDto(String str, String str2) {
        str2.getClass();
        this.f44673a = str;
        this.f44674b = str2;
    }

    public /* synthetic */ BookingFormFreeTypingDto(String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, str2);
    }
}
