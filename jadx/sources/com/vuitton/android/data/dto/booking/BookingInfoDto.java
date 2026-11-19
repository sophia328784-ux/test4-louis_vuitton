package com.vuitton.android.data.dto.booking;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import defpackage.xe;
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
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bB9\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingInfoDto;", "", "", "title", "value", "Lcom/vuitton/android/data/dto/booking/BookingInfoTypeDto;", "type", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/booking/BookingInfoTypeDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/booking/BookingInfoTypeDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class BookingInfoDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d = {null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new xe(19))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44722a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44723b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BookingInfoTypeDto f44724c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingInfoDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/booking/BookingInfoDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<BookingInfoDto> serializer() {
            return BookingInfoDto$$serializer.f44725a;
        }
    }

    public /* synthetic */ BookingInfoDto(int i2, String str, String str2, BookingInfoTypeDto bookingInfoTypeDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, BookingInfoDto$$serializer.f44725a.getF19838b());
            throw null;
        }
        this.f44722a = str;
        this.f44723b = str2;
        this.f44724c = bookingInfoTypeDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingInfoDto)) {
            return false;
        }
        BookingInfoDto bookingInfoDto = (BookingInfoDto) obj;
        return Intrinsics.c(this.f44722a, bookingInfoDto.f44722a) && Intrinsics.c(this.f44723b, bookingInfoDto.f44723b) && this.f44724c == bookingInfoDto.f44724c;
    }

    public final int hashCode() {
        return this.f44724c.hashCode() + fc.b(this.f44722a.hashCode() * 31, 31, this.f44723b);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("BookingInfoDto(title=", this.f44722a, ", value=", this.f44723b, ", type=");
        sbS.append(this.f44724c);
        sbS.append(")");
        return sbS.toString();
    }

    public BookingInfoDto(String str, String str2, BookingInfoTypeDto bookingInfoTypeDto) {
        str.getClass();
        str2.getClass();
        bookingInfoTypeDto.getClass();
        this.f44722a = str;
        this.f44723b = str2;
        this.f44724c = bookingInfoTypeDto;
    }
}
