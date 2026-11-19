package com.vuitton.android.presentation.screen.certificates.nfc.model;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcErrorType;", "", "LOST_TAG", "TECHNICAL_ERROR", "NETWORK_ERROR", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class NfcErrorType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NfcErrorType[] $VALUES;
    public static final NfcErrorType LOST_TAG;
    public static final NfcErrorType NETWORK_ERROR;
    public static final NfcErrorType TECHNICAL_ERROR;

    static {
        NfcErrorType nfcErrorType = new NfcErrorType("LOST_TAG", 0);
        LOST_TAG = nfcErrorType;
        NfcErrorType nfcErrorType2 = new NfcErrorType("TECHNICAL_ERROR", 1);
        TECHNICAL_ERROR = nfcErrorType2;
        NfcErrorType nfcErrorType3 = new NfcErrorType("NETWORK_ERROR", 2);
        NETWORK_ERROR = nfcErrorType3;
        NfcErrorType[] nfcErrorTypeArr = {nfcErrorType, nfcErrorType2, nfcErrorType3};
        $VALUES = nfcErrorTypeArr;
        $ENTRIES = EnumEntriesKt.a(nfcErrorTypeArr);
    }

    public static NfcErrorType valueOf(String str) {
        return (NfcErrorType) Enum.valueOf(NfcErrorType.class, str);
    }

    public static NfcErrorType[] values() {
        return (NfcErrorType[]) $VALUES.clone();
    }
}
