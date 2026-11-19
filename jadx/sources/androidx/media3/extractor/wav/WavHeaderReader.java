package androidx.media3.extractor.wav;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorInput;
import com.batch.android.x0.h;
import defpackage.a;

/* JADX INFO: loaded from: classes.dex */
abstract class WavHeaderReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f17215a = {0, 0, 0, 0, 16, 0, -128, 0, 0, -86, 0, 56, -101, 113};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f17216b = {0, 0, 33, 7, h.a.x, 17, -122, 68, h.a.m, h.a.f24177f, h.a.o, 0, 0, 0};

    public static final class ChunkHeader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f17217a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f17218b;

        public ChunkHeader(int i2, long j2) {
            this.f17217a = i2;
            this.f17218b = j2;
        }

        public static ChunkHeader a(ExtractorInput extractorInput, ParsableByteArray parsableByteArray) {
            extractorInput.b(0, 8, parsableByteArray.f14194a);
            parsableByteArray.N(0);
            return new ChunkHeader(parsableByteArray.m(), parsableByteArray.r());
        }
    }

    public static boolean a(ExtractorInput extractorInput) {
        ParsableByteArray parsableByteArray = new ParsableByteArray(8);
        int i2 = ChunkHeader.a(extractorInput, parsableByteArray).f17217a;
        if (i2 != 1380533830 && i2 != 1380333108) {
            return false;
        }
        extractorInput.b(0, 4, parsableByteArray.f14194a);
        parsableByteArray.N(0);
        int iM = parsableByteArray.m();
        if (iM == 1463899717) {
            return true;
        }
        Log.d("Unsupported form type: " + iM);
        return false;
    }

    public static ChunkHeader b(int i2, ExtractorInput extractorInput, ParsableByteArray parsableByteArray) {
        ChunkHeader chunkHeaderA = ChunkHeader.a(extractorInput, parsableByteArray);
        while (true) {
            int i3 = chunkHeaderA.f17217a;
            if (i3 == i2) {
                return chunkHeaderA;
            }
            a.u(i3, "Ignoring unknown WAV chunk: ");
            long j2 = chunkHeaderA.f17218b;
            long j3 = 8 + j2;
            if (j2 % 2 != 0) {
                j3 = 9 + j2;
            }
            if (j3 > 2147483647L) {
                throw ParserException.c("Chunk is too large (~2GB+) to skip; id: " + i3);
            }
            extractorInput.m((int) j3);
            chunkHeaderA = ChunkHeader.a(extractorInput, parsableByteArray);
        }
    }
}
