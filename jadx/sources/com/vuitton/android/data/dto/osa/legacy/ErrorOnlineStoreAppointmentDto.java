package com.vuitton.android.data.dto.osa.legacy;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.ew;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
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
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00152\u00020\u0001:\u0002\u0016\u0015BM\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010Bo\b\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u000f\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;", "", "", "traceId", "date", "path", "", "statusCode", "", "Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentErrorsDto;", "errors", "error", "message", "Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDetailsDto;", "details", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDetailsDto;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDetailsDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ErrorOnlineStoreAppointmentDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Lazy[] f46112i = {null, null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new ew(10)), null, null, null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46113a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46114b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46115c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f46116e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f46117f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ErrorOnlineStoreAppointmentDetailsDto f46118h;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ErrorOnlineStoreAppointmentDto> serializer() {
            return ErrorOnlineStoreAppointmentDto$$serializer.f46119a;
        }
    }

    public ErrorOnlineStoreAppointmentDto(String str, String str2, String str3, int i2, List<ErrorOnlineStoreAppointmentErrorsDto> list, String str4, String str5, ErrorOnlineStoreAppointmentDetailsDto errorOnlineStoreAppointmentDetailsDto) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        list.getClass();
        str4.getClass();
        str5.getClass();
        errorOnlineStoreAppointmentDetailsDto.getClass();
        this.f46113a = str;
        this.f46114b = str2;
        this.f46115c = str3;
        this.d = i2;
        this.f46116e = list;
        this.f46117f = str4;
        this.g = str5;
        this.f46118h = errorOnlineStoreAppointmentDetailsDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ErrorOnlineStoreAppointmentDto)) {
            return false;
        }
        ErrorOnlineStoreAppointmentDto errorOnlineStoreAppointmentDto = (ErrorOnlineStoreAppointmentDto) obj;
        return Intrinsics.c(this.f46113a, errorOnlineStoreAppointmentDto.f46113a) && Intrinsics.c(this.f46114b, errorOnlineStoreAppointmentDto.f46114b) && Intrinsics.c(this.f46115c, errorOnlineStoreAppointmentDto.f46115c) && this.d == errorOnlineStoreAppointmentDto.d && Intrinsics.c(this.f46116e, errorOnlineStoreAppointmentDto.f46116e) && Intrinsics.c(this.f46117f, errorOnlineStoreAppointmentDto.f46117f) && Intrinsics.c(this.g, errorOnlineStoreAppointmentDto.g) && Intrinsics.c(this.f46118h, errorOnlineStoreAppointmentDto.f46118h);
    }

    public final int hashCode() {
        return this.f46118h.hashCode() + fc.b(fc.b(n00.a(tr.b(this.d, fc.b(fc.b(this.f46113a.hashCode() * 31, 31, this.f46114b), 31, this.f46115c), 31), 31, this.f46116e), 31, this.f46117f), 31, this.g);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ErrorOnlineStoreAppointmentDto(traceId=", this.f46113a, ", date=", this.f46114b, ", path=");
        sbS.append(this.f46115c);
        sbS.append(", statusCode=");
        sbS.append(this.d);
        sbS.append(", errors=");
        o60.B(", error=", this.f46117f, ", message=", sbS, this.f46116e);
        sbS.append(this.g);
        sbS.append(", details=");
        sbS.append(this.f46118h);
        sbS.append(")");
        return sbS.toString();
    }

    public /* synthetic */ ErrorOnlineStoreAppointmentDto(int i2, String str, String str2, String str3, int i3, List list, String str4, String str5, ErrorOnlineStoreAppointmentDetailsDto errorOnlineStoreAppointmentDetailsDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (255 != (i2 & 255)) {
            PluginExceptionsKt.b(i2, 255, ErrorOnlineStoreAppointmentDto$$serializer.f46119a.getF19838b());
            throw null;
        }
        this.f46113a = str;
        this.f46114b = str2;
        this.f46115c = str3;
        this.d = i3;
        this.f46116e = list;
        this.f46117f = str4;
        this.g = str5;
        this.f46118h = errorOnlineStoreAppointmentDetailsDto;
    }
}
