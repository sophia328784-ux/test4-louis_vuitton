package com.vuitton.android.data.dto.distantrepairs;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.g5;
import defpackage.n00;
import defpackage.o60;
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
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB/\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\b\u0010\tBE\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;", "", "", "", "availableDates", "Lcom/vuitton/android/data/dto/distantrepairs/StoreSlotInfoDto;", "appointments", "message", "<init>", "(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class AppointmentAvailabilitiesDtoResponse {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f45707a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f45708b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45709c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AppointmentAvailabilitiesDtoResponse> serializer() {
            return AppointmentAvailabilitiesDtoResponse$$serializer.f45710a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        d = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new g5(18)), LazyKt.a(lazyThreadSafetyMode, new g5(19)), null};
    }

    public /* synthetic */ AppointmentAvailabilitiesDtoResponse(int i2, List list, List list2, String str, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, AppointmentAvailabilitiesDtoResponse$$serializer.f45710a.getF19838b());
            throw null;
        }
        this.f45707a = list;
        this.f45708b = list2;
        if ((i2 & 4) == 0) {
            this.f45709c = null;
        } else {
            this.f45709c = str;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppointmentAvailabilitiesDtoResponse)) {
            return false;
        }
        AppointmentAvailabilitiesDtoResponse appointmentAvailabilitiesDtoResponse = (AppointmentAvailabilitiesDtoResponse) obj;
        return Intrinsics.c(this.f45707a, appointmentAvailabilitiesDtoResponse.f45707a) && Intrinsics.c(this.f45708b, appointmentAvailabilitiesDtoResponse.f45708b) && Intrinsics.c(this.f45709c, appointmentAvailabilitiesDtoResponse.f45709c);
    }

    public final int hashCode() {
        int iA = n00.a(this.f45707a.hashCode() * 31, 31, this.f45708b);
        String str = this.f45709c;
        return iA + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return n00.r(this.f45709c, ")", o60.s("AppointmentAvailabilitiesDtoResponse(availableDates=", ", appointments=", ", message=", this.f45707a, this.f45708b));
    }

    public AppointmentAvailabilitiesDtoResponse(List<String> list, List<StoreSlotInfoDto> list2, String str) {
        list.getClass();
        list2.getClass();
        this.f45707a = list;
        this.f45708b = list2;
        this.f45709c = str;
    }

    public /* synthetic */ AppointmentAvailabilitiesDtoResponse(List list, List list2, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, list2, (i2 & 4) != 0 ? null : str);
    }
}
