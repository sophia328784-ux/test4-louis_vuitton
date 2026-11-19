package androidx.media3.extractor;

import android.util.Base64;
import androidx.media3.common.Metadata;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.metadata.flac.PictureFrame;
import androidx.media3.extractor.metadata.vorbis.VorbisComment;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class VorbisUtil {

    public static final class CommentHeader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String[] f16221a;

        public CommentHeader(String str, String[] strArr, int i2) {
            this.f16221a = strArr;
        }
    }

    public static final class Mode {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f16222a;

        public Mode(boolean z, int i2, int i3, int i4) {
            this.f16222a = z;
        }
    }

    public static final class VorbisIdHeader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f16223a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f16224b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f16225c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f16226e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f16227f;
        public final byte[] g;

        public VorbisIdHeader(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, boolean z, byte[] bArr) {
            this.f16223a = i3;
            this.f16224b = i4;
            this.f16225c = i5;
            this.d = i6;
            this.f16226e = i8;
            this.f16227f = i9;
            this.g = bArr;
        }
    }

    public static Metadata a(List list) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            String str = (String) list.get(i2);
            String str2 = Util.f14242a;
            String[] strArrSplit = str.split("=", 2);
            if (strArrSplit.length != 2) {
                Log.g("Failed to parse Vorbis comment: ".concat(str));
            } else if (strArrSplit[0].equals("METADATA_BLOCK_PICTURE")) {
                try {
                    arrayList.add(PictureFrame.d(new ParsableByteArray(Base64.decode(strArrSplit[1], 0))));
                } catch (RuntimeException e2) {
                    Log.h("Failed to parse vorbis picture", e2);
                }
            } else {
                arrayList.add(new VorbisComment(strArrSplit[0], strArrSplit[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    public static CommentHeader b(ParsableByteArray parsableByteArray, boolean z, boolean z2) throws ParserException {
        if (z) {
            c(3, parsableByteArray, false);
        }
        String strY = parsableByteArray.y((int) parsableByteArray.r(), StandardCharsets.UTF_8);
        int length = strY.length();
        long jR = parsableByteArray.r();
        String[] strArr = new String[(int) jR];
        int length2 = length + 15;
        for (int i2 = 0; i2 < jR; i2++) {
            String strY2 = parsableByteArray.y((int) parsableByteArray.r(), StandardCharsets.UTF_8);
            strArr[i2] = strY2;
            length2 = length2 + 4 + strY2.length();
        }
        if (z2 && (parsableByteArray.A() & 1) == 0) {
            throw ParserException.a(null, "framing bit expected to be set");
        }
        return new CommentHeader(strY, strArr, length2 + 1);
    }

    public static boolean c(int i2, ParsableByteArray parsableByteArray, boolean z) throws ParserException {
        if (parsableByteArray.a() < 7) {
            if (z) {
                return false;
            }
            throw ParserException.a(null, "too short header: " + parsableByteArray.a());
        }
        if (parsableByteArray.A() != i2) {
            if (z) {
                return false;
            }
            throw ParserException.a(null, "expected header type " + Integer.toHexString(i2));
        }
        if (parsableByteArray.A() == 118 && parsableByteArray.A() == 111 && parsableByteArray.A() == 114 && parsableByteArray.A() == 98 && parsableByteArray.A() == 105 && parsableByteArray.A() == 115) {
            return true;
        }
        if (z) {
            return false;
        }
        throw ParserException.a(null, "expected characters 'vorbis'");
    }
}
