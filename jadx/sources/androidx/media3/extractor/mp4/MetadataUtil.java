package androidx.media3.extractor.mp4;

import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.container.MdtaMetadataEntry;
import androidx.media3.container.Mp4Box;
import androidx.media3.extractor.metadata.id3.ApicFrame;
import androidx.media3.extractor.metadata.id3.CommentFrame;
import androidx.media3.extractor.metadata.id3.Id3Frame;
import androidx.media3.extractor.metadata.id3.TextInformationFrame;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableListIterator;
import defpackage.a;
import defpackage.cj;
import defpackage.pq0;

/* JADX INFO: loaded from: classes.dex */
abstract class MetadataUtil {
    public static ApicFrame a(ParsableByteArray parsableByteArray) {
        String str;
        int iM = parsableByteArray.m();
        if (parsableByteArray.m() != 1684108385) {
            Log.g("Failed to parse cover art attribute");
            return null;
        }
        int iM2 = parsableByteArray.m();
        byte[] bArr = BoxParser.f16500a;
        int i2 = iM2 & 16777215;
        if (i2 == 13) {
            str = "image/jpeg";
        } else {
            str = i2 == 14 ? "image/png" : null;
        }
        if (str == null) {
            a.u(i2, "Unrecognized cover art flags: ");
            return null;
        }
        parsableByteArray.O(4);
        int i3 = iM - 16;
        byte[] bArr2 = new byte[i3];
        parsableByteArray.k(0, i3, bArr2);
        return new ApicFrame(str, null, 3, bArr2);
    }

    public static TextInformationFrame b(int i2, ParsableByteArray parsableByteArray, String str) {
        int iM = parsableByteArray.m();
        if (parsableByteArray.m() == 1684108385 && iM >= 22) {
            parsableByteArray.O(10);
            int iH = parsableByteArray.H();
            if (iH > 0) {
                String strK = pq0.k(iH, "");
                int iH2 = parsableByteArray.H();
                if (iH2 > 0) {
                    strK = cj.e(iH2, strK, "/");
                }
                return new TextInformationFrame(str, (String) null, ImmutableList.A(strK));
            }
        }
        Log.g("Failed to parse index/count attribute: ".concat(Mp4Box.a(i2)));
        return null;
    }

    public static int c(ParsableByteArray parsableByteArray) {
        int iM = parsableByteArray.m();
        if (parsableByteArray.m() == 1684108385) {
            parsableByteArray.O(8);
            int i2 = iM - 16;
            if (i2 == 1) {
                return parsableByteArray.A();
            }
            if (i2 == 2) {
                return parsableByteArray.H();
            }
            if (i2 == 3) {
                return parsableByteArray.D();
            }
            if (i2 == 4 && (parsableByteArray.j() & 128) == 0) {
                return parsableByteArray.E();
            }
        }
        Log.g("Failed to parse data atom to int");
        return -1;
    }

    public static Id3Frame d(int i2, String str, ParsableByteArray parsableByteArray, boolean z, boolean z2) {
        int iC = c(parsableByteArray);
        if (z2) {
            iC = Math.min(1, iC);
        }
        if (iC >= 0) {
            return z ? new TextInformationFrame(str, (String) null, ImmutableList.A(Integer.toString(iC))) : new CommentFrame("und", str, Integer.toString(iC));
        }
        Log.g("Failed to parse uint8 attribute: ".concat(Mp4Box.a(i2)));
        return null;
    }

    public static TextInformationFrame e(int i2, ParsableByteArray parsableByteArray, String str) {
        int iM = parsableByteArray.m();
        if (parsableByteArray.m() == 1684108385) {
            parsableByteArray.O(8);
            return new TextInformationFrame(str, (String) null, ImmutableList.A(parsableByteArray.w(iM - 16)));
        }
        Log.g("Failed to parse text attribute: ".concat(Mp4Box.a(i2)));
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void f(int i2, Metadata metadata, Format.Builder builder, Metadata metadata2, Metadata... metadataArr) {
        if (metadata2 == null) {
            metadata2 = new Metadata(new Metadata.Entry[0]);
        }
        if (metadata != null) {
            UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
            ImmutableList.Builder builder2 = new ImmutableList.Builder();
            for (Metadata.Entry entry : metadata.f13897a) {
                if (MdtaMetadataEntry.class.isAssignableFrom(entry.getClass())) {
                    builder2.e((Metadata.Entry) MdtaMetadataEntry.class.cast(entry));
                }
            }
            UnmodifiableListIterator unmodifiableListIteratorListIterator = builder2.j().listIterator(0);
            while (unmodifiableListIteratorListIterator.hasNext()) {
                MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) unmodifiableListIteratorListIterator.next();
                if (!mdtaMetadataEntry.f14273a.equals("com.android.capture.fps") || i2 == 2) {
                    metadata2 = metadata2.a(mdtaMetadataEntry);
                }
            }
        }
        for (Metadata metadata3 : metadataArr) {
            metadata2 = metadata2.b(metadata3);
        }
        if (metadata2.f13897a.length > 0) {
            builder.f13772k = metadata2;
        }
    }
}
