package com.vuitton.android.presentation.screen.osa.models;

import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel;
import com.vuitton.foundation.logger.LegacyLogger;
import com.vuitton.foundation.model.domain.model.osa.AppointmentType;
import com.vuitton.foundation.model.domain.model.osa.OsaItem;
import com.vuitton.foundation.model.domain.model.osa.OsaReason;
import com.vuitton.foundation.model.domain.model.osa.StoreInformationItem;
import defpackage.v40;
import java.time.DateTimeException;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZoneOffset;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Result;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OsaMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f60933a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f60934b;

        static {
            int[] iArr = new int[AppointmentType.values().length];
            try {
                iArr[AppointmentType.DISTANT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AppointmentType.IN_STORE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f60933a = iArr;
            int[] iArr2 = new int[AppointmentTypeUiModel.values().length];
            try {
                iArr2[AppointmentTypeUiModel.DISTANT.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[AppointmentTypeUiModel.IN_STORE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            f60934b = iArr2;
        }
    }

    public static final AppointmentType a(AppointmentTypeUiModel appointmentTypeUiModel) {
        appointmentTypeUiModel.getClass();
        int i2 = WhenMappings.f60934b[appointmentTypeUiModel.ordinal()];
        if (i2 == 1) {
            return AppointmentType.DISTANT;
        }
        if (i2 == 2) {
            return AppointmentType.IN_STORE;
        }
        v40.g();
        return null;
    }

    public static final OsaReasonUiModel b(OsaReason osaReason) {
        osaReason.getClass();
        String str = osaReason.f67779a;
        String str2 = osaReason.f67780b;
        Pair pairA = AutomationTagsOSAKt.a(str);
        String str3 = pairA != null ? (String) pairA.f71705b : null;
        Pair pairA2 = AutomationTagsOSAKt.a(osaReason.f67779a);
        return new OsaReasonUiModel(str, str2, str3, pairA2 != null ? (String) pairA2.f71706c : null);
    }

    public static final Object c(OsaItem osaItem) {
        Object failure;
        AppointmentTypeUiModel appointmentTypeUiModel;
        osaItem.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            String str = osaItem.f67772a;
            String str2 = osaItem.f67775e;
            Instant instant = osaItem.d;
            Instant instant2 = osaItem.f67774c;
            AppointmentType appointmentType = osaItem.f67773b;
            if (appointmentType != null) {
                int i2 = WhenMappings.f60933a[appointmentType.ordinal()];
                if (i2 == 1) {
                    appointmentTypeUiModel = AppointmentTypeUiModel.DISTANT;
                } else {
                    if (i2 != 2) {
                        throw new NoWhenBranchMatchedException();
                    }
                    appointmentTypeUiModel = AppointmentTypeUiModel.IN_STORE;
                }
            } else {
                appointmentTypeUiModel = null;
            }
            ZoneOffset zoneOffset = ZoneOffset.UTC;
            LocalDateTime localDateTimeOfInstant = LocalDateTime.ofInstant(instant2, zoneOffset);
            localDateTimeOfInstant.getClass();
            LocalDateTime localDateTimeOfInstant2 = LocalDateTime.ofInstant(instant, zoneOffset);
            localDateTimeOfInstant2.getClass();
            LocalDateTime localDateTimeOfInstant3 = LocalDateTime.ofInstant(instant2, ZoneId.of(str2));
            localDateTimeOfInstant3.getClass();
            LocalDateTime localDateTimeOfInstant4 = LocalDateTime.ofInstant(instant, ZoneId.of(str2));
            localDateTimeOfInstant4.getClass();
            String str3 = osaItem.f67775e;
            StoreInformationItem storeInformationItem = osaItem.f67776f;
            StoreInformationItemUiModel storeInformationItemUiModel = storeInformationItem != null ? new StoreInformationItemUiModel(storeInformationItem.f67781a, storeInformationItem.f67782b, storeInformationItem.f67783c, storeInformationItem.d, storeInformationItem.f67784e, storeInformationItem.f67785f) : null;
            OsaReason osaReason = osaItem.g;
            failure = new OsaItemUiModel(str, appointmentTypeUiModel, localDateTimeOfInstant, localDateTimeOfInstant2, localDateTimeOfInstant3, localDateTimeOfInstant4, str3, storeInformationItemUiModel, osaReason != null ? b(osaReason) : null, osaItem.f67777h, osaItem.f67778i);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null && (thA instanceof DateTimeException)) {
            LegacyLogger.f66205a.c("InvalidDate", String.valueOf(osaItem), null);
        }
        return failure;
    }
}
