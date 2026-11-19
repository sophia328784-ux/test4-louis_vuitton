package com.coremedia.iso;

import com.coremedia.iso.boxes.Box;
import com.googlecode.mp4parser.BasicContainer;
import com.googlecode.mp4parser.DataSource;
import defpackage.md;
import java.io.EOFException;
import java.nio.ByteBuffer;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractBoxParser implements BoxParser {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Logger f25312b = Logger.getLogger(AbstractBoxParser.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ThreadLocal f25313a = new AnonymousClass1();

    /* JADX INFO: renamed from: com.coremedia.iso.AbstractBoxParser$1, reason: invalid class name */
    public class AnonymousClass1 extends ThreadLocal<ByteBuffer> {
        @Override // java.lang.ThreadLocal
        public final ByteBuffer initialValue() {
            return ByteBuffer.allocate(32);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.coremedia.iso.BoxParser
    public final Box a(DataSource dataSource, BasicContainer basicContainer) throws EOFException {
        long jI;
        AbstractBoxParser abstractBoxParser = this;
        long jPosition = dataSource.position();
        ThreadLocal threadLocal = abstractBoxParser.f25313a;
        ((ByteBuffer) threadLocal.get()).rewind().limit(8);
        while (true) {
            int i2 = dataSource.read((ByteBuffer) threadLocal.get());
            byte[] bArr = null;
            if (i2 == 8) {
                ((ByteBuffer) threadLocal.get()).rewind();
                long jH = IsoTypeReader.h((ByteBuffer) threadLocal.get());
                long jPosition2 = 8;
                if (jH < 8 && jH > 1) {
                    f25312b.severe("Plausibility check failed: size < 8 (size = " + jH + "). Stop parsing!");
                    return null;
                }
                String strB = IsoTypeReader.b((ByteBuffer) threadLocal.get());
                if (jH == 1) {
                    ((ByteBuffer) threadLocal.get()).limit(16);
                    dataSource.read((ByteBuffer) threadLocal.get());
                    ((ByteBuffer) threadLocal.get()).position(8);
                    jI = IsoTypeReader.i((ByteBuffer) threadLocal.get()) - 16;
                } else {
                    if (jH == 0) {
                        jH = dataSource.size();
                        jPosition2 = dataSource.position();
                    }
                    jI = jH - jPosition2;
                }
                if ("uuid".equals(strB)) {
                    ((ByteBuffer) threadLocal.get()).limit(((ByteBuffer) threadLocal.get()).limit() + 16);
                    dataSource.read((ByteBuffer) threadLocal.get());
                    byte[] bArr2 = new byte[16];
                    for (int iPosition = ((ByteBuffer) threadLocal.get()).position() - 16; iPosition < ((ByteBuffer) threadLocal.get()).position(); iPosition++) {
                        bArr2[iPosition - (((ByteBuffer) threadLocal.get()).position() - 16)] = ((ByteBuffer) threadLocal.get()).get(iPosition);
                    }
                    jI -= 16;
                    bArr = bArr2;
                }
                Box boxB = abstractBoxParser.b(strB, basicContainer instanceof Box ? ((Box) basicContainer).getType() : "", bArr);
                boxB.e(basicContainer);
                ((ByteBuffer) threadLocal.get()).rewind();
                boxB.d(dataSource, (ByteBuffer) threadLocal.get(), jI, abstractBoxParser);
                return boxB;
            }
            if (i2 < 0) {
                dataSource.position(jPosition);
                md.e();
                return null;
            }
            abstractBoxParser = this;
        }
    }

    public abstract Box b(String str, String str2, byte[] bArr);
}
