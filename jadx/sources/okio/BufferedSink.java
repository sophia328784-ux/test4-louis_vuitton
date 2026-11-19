package okio;

import java.nio.channels.WritableByteChannel;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u00012\u00020\u0002\u0082\u0001\u0002\u0003\u0004ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0005À\u0006\u0001"}, d2 = {"Lokio/BufferedSink;", "Lokio/Sink;", "Ljava/nio/channels/WritableByteChannel;", "Lokio/Buffer;", "Lokio/RealBufferedSink;", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface BufferedSink extends Sink, WritableByteChannel {
    BufferedSink F0(long j2);

    BufferedSink G1(ByteString byteString);

    /* JADX INFO: renamed from: L */
    Buffer getF77441c();

    BufferedSink X();

    BufferedSink Y0(int i2);

    BufferedSink f1(int i2, byte[] bArr);

    @Override // okio.Sink, java.io.Flushable
    void flush();

    BufferedSink l1(long j2);

    BufferedSink r0(String str);

    BufferedSink r1(int i2, int i3, String str);

    long u0(Source source);

    BufferedSink write(byte[] bArr);

    BufferedSink writeByte(int i2);

    BufferedSink writeInt(int i2);

    BufferedSink writeShort(int i2);

    BufferedSink x(long j2);
}
