package androidx.emoji2.text;

import androidx.emoji2.text.flatbuffer.MetadataList;
import defpackage.az;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.crypto.hpke.HPKE;

/* JADX INFO: loaded from: classes.dex */
abstract class MetadataListReader {

    public static class ByteBufferReader implements OpenTypeReader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ByteBuffer f13108a;

        public ByteBufferReader(ByteBuffer byteBuffer) {
            this.f13108a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        public final void a(int i2) {
            ByteBuffer byteBuffer = this.f13108a;
            byteBuffer.position(byteBuffer.position() + i2);
        }
    }

    public interface OpenTypeReader {
    }

    public static MetadataList a(MappedByteBuffer mappedByteBuffer) throws IOException {
        ByteBuffer byteBuffer;
        long j2;
        ByteBuffer byteBufferDuplicate = mappedByteBuffer.duplicate();
        ByteBufferReader byteBufferReader = new ByteBufferReader(byteBufferDuplicate);
        int i2 = 4;
        byteBufferReader.a(4);
        int i3 = byteBufferDuplicate.getShort() & HPKE.aead_EXPORT_ONLY;
        if (i3 > 100) {
            az.o("Cannot read metadata.");
            return null;
        }
        byteBufferReader.a(6);
        int i4 = 0;
        while (true) {
            byteBuffer = byteBufferReader.f13108a;
            if (i4 >= i3) {
                j2 = -1;
                break;
            }
            int i5 = byteBuffer.getInt();
            byteBufferReader.a(i2);
            j2 = ((long) byteBuffer.getInt()) & BodyPartID.bodyIdMax;
            byteBufferReader.a(i2);
            if (1835365473 == i5) {
                break;
            }
            i4++;
            i2 = 4;
        }
        if (j2 != -1) {
            byteBufferReader.a((int) (j2 - ((long) byteBuffer.position())));
            byteBufferReader.a(12);
            long j3 = ((long) byteBuffer.getInt()) & BodyPartID.bodyIdMax;
            for (int i6 = 0; i6 < j3; i6++) {
                int i7 = byteBuffer.getInt();
                long j4 = ((long) byteBuffer.getInt()) & BodyPartID.bodyIdMax;
                byteBuffer.getInt();
                if (1164798569 == i7 || 1701669481 == i7) {
                    byteBufferDuplicate.position((int) (j4 + j2));
                    MetadataList metadataList = new MetadataList();
                    byteBufferDuplicate.order(ByteOrder.LITTLE_ENDIAN);
                    int iPosition = byteBufferDuplicate.position() + byteBufferDuplicate.getInt(byteBufferDuplicate.position());
                    metadataList.f13128b = byteBufferDuplicate;
                    metadataList.f13127a = iPosition;
                    int i8 = iPosition - byteBufferDuplicate.getInt(iPosition);
                    metadataList.f13129c = i8;
                    metadataList.d = metadataList.f13128b.getShort(i8);
                    return metadataList;
                }
            }
        }
        az.o("Cannot read metadata.");
        return null;
    }
}
