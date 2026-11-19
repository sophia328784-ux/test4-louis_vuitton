package com.vuitton.android.data.dto.booking;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.d21;
import defpackage.n00;
import defpackage.xe;
import java.util.List;
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
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\t\u0010\nBO\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingFormSlotDateDto;", "", "", "date", "", "Lcom/vuitton/android/data/dto/booking/BookingFormSlotDto;", "morningSlots", "afternoonSlots", "selectedSlot", "<init>", "(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class BookingFormSlotDateDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy[] f44686e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44687a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f44688b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f44689c;
    public final String d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingFormSlotDateDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/booking/BookingFormSlotDateDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<BookingFormSlotDateDto> serializer() {
            return BookingFormSlotDateDto$$serializer.f44690a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f44686e = new Lazy[]{null, LazyKt.a(lazyThreadSafetyMode, new xe(10)), LazyKt.a(lazyThreadSafetyMode, new xe(11)), null};
    }

    public /* synthetic */ BookingFormSlotDateDto(int i2, String str, List list, List list2, String str2, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, BookingFormSlotDateDto$$serializer.f44690a.getF19838b());
            throw null;
        }
        this.f44687a = str;
        this.f44688b = list;
        this.f44689c = list2;
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingFormSlotDateDto)) {
            return false;
        }
        BookingFormSlotDateDto bookingFormSlotDateDto = (BookingFormSlotDateDto) obj;
        return Intrinsics.c(this.f44687a, bookingFormSlotDateDto.f44687a) && Intrinsics.c(this.f44688b, bookingFormSlotDateDto.f44688b) && Intrinsics.c(this.f44689c, bookingFormSlotDateDto.f44689c) && Intrinsics.c(this.d, bookingFormSlotDateDto.d);
    }

    public final int hashCode() {
        int iA = n00.a(n00.a(this.f44687a.hashCode() * 31, 31, this.f44688b), 31, this.f44689c);
        String str = this.d;
        return iA + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sbT = d21.t("BookingFormSlotDateDto(date=", this.f44687a, ", morningSlots=", this.f44688b, ", afternoonSlots=");
        sbT.append(this.f44689c);
        sbT.append(", selectedSlot=");
        sbT.append(this.d);
        sbT.append(")");
        return sbT.toString();
    }

    public BookingFormSlotDateDto(String str, List<BookingFormSlotDto> list, List<BookingFormSlotDto> list2, String str2) {
        str.getClass();
        list.getClass();
        list2.getClass();
        this.f44687a = str;
        this.f44688b = list;
        this.f44689c = list2;
        this.d = str2;
    }

    public /* synthetic */ BookingFormSlotDateDto(String str, List list, List list2, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, list, list2, (i2 & 8) != 0 ? null : str2);
    }
}
