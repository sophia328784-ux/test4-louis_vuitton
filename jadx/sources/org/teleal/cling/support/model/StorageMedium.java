package org.teleal.cling.support.model;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public enum StorageMedium {
    UNKNOWN(null),
    DV(null),
    MINI_DV("MINI-DV"),
    VHS(null),
    W_VHS("W-VHS"),
    S_VHS("S-VHS"),
    D_VHS("D-VHS"),
    VHSC(null),
    VIDEO8(null),
    HI8(null),
    CD_ROM("CD-ROM"),
    CD_DA("CD-DA"),
    CD_R("CD-R"),
    CD_RW("CD-RW"),
    VIDEO_CD("VIDEO-CD"),
    SACD(null),
    MD_AUDIO("M-AUDIO"),
    MD_PICTURE("MD-PICTURE"),
    DVD_ROM("DVD-ROM"),
    DVD_VIDEO("DVD-VIDEO"),
    DVD_R("DVD-R"),
    DVD_PLUS_RW("DVD+RW"),
    DVD_MINUS_RW("DVD-RW"),
    DVD_RAM("DVD-RAM"),
    DVD_AUDIO("DVD-AUDIO"),
    DAT(null),
    LD(null),
    HDD(null),
    MICRO_MV("MICRO_MV"),
    NETWORK(null),
    NONE(null),
    NOT_IMPLEMENTED(null),
    VENDOR_SPECIFIC(null);

    private static Map<String, StorageMedium> byProtocolString;
    private String protocolString;

    /* JADX INFO: renamed from: org.teleal.cling.support.model.StorageMedium$1, reason: invalid class name */
    public class AnonymousClass1 extends HashMap<String, StorageMedium> {
    }

    static {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        for (StorageMedium storageMedium : values()) {
            anonymousClass1.put(storageMedium.protocolString, storageMedium);
        }
        byProtocolString = anonymousClass1;
    }

    StorageMedium(String str) {
        this.protocolString = str == null ? name() : str;
    }

    public static StorageMedium a(String str) {
        StorageMedium storageMedium = byProtocolString.get(str);
        return storageMedium != null ? storageMedium : VENDOR_SPECIFIC;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.protocolString;
    }
}
