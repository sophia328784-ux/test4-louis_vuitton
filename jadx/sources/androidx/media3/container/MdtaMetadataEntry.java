package androidx.media3.container;

import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.io.BaseEncoding;
import com.google.common.primitives.Ints;
import defpackage.fc;
import defpackage.n00;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class MdtaMetadataEntry implements Metadata.Entry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f14273a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f14274b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f14275c;
    public final int d;

    public MdtaMetadataEntry(String str, byte[] bArr, int i2, int i3) {
        byte b2;
        str.getClass();
        boolean z = false;
        switch (str) {
            case "com.android.capture.fps":
                if (i3 == 23 && bArr.length == 4) {
                    z = true;
                }
                Preconditions.g(z);
                break;
            case "auxiliary.tracks.interleaved":
                if (i3 == 75 && bArr.length == 1 && ((b2 = bArr[0]) == 0 || b2 == 1)) {
                    z = true;
                }
                Preconditions.g(z);
                break;
            case "auxiliary.tracks.length":
            case "auxiliary.tracks.offset":
                if (i3 == 78 && bArr.length == 8) {
                    z = true;
                }
                Preconditions.g(z);
                break;
            case "auxiliary.tracks.map":
                Preconditions.g(i3 == 0);
                break;
        }
        this.f14273a = str;
        this.f14274b = bArr;
        this.f14275c = i2;
        this.d = i3;
    }

    public final ArrayList d() {
        Preconditions.p("Metadata is not an auxiliary tracks map", this.f14273a.equals("auxiliary.tracks.map"));
        byte[] bArr = this.f14274b;
        byte b2 = bArr[1];
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < b2; i2++) {
            arrayList.add(Integer.valueOf(bArr[i2 + 2]));
        }
        return arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && MdtaMetadataEntry.class == obj.getClass()) {
            MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) obj;
            if (this.f14273a.equals(mdtaMetadataEntry.f14273a) && Arrays.equals(this.f14274b, mdtaMetadataEntry.f14274b) && this.f14275c == mdtaMetadataEntry.f14275c && this.d == mdtaMetadataEntry.d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((Arrays.hashCode(this.f14274b) + fc.b(527, 31, this.f14273a)) * 31) + this.f14275c) * 31) + this.d;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00ab  */
    public final String toString() {
        String string;
        String str = this.f14273a;
        byte[] bArr = this.f14274b;
        int i2 = this.d;
        if (i2 != 0) {
            if (i2 == 1) {
                String str2 = Util.f14242a;
                string = new String(bArr, StandardCharsets.UTF_8);
            } else if (i2 == 23) {
                Preconditions.f("array too small: %s < %s", bArr.length, 4, bArr.length >= 4);
                string = String.valueOf(Float.intBitsToFloat(Ints.d(bArr[0], bArr[1], bArr[2], bArr[3])));
            } else if (i2 == 67) {
                Preconditions.f("array too small: %s < %s", bArr.length, 4, bArr.length >= 4);
                string = String.valueOf(Ints.d(bArr[0], bArr[1], bArr[2], bArr[3]));
            } else if (i2 == 75) {
                string = String.valueOf(Byte.toUnsignedInt(bArr[0]));
            } else if (i2 != 78) {
                String str3 = Util.f14242a;
                string = BaseEncoding.f33747b.c().a(bArr);
            } else {
                string = String.valueOf(new ParsableByteArray(bArr).G());
            }
        } else if (str.equals("auxiliary.tracks.map")) {
            ArrayList arrayListD = d();
            StringBuilder sbT = n00.t("track types = ");
            new Joiner(String.valueOf(',')).a(sbT, arrayListD.iterator());
            string = sbT.toString();
        } else {
            String str4 = Util.f14242a;
            string = BaseEncoding.f33747b.c().a(bArr);
        }
        return fc.i("mdta: key=", str, ", value=", string);
    }

    public MdtaMetadataEntry(String str, byte[] bArr, int i2) {
        this(str, bArr, 0, i2);
    }
}
