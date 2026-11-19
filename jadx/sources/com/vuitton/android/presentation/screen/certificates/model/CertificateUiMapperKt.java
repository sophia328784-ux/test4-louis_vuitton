package com.vuitton.android.presentation.screen.certificates.model;

import com.vuitton.foundation.model.domain.model.certificate.CertificateStatus;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CertificateUiMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f55877a;

        static {
            int[] iArr = new int[CertificateStatus.values().length];
            try {
                iArr[CertificateStatus.LOCKED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CertificateStatus.UNLOCKED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CertificateStatus.PENDING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f55877a = iArr;
        }
    }

    public static final CertificateStatusUiModel a(CertificateStatus certificateStatus) {
        int i2 = WhenMappings.f55877a[certificateStatus.ordinal()];
        if (i2 == 1) {
            return CertificateStatusUiModel.LOCKED;
        }
        if (i2 == 2) {
            return CertificateStatusUiModel.UNLOCKED;
        }
        if (i2 == 3) {
            return CertificateStatusUiModel.PENDING;
        }
        v40.g();
        return null;
    }
}
