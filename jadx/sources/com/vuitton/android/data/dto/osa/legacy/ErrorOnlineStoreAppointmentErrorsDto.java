package com.vuitton.android.data.dto.osa.legacy;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007B9\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentErrorsDto;", "", "", "errorCode", "message", "scope", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ErrorOnlineStoreAppointmentErrorsDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46120a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46121b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46122c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentErrorsDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentErrorsDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ErrorOnlineStoreAppointmentErrorsDto> serializer() {
            return ErrorOnlineStoreAppointmentErrorsDto$$serializer.f46123a;
        }
    }

    public /* synthetic */ ErrorOnlineStoreAppointmentErrorsDto(int i2, String str, String str2, String str3, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, ErrorOnlineStoreAppointmentErrorsDto$$serializer.f46123a.getF19838b());
            throw null;
        }
        this.f46120a = str;
        if ((i2 & 2) == 0) {
            this.f46121b = null;
        } else {
            this.f46121b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f46122c = null;
        } else {
            this.f46122c = str3;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ErrorOnlineStoreAppointmentErrorsDto)) {
            return false;
        }
        ErrorOnlineStoreAppointmentErrorsDto errorOnlineStoreAppointmentErrorsDto = (ErrorOnlineStoreAppointmentErrorsDto) obj;
        return Intrinsics.c(this.f46120a, errorOnlineStoreAppointmentErrorsDto.f46120a) && Intrinsics.c(this.f46121b, errorOnlineStoreAppointmentErrorsDto.f46121b) && Intrinsics.c(this.f46122c, errorOnlineStoreAppointmentErrorsDto.f46122c);
    }

    public final int hashCode() {
        int iHashCode = this.f46120a.hashCode() * 31;
        String str = this.f46121b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f46122c;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return n00.r(this.f46122c, ")", fc.s("ErrorOnlineStoreAppointmentErrorsDto(errorCode=", this.f46120a, ", message=", this.f46121b, ", scope="));
    }

    public ErrorOnlineStoreAppointmentErrorsDto(String str, String str2, String str3) {
        str.getClass();
        this.f46120a = str;
        this.f46121b = str2;
        this.f46122c = str3;
    }

    public /* synthetic */ ErrorOnlineStoreAppointmentErrorsDto(String str, String str2, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3);
    }
}
