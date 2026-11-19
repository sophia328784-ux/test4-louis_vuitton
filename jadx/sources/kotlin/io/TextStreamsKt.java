package kotlin.io;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.io.StringWriter;
import kotlin.Metadata;
import kotlin.sequences.ConstrainedOnceSequence;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-stdlib"}, k = 2, mv = {2, 4, 0}, xi = 48)
public abstract class TextStreamsKt {
    public static final ConstrainedOnceSequence a(BufferedReader bufferedReader) {
        return new ConstrainedOnceSequence(new LinesSequence(bufferedReader));
    }

    public static final String b(Reader reader) throws IOException {
        StringWriter stringWriter = new StringWriter();
        char[] cArr = new char[8192];
        int i2 = reader.read(cArr);
        while (i2 >= 0) {
            stringWriter.write(cArr, 0, i2);
            i2 = reader.read(cArr);
        }
        String string = stringWriter.toString();
        string.getClass();
        return string;
    }
}
