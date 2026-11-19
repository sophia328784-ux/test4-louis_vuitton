package com.vuitton.android.presentation.screen.distantrepairs.form.mappers;

import com.vuitton.android.presentation.screen.distantrepairs.models.AvailabilitiesCallerUiModel;
import com.vuitton.foundation.model.domain.model.distantrepairs.AvailabilitiesCaller;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AvailabilitiesCallerMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57336a;

        static {
            int[] iArr = new int[AvailabilitiesCaller.values().length];
            try {
                iArr[AvailabilitiesCaller.DISTANT_REPAIRS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AvailabilitiesCaller.APPOINTMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[AvailabilitiesCallerUiModel.values().length];
            try {
                iArr2[AvailabilitiesCallerUiModel.DISTANT_REPAIRS.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[AvailabilitiesCallerUiModel.APPOINTMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            f57336a = iArr2;
        }
    }

    public static final AvailabilitiesCaller a(AvailabilitiesCallerUiModel availabilitiesCallerUiModel) {
        availabilitiesCallerUiModel.getClass();
        int i2 = WhenMappings.f57336a[availabilitiesCallerUiModel.ordinal()];
        if (i2 == 1) {
            return AvailabilitiesCaller.DISTANT_REPAIRS;
        }
        if (i2 == 2) {
            return AvailabilitiesCaller.APPOINTMENT;
        }
        v40.g();
        return null;
    }
}
