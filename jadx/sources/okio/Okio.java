package okio;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {}, d2 = {}, k = 4, mv = {2, 1, 0}, xi = 48)
public abstract class Okio {
    public static final Sink a() {
        return new BlackholeSink();
    }

    public static final RealBufferedSink b(Sink sink) {
        sink.getClass();
        return new RealBufferedSink(sink);
    }

    public static final RealBufferedSource c(Source source) {
        source.getClass();
        return new RealBufferedSource(source);
    }

    public static Sink d(File file) {
        file.getClass();
        return new OutputStreamSink(new FileOutputStream(file, false), new Timeout());
    }

    public static final Source e(File file) {
        file.getClass();
        return new InputStreamSource(new FileInputStream(file), Timeout.d);
    }

    public static final Source f(InputStream inputStream) {
        inputStream.getClass();
        return new InputStreamSource(inputStream, new Timeout());
    }
}
