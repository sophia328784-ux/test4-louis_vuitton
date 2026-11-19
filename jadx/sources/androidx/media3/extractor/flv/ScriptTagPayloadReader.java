package androidx.media3.extractor.flv;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.DiscardingTrackOutput;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
final class ScriptTagPayloadReader extends TagPayloadReader {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f16299b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long[] f16300c;
    public long[] d;

    public ScriptTagPayloadReader() {
        super(new DiscardingTrackOutput());
        this.f16299b = -9223372036854775807L;
        this.f16300c = new long[0];
        this.d = new long[0];
    }

    public static Serializable a(int i2, ParsableByteArray parsableByteArray) {
        if (i2 == 0) {
            return Double.valueOf(Double.longBitsToDouble(parsableByteArray.u()));
        }
        if (i2 == 1) {
            return Boolean.valueOf(parsableByteArray.A() == 1);
        }
        if (i2 == 2) {
            return c(parsableByteArray);
        }
        if (i2 != 3) {
            if (i2 == 8) {
                return b(parsableByteArray);
            }
            if (i2 != 10) {
                if (i2 != 11) {
                    return null;
                }
                Date date = new Date((long) Double.longBitsToDouble(parsableByteArray.u()));
                parsableByteArray.O(2);
                return date;
            }
            int iE = parsableByteArray.E();
            ArrayList arrayList = new ArrayList(iE);
            for (int i3 = 0; i3 < iE; i3++) {
                Serializable serializableA = a(parsableByteArray.A(), parsableByteArray);
                if (serializableA != null) {
                    arrayList.add(serializableA);
                }
            }
            return arrayList;
        }
        HashMap map = new HashMap();
        while (true) {
            String strC = c(parsableByteArray);
            int iA = parsableByteArray.A();
            if (iA == 9) {
                return map;
            }
            Serializable serializableA2 = a(iA, parsableByteArray);
            if (serializableA2 != null) {
                map.put(strC, serializableA2);
            }
        }
    }

    public static HashMap b(ParsableByteArray parsableByteArray) {
        int iE = parsableByteArray.E();
        HashMap map = new HashMap(iE);
        for (int i2 = 0; i2 < iE; i2++) {
            String strC = c(parsableByteArray);
            Serializable serializableA = a(parsableByteArray.A(), parsableByteArray);
            if (serializableA != null) {
                map.put(strC, serializableA);
            }
        }
        return map;
    }

    public static String c(ParsableByteArray parsableByteArray) {
        int iH = parsableByteArray.H();
        int i2 = parsableByteArray.f14195b;
        parsableByteArray.O(iH);
        return new String(parsableByteArray.f14194a, i2, iH);
    }
}
