package com.vuitton.android.data.dto.booking;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nBK\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingFormChoiceValueDto;", "", "", b.a.f24015b, "name", "description", "selectedDisplayName", "", "disabled", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class BookingFormChoiceValueDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44664a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44665b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44666c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f44667e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingFormChoiceValueDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/booking/BookingFormChoiceValueDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<BookingFormChoiceValueDto> serializer() {
            return BookingFormChoiceValueDto$$serializer.f44668a;
        }
    }

    public /* synthetic */ BookingFormChoiceValueDto(int i2, String str, String str2, String str3, String str4, boolean z, SerializationConstructorMarker serializationConstructorMarker) {
        if (27 != (i2 & 27)) {
            PluginExceptionsKt.b(i2, 27, BookingFormChoiceValueDto$$serializer.f44668a.getF19838b());
            throw null;
        }
        this.f44664a = str;
        this.f44665b = str2;
        if ((i2 & 4) == 0) {
            this.f44666c = null;
        } else {
            this.f44666c = str3;
        }
        this.d = str4;
        this.f44667e = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingFormChoiceValueDto)) {
            return false;
        }
        BookingFormChoiceValueDto bookingFormChoiceValueDto = (BookingFormChoiceValueDto) obj;
        return Intrinsics.c(this.f44664a, bookingFormChoiceValueDto.f44664a) && Intrinsics.c(this.f44665b, bookingFormChoiceValueDto.f44665b) && Intrinsics.c(this.f44666c, bookingFormChoiceValueDto.f44666c) && Intrinsics.c(this.d, bookingFormChoiceValueDto.d) && this.f44667e == bookingFormChoiceValueDto.f44667e;
    }

    public final int hashCode() {
        int iB = fc.b(this.f44664a.hashCode() * 31, 31, this.f44665b);
        String str = this.f44666c;
        return Boolean.hashCode(this.f44667e) + fc.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.d);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("BookingFormChoiceValueDto(id=", this.f44664a, ", name=", this.f44665b, ", description=");
        cj.C(sbS, this.f44666c, ", selectedDisplayName=", this.d, ", disabled=");
        return a.p(sbS, this.f44667e, ")");
    }

    public BookingFormChoiceValueDto(String str, String str2, String str3, String str4, boolean z) {
        cj.z(str, str2, str4);
        this.f44664a = str;
        this.f44665b = str2;
        this.f44666c = str3;
        this.d = str4;
        this.f44667e = z;
    }

    public /* synthetic */ BookingFormChoiceValueDto(String str, String str2, String str3, String str4, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : str3, str4, z);
    }
}
