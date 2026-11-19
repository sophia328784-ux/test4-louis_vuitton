package okio;

import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u00012\u00020\u0002\u0082\u0001\u0002\u0003\u0004ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0005À\u0006\u0001"}, d2 = {"Lokio/BufferedSource;", "Lokio/Source;", "Ljava/nio/channels/ReadableByteChannel;", "Lokio/Buffer;", "Lokio/RealBufferedSource;", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface BufferedSource extends Source, ReadableByteChannel {
    long A0();

    void D0(long j2);

    String K0(long j2);

    /* JADX INFO: renamed from: L */
    Buffer getF77444c();

    ByteString N0(long j2);

    long N1(BufferedSink bufferedSink);

    Buffer Q();

    long S1();

    long T(ByteString byteString);

    InputStream U1();

    void V(Buffer buffer, long j2);

    byte[] V0();

    int V1(Options options);

    long W(ByteString byteString);

    String Z(long j2);

    boolean Z0();

    String i1(Charset charset);

    ByteString n1();

    RealBufferedSource peek();

    byte readByte();

    void readFully(byte[] bArr);

    int readInt();

    long readLong();

    short readShort();

    boolean request(long j2);

    boolean s0(long j2, ByteString byteString);

    void skip(long j2);

    int w1();

    String x0();
}
