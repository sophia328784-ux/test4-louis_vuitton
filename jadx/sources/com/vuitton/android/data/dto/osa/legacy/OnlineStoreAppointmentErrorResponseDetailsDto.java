package com.vuitton.android.data.dto.osa.legacy;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nBA\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\t\u0010\u000e¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;", "", "", "status", "", "responseId", "transactionDate", "Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorDataDto;", DbParams.KEY_DATA, "<init>", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorDataDto;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(IILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorDataDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class OnlineStoreAppointmentErrorResponseDetailsDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f46128a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46129b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46130c;
    public final OnlineStoreAppointmentErrorDataDto d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<OnlineStoreAppointmentErrorResponseDetailsDto> serializer() {
            return OnlineStoreAppointmentErrorResponseDetailsDto$$serializer.f46131a;
        }
    }

    public /* synthetic */ OnlineStoreAppointmentErrorResponseDetailsDto(int i2, int i3, String str, String str2, OnlineStoreAppointmentErrorDataDto onlineStoreAppointmentErrorDataDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (15 != (i2 & 15)) {
            PluginExceptionsKt.b(i2, 15, OnlineStoreAppointmentErrorResponseDetailsDto$$serializer.f46131a.a());
            throw null;
        }
        this.f46128a = i3;
        this.f46129b = str;
        this.f46130c = str2;
        this.d = onlineStoreAppointmentErrorDataDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OnlineStoreAppointmentErrorResponseDetailsDto)) {
            return false;
        }
        OnlineStoreAppointmentErrorResponseDetailsDto onlineStoreAppointmentErrorResponseDetailsDto = (OnlineStoreAppointmentErrorResponseDetailsDto) obj;
        return this.f46128a == onlineStoreAppointmentErrorResponseDetailsDto.f46128a && Intrinsics.c(this.f46129b, onlineStoreAppointmentErrorResponseDetailsDto.f46129b) && Intrinsics.c(this.f46130c, onlineStoreAppointmentErrorResponseDetailsDto.f46130c) && Intrinsics.c(this.d, onlineStoreAppointmentErrorResponseDetailsDto.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + fc.b(fc.b(Integer.hashCode(this.f46128a) * 31, 31, this.f46129b), 31, this.f46130c);
    }

    public final String toString() {
        return "OnlineStoreAppointmentErrorResponseDetailsDto(status=" + this.f46128a + ", responseId=" + this.f46129b + ", transactionDate=" + this.f46130c + ", data=" + this.d + ")";
    }

    public OnlineStoreAppointmentErrorResponseDetailsDto(int i2, String str, String str2, OnlineStoreAppointmentErrorDataDto onlineStoreAppointmentErrorDataDto) {
        str.getClass();
        str2.getClass();
        onlineStoreAppointmentErrorDataDto.getClass();
        this.f46128a = i2;
        this.f46129b = str;
        this.f46130c = str2;
        this.d = onlineStoreAppointmentErrorDataDto;
    }
}
