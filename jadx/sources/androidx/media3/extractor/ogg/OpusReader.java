package androidx.media3.extractor.ogg;

import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.container.OpusUtil;
import androidx.media3.extractor.VorbisUtil;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class OpusReader extends StreamReader {
    public static final byte[] o = {79, 112, 117, 115, 72, 101, 97, 100};
    public static final byte[] p = {79, 112, 117, 115, 84, 97, 103, 115};
    public boolean n;

    public static boolean e(ParsableByteArray parsableByteArray, byte[] bArr) {
        if (parsableByteArray.a() < bArr.length) {
            return false;
        }
        int i2 = parsableByteArray.f14195b;
        byte[] bArr2 = new byte[bArr.length];
        parsableByteArray.k(0, bArr.length, bArr2);
        parsableByteArray.N(i2);
        return Arrays.equals(bArr2, bArr);
    }

    @Override // androidx.media3.extractor.ogg.StreamReader
    public final long b(ParsableByteArray parsableByteArray) {
        byte[] bArr = parsableByteArray.f14194a;
        return (((long) this.f16654i) * OpusUtil.b(bArr[0], bArr.length > 1 ? bArr[1] : (byte) 0)) / 1000000;
    }

    @Override // androidx.media3.extractor.ogg.StreamReader
    public final boolean c(ParsableByteArray parsableByteArray, long j2, StreamReader.SetupData setupData) {
        if (e(parsableByteArray, o)) {
            byte[] bArrCopyOf = Arrays.copyOf(parsableByteArray.f14194a, parsableByteArray.f14196c);
            int i2 = bArrCopyOf[9] & 255;
            ArrayList arrayListA = OpusUtil.a(bArrCopyOf);
            if (setupData.f16657a == null) {
                Format.Builder builder = new Format.Builder();
                builder.m = MimeTypes.p("audio/ogg");
                builder.n = MimeTypes.p("audio/opus");
                builder.F = i2;
                builder.G = 48000;
                builder.q = arrayListA;
                setupData.f16657a = new Format(builder);
                return true;
            }
        } else {
            if (!e(parsableByteArray, p)) {
                setupData.f16657a.getClass();
                return false;
            }
            setupData.f16657a.getClass();
            if (!this.n) {
                this.n = true;
                parsableByteArray.O(8);
                Metadata metadataA = VorbisUtil.a(ImmutableList.u(VorbisUtil.b(parsableByteArray, false, false).f16221a));
                if (metadataA != null) {
                    Format.Builder builderA = setupData.f16657a.a();
                    builderA.f13772k = metadataA.b(setupData.f16657a.l);
                    setupData.f16657a = new Format(builderA);
                    return true;
                }
            }
        }
        return true;
    }

    @Override // androidx.media3.extractor.ogg.StreamReader
    public final void d(boolean z) {
        super.d(z);
        if (z) {
            this.n = false;
        }
    }
}
