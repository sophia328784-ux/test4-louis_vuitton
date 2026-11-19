package com.vuitton.android.data.dto.osa.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.distantrepairs.AppointmentTypeDto;
import com.vuitton.android.data.dto.distantrepairs.ConfirmAppointmentDtoRequest;
import com.vuitton.android.data.dto.osa.twist.AppointmentItemDto;
import com.vuitton.android.data.dto.osa.twist.AppointmentStoreDto;
import com.vuitton.android.data.dto.osa.twist.OsaReasonDto;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.distantrepairs.Appointment;
import com.vuitton.foundation.model.domain.model.osa.AppointmentType;
import com.vuitton.foundation.model.domain.model.osa.OsaItem;
import com.vuitton.foundation.model.domain.model.osa.OsaReason;
import com.vuitton.foundation.model.domain.model.osa.StoreInformationItem;
import defpackage.v40;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AppointmentsMapperKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f46132a = CollectionsKt.P("UE4", "J91", "F92", "L48");

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f46133a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f46134b;

        static {
            int[] iArr = new int[AppointmentTypeDto.values().length];
            try {
                iArr[AppointmentTypeDto.IN_STORE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AppointmentTypeDto.DISTANT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f46133a = iArr;
            int[] iArr2 = new int[AppointmentType.values().length];
            try {
                iArr2[AppointmentType.IN_STORE.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[AppointmentType.DISTANT.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            f46134b = iArr2;
        }
    }

    public static final String a(String str, String str2) {
        str.getClass();
        str2.getClass();
        return StringsKt.a0(str + " " + str2).toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final OsaItem b(AppointmentItemDto appointmentItemDto) {
        Object failure;
        Object failure2;
        StoreInformationItem storeInformationItem;
        AppointmentType appointmentType;
        appointmentItemDto.getClass();
        String str = appointmentItemDto.f46137a;
        AppointmentTypeDto appointmentTypeDto = appointmentItemDto.f46138b;
        AppointmentType appointmentType2 = null;
        if (appointmentTypeDto != null) {
            int i2 = WhenMappings.f46133a[appointmentTypeDto.ordinal()];
            if (i2 == 1) {
                appointmentType = AppointmentType.IN_STORE;
            } else {
                if (i2 != 2) {
                    v40.g();
                    return null;
                }
                appointmentType = AppointmentType.DISTANT;
            }
            appointmentType2 = appointmentType;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            failure = Instant.parse(appointmentItemDto.d);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        boolean z = failure instanceof Result.Failure;
        Object obj = failure;
        if (z) {
            obj = null;
        }
        Instant instant = (Instant) obj;
        try {
            failure2 = Instant.parse(appointmentItemDto.f46139c);
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            failure2 = new Result.Failure(th2);
        }
        boolean z2 = failure2 instanceof Result.Failure;
        Object obj2 = failure2;
        if (z2) {
            obj2 = appointmentType2;
        }
        Instant instant2 = (Instant) obj2;
        String str2 = appointmentItemDto.f46140e;
        if (str2 == null) {
            str2 = "";
        }
        AppointmentStoreDto appointmentStoreDto = appointmentItemDto.f46141f;
        if (appointmentStoreDto != null) {
            String str3 = appointmentStoreDto.f46145a;
            String str4 = appointmentStoreDto.f46146b;
            if (str4 == null) {
                str4 = "";
            }
            String str5 = appointmentStoreDto.d;
            if (str5 == null) {
                str5 = "";
            }
            String str6 = appointmentStoreDto.f46148e;
            if (str6 == null) {
                str6 = "";
            }
            String str7 = appointmentStoreDto.f46149f;
            if (str7 == null) {
                str7 = "";
            }
            String str8 = appointmentStoreDto.f46147c;
            storeInformationItem = new StoreInformationItem(str3, str4, str5, str6, str7, str8 == null ? "" : str8);
        } else {
            storeInformationItem = appointmentType2;
        }
        OsaReasonDto osaReasonDto = appointmentItemDto.g;
        OsaReason osaReason = osaReasonDto != null ? new OsaReason(osaReasonDto.f46160a, osaReasonDto.f46161b) : null;
        String str9 = appointmentItemDto.f46142h;
        Boolean bool = appointmentItemDto.f46143i;
        return new OsaItem(str, appointmentType2, instant, instant2, str2, storeInformationItem, osaReason, str9, bool != null ? bool.booleanValue() : false);
    }

    public static final List c(List list) {
        if (list == null) {
            return EmptyList.f71768b;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            List list2 = f46132a;
            AppointmentStoreDto appointmentStoreDto = ((AppointmentItemDto) obj).f46141f;
            if (!CollectionsKt.u(list2, appointmentStoreDto != null ? appointmentStoreDto.f46145a : null)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(b((AppointmentItemDto) it.next()));
        }
        return arrayList2;
    }

    public static final AppointmentTypeDto d(AppointmentType appointmentType) {
        appointmentType.getClass();
        int i2 = WhenMappings.f46134b[appointmentType.ordinal()];
        if (i2 == 1) {
            return AppointmentTypeDto.IN_STORE;
        }
        if (i2 == 2) {
            return AppointmentTypeDto.DISTANT;
        }
        v40.g();
        return null;
    }

    public static final ConfirmAppointmentDtoRequest e(Appointment appointment) {
        appointment.getClass();
        return new ConfirmAppointmentDtoRequest(appointment.f67526c, appointment.f67524a, d(appointment.f67525b), appointment.m, appointment.d, appointment.f67527e, appointment.f67528f, appointment.g, StringsKt.a0(StringsKt.E(StringsKt.a0(appointment.f67529h).toString(), StringsKt.a0(appointment.f67530i).toString())).toString(), appointment.f67531j, appointment.f67532k, appointment.n, appointment.o, StringKtExtKt.h(appointment.p), appointment.q, null);
    }
}
