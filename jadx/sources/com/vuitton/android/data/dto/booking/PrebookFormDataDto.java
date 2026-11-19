package com.vuitton.android.data.dto.booking;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import defpackage.gp0;
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
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bBM\b\u0010\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\n\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;", "", "", "experienceId", "prebookId", "bookingId", "Lcom/vuitton/android/data/dto/booking/BookingTypeDto;", "type", "Lcom/vuitton/android/data/dto/booking/PrebookFormDto;", "form", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/booking/BookingTypeDto;Lcom/vuitton/android/data/dto/booking/PrebookFormDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/booking/BookingTypeDto;Lcom/vuitton/android/data/dto/booking/PrebookFormDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class PrebookFormDataDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Lazy[] f44768f = {null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new gp0(2)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44769a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44770b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44771c;
    public final BookingTypeDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PrebookFormDto f44772e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<PrebookFormDataDto> serializer() {
            return PrebookFormDataDto$$serializer.f44773a;
        }
    }

    public /* synthetic */ PrebookFormDataDto(int i2, String str, String str2, String str3, BookingTypeDto bookingTypeDto, PrebookFormDto prebookFormDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (25 != (i2 & 25)) {
            PluginExceptionsKt.b(i2, 25, PrebookFormDataDto$$serializer.f44773a.getF19838b());
            throw null;
        }
        this.f44769a = str;
        if ((i2 & 2) == 0) {
            this.f44770b = null;
        } else {
            this.f44770b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f44771c = null;
        } else {
            this.f44771c = str3;
        }
        this.d = bookingTypeDto;
        this.f44772e = prebookFormDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PrebookFormDataDto)) {
            return false;
        }
        PrebookFormDataDto prebookFormDataDto = (PrebookFormDataDto) obj;
        return Intrinsics.c(this.f44769a, prebookFormDataDto.f44769a) && Intrinsics.c(this.f44770b, prebookFormDataDto.f44770b) && Intrinsics.c(this.f44771c, prebookFormDataDto.f44771c) && this.d == prebookFormDataDto.d && Intrinsics.c(this.f44772e, prebookFormDataDto.f44772e);
    }

    public final int hashCode() {
        int iHashCode = this.f44769a.hashCode() * 31;
        String str = this.f44770b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f44771c;
        return this.f44772e.f44777a.hashCode() + ((this.d.hashCode() + ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("PrebookFormDataDto(experienceId=", this.f44769a, ", prebookId=", this.f44770b, ", bookingId=");
        sbS.append(this.f44771c);
        sbS.append(", type=");
        sbS.append(this.d);
        sbS.append(", form=");
        sbS.append(this.f44772e);
        sbS.append(")");
        return sbS.toString();
    }

    public PrebookFormDataDto(String str, String str2, String str3, BookingTypeDto bookingTypeDto, PrebookFormDto prebookFormDto) {
        str.getClass();
        bookingTypeDto.getClass();
        prebookFormDto.getClass();
        this.f44769a = str;
        this.f44770b = str2;
        this.f44771c = str3;
        this.d = bookingTypeDto;
        this.f44772e = prebookFormDto;
    }

    public /* synthetic */ PrebookFormDataDto(String str, String str2, String str3, BookingTypeDto bookingTypeDto, PrebookFormDto prebookFormDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, bookingTypeDto, prebookFormDto);
    }
}
