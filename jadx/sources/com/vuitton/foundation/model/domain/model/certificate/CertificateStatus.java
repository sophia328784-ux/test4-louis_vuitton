package com.vuitton.foundation.model.domain.model.certificate;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;", "", "LOCKED", "UNLOCKED", "PENDING", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CertificateStatus {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CertificateStatus[] $VALUES;
    public static final CertificateStatus LOCKED;
    public static final CertificateStatus PENDING;
    public static final CertificateStatus UNLOCKED;

    static {
        CertificateStatus certificateStatus = new CertificateStatus("LOCKED", 0);
        LOCKED = certificateStatus;
        CertificateStatus certificateStatus2 = new CertificateStatus("UNLOCKED", 1);
        UNLOCKED = certificateStatus2;
        CertificateStatus certificateStatus3 = new CertificateStatus("PENDING", 2);
        PENDING = certificateStatus3;
        CertificateStatus[] certificateStatusArr = {certificateStatus, certificateStatus2, certificateStatus3};
        $VALUES = certificateStatusArr;
        $ENTRIES = EnumEntriesKt.a(certificateStatusArr);
    }

    public static CertificateStatus valueOf(String str) {
        return (CertificateStatus) Enum.valueOf(CertificateStatus.class, str);
    }

    public static CertificateStatus[] values() {
        return (CertificateStatus[]) $VALUES.clone();
    }
}
