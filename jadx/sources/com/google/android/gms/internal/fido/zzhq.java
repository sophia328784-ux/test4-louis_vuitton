package com.google.android.gms.internal.fido;

import defpackage.o60;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzhq {
    public static final zzhp a(zzhs zzhsVar) throws zzhj {
        try {
            zzhr zzhrVarM = zzhsVar.m();
            if (zzhrVarM == null) {
                throw new zzhj("Parser being asked to parse an empty input stream");
            }
            try {
                byte b2 = zzhrVarM.f29917b;
                byte b3 = zzhrVarM.f29916a;
                int i2 = 0;
                if (b3 == -128) {
                    long jH = zzhsVar.h();
                    if (jH > 1000) {
                        throw new zzhj("Parser being asked to read a large CBOR array");
                    }
                    b(b2, jH);
                    zzhp[] zzhpVarArr = new zzhp[(int) jH];
                    while (i2 < jH) {
                        zzhpVarArr[i2] = a(zzhsVar);
                        i2++;
                    }
                    return new zzhg(zzcc.q(zzhpVarArr));
                }
                if (b3 != -96) {
                    if (b3 == -64) {
                        throw new zzhj("Tags are currently unsupported");
                    }
                    if (b3 == -32) {
                        return new zzhh(zzhsVar.n());
                    }
                    if (b3 == 0 || b3 == 32) {
                        long j2 = zzhsVar.j();
                        b(b2, j2 > 0 ? j2 : ~j2);
                        return new zzhk(j2);
                    }
                    if (b3 == 64) {
                        zzhsVar.q((byte) 64);
                        byte[] bArrS = zzhsVar.s();
                        int length = bArrS.length;
                        b(b2, length);
                        return new zzhi(zzgx.p(length, bArrS));
                    }
                    if (b3 != 96) {
                        throw new zzhj("Unidentifiable major type: " + ((b3 >> 5) & 7));
                    }
                    zzhsVar.q((byte) 96);
                    String str = new String(zzhsVar.s(), StandardCharsets.UTF_8);
                    b(b2, str.length());
                    return new zzhn(str);
                }
                long jK = zzhsVar.k();
                if (jK > 1000) {
                    throw new zzhj("Parser being asked to read a large CBOR map");
                }
                b(b2, jK);
                int i3 = (int) jK;
                zzhl[] zzhlVarArr = new zzhl[i3];
                zzhp zzhpVar = null;
                int i4 = 0;
                while (i4 < jK) {
                    zzhp zzhpVarA = a(zzhsVar);
                    if (zzhpVar != null && zzhpVarA.compareTo(zzhpVar) <= 0) {
                        throw new zzhf("Keys in CBOR Map not in strictly ascending natural order:\nPrevious key: " + zzhpVar.toString() + "\nCurrent key: " + zzhpVarA.toString());
                    }
                    zzhlVarArr[i4] = new zzhl(zzhpVarA, a(zzhsVar));
                    i4++;
                    zzhpVar = zzhpVarA;
                }
                TreeMap treeMap = new TreeMap();
                while (i2 < i3) {
                    zzhl zzhlVar = zzhlVarArr[i2];
                    if (treeMap.containsKey(zzhlVar.f29911a)) {
                        throw new zzhf("Attempted to add duplicate key to canonical CBOR Map.");
                    }
                    treeMap.put(zzhlVar.f29911a, zzhlVar.f29912b);
                    i2++;
                }
                return new zzhm(zzcj.d(treeMap));
            } catch (IOException | RuntimeException e2) {
                throw new zzhj("Error in decoding CborValue from bytes", e2);
            }
        } catch (IOException e3) {
            throw new zzhj("Error in decoding CborValue from bytes", e3);
        }
    }

    public static final void b(byte b2, long j2) throws zzhf {
        switch (b2) {
            case 24:
                if (j2 < 24) {
                    throw new zzhf(o60.i(j2, "Integer value ", " after add info could have been represented in 0 additional bytes, but used 1"));
                }
                return;
            case 25:
                if (j2 < 256) {
                    throw new zzhf(o60.i(j2, "Integer value ", " after add info could have been represented in 0-1 additional bytes, but used 2"));
                }
                return;
            case 26:
                if (j2 < 65536) {
                    throw new zzhf(o60.i(j2, "Integer value ", " after add info could have been represented in 0-2 additional bytes, but used 4"));
                }
                return;
            case 27:
                if (j2 < 4294967296L) {
                    throw new zzhf(o60.i(j2, "Integer value ", " after add info could have been represented in 0-4 additional bytes, but used 8"));
                }
                return;
            default:
                return;
        }
    }
}
