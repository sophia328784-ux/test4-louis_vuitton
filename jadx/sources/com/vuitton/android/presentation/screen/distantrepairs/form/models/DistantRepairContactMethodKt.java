package com.vuitton.android.presentation.screen.distantrepairs.form.models;

import com.vuitton.foundation.model.domain.model.osa.AppointmentType;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class DistantRepairContactMethodKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57337a;

        static {
            int[] iArr = new int[DistantRepairContactMethod.values().length];
            try {
                iArr[DistantRepairContactMethod.VIDEO_CALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DistantRepairContactMethod.PHONE_CALL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f57337a = iArr;
        }
    }

    public static final Object a(DistantRepairContactMethod distantRepairContactMethod) throws Throwable {
        Object failure;
        AppointmentType appointmentType;
        try {
            Result.Companion companion = Result.INSTANCE;
            int i2 = distantRepairContactMethod == null ? -1 : WhenMappings.f57337a[distantRepairContactMethod.ordinal()];
            if (i2 == 1) {
                appointmentType = AppointmentType.DISTANT;
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("No appointment type for this distant repair contact method");
                }
                appointmentType = AppointmentType.IN_STORE;
            }
            failure = new Result(appointmentType);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }
}
