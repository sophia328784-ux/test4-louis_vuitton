package com.vuitton.android.data.dto.distantrepairs;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.ul0;
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
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB9\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;", "", "", "availabilityId", "Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;", "appointmentType", "Lcom/vuitton/android/data/dto/distantrepairs/PrebookContextDto;", "prebookContext", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;Lcom/vuitton/android/data/dto/distantrepairs/PrebookContextDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;Lcom/vuitton/android/data/dto/distantrepairs/PrebookContextDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class PrebookAppointmentDtoRequest {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45722a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppointmentTypeDto f45723b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PrebookContextDto f45724c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<PrebookAppointmentDtoRequest> serializer() {
            return PrebookAppointmentDtoRequest$$serializer.f45725a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        d = new Lazy[]{null, LazyKt.a(lazyThreadSafetyMode, new ul0(28)), LazyKt.a(lazyThreadSafetyMode, new ul0(29))};
    }

    public /* synthetic */ PrebookAppointmentDtoRequest(int i2, String str, AppointmentTypeDto appointmentTypeDto, PrebookContextDto prebookContextDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, PrebookAppointmentDtoRequest$$serializer.f45725a.getF19838b());
            throw null;
        }
        this.f45722a = str;
        this.f45723b = appointmentTypeDto;
        this.f45724c = prebookContextDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PrebookAppointmentDtoRequest)) {
            return false;
        }
        PrebookAppointmentDtoRequest prebookAppointmentDtoRequest = (PrebookAppointmentDtoRequest) obj;
        return Intrinsics.c(this.f45722a, prebookAppointmentDtoRequest.f45722a) && this.f45723b == prebookAppointmentDtoRequest.f45723b && this.f45724c == prebookAppointmentDtoRequest.f45724c;
    }

    public final int hashCode() {
        return this.f45724c.hashCode() + ((this.f45723b.hashCode() + (this.f45722a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "PrebookAppointmentDtoRequest(availabilityId=" + this.f45722a + ", appointmentType=" + this.f45723b + ", prebookContext=" + this.f45724c + ")";
    }

    public PrebookAppointmentDtoRequest(String str, AppointmentTypeDto appointmentTypeDto, PrebookContextDto prebookContextDto) {
        str.getClass();
        appointmentTypeDto.getClass();
        prebookContextDto.getClass();
        this.f45722a = str;
        this.f45723b = appointmentTypeDto;
        this.f45724c = prebookContextDto;
    }
}
