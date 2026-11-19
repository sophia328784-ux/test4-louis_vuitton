package androidx.media3.extractor.ts;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorOutput;

/* JADX INFO: loaded from: classes.dex */
public interface ElementaryStreamReader {
    void a(ParsableByteArray parsableByteArray);

    void c();

    void d(boolean z);

    void e(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator);

    void f(int i2, long j2);
}
