package org.spongycastle.x509;

import defpackage.ct0;
import defpackage.zy0;
import java.security.cert.CertPath;
import org.spongycastle.i18n.ErrorBundle;
import org.spongycastle.i18n.LocalizedException;

/* JADX INFO: loaded from: classes5.dex */
public class CertPathReviewerException extends LocalizedException {
    public CertPathReviewerException(ErrorBundle errorBundle, Throwable th, CertPath certPath, int i2) {
        super(errorBundle, th);
        if (certPath == null || i2 == -1) {
            ct0.c();
            throw null;
        }
        if (i2 < -1 || i2 >= certPath.getCertificates().size()) {
            zy0.b();
            throw null;
        }
    }

    public CertPathReviewerException(ErrorBundle errorBundle) {
        super(errorBundle);
    }

    public CertPathReviewerException(ErrorBundle errorBundle, Throwable th) {
        super(errorBundle, th);
    }

    public CertPathReviewerException(ErrorBundle errorBundle, CertPath certPath, int i2) {
        super(errorBundle);
        if (certPath != null && i2 != -1) {
            if (i2 < -1 || i2 >= certPath.getCertificates().size()) {
                zy0.b();
                throw null;
            }
            return;
        }
        ct0.c();
        throw null;
    }
}
