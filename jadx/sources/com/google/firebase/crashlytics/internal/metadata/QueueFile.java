package com.google.firebase.crashlytics.internal.metadata;

import defpackage.az;
import defpackage.md;
import defpackage.r81;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
class QueueFile implements Closeable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Logger f34613h = Logger.getLogger(QueueFile.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RandomAccessFile f34614b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f34615c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Element f34616e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Element f34617f;
    public final byte[] g;

    public static class Element {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Element f34620c = new Element(0, 0);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f34621a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f34622b;

        public Element(int i2, int i3) {
            this.f34621a = i2;
            this.f34622b = i3;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(getClass().getSimpleName());
            sb.append("[position = ");
            sb.append(this.f34621a);
            sb.append(", length = ");
            return defpackage.a.i(this.f34622b, "]", sb);
        }
    }

    public interface ElementReader {
        void a(InputStream inputStream, int i2);
    }

    public QueueFile(File file) throws IOException {
        byte[] bArr = new byte[16];
        this.g = bArr;
        if (!file.exists()) {
            File file2 = new File(file.getPath() + ".tmp");
            RandomAccessFile randomAccessFile = new RandomAccessFile(file2, "rwd");
            try {
                randomAccessFile.setLength(4096L);
                randomAccessFile.seek(0L);
                byte[] bArr2 = new byte[16];
                int[] iArr = {4096, 0, 0, 0};
                int i2 = 0;
                for (int i3 = 0; i3 < 4; i3++) {
                    s(i2, iArr[i3], bArr2);
                    i2 += 4;
                }
                randomAccessFile.write(bArr2);
                randomAccessFile.close();
                if (!file2.renameTo(file)) {
                    az.o("Rename failed!");
                    throw null;
                }
            } catch (Throwable th) {
                randomAccessFile.close();
                throw th;
            }
        }
        RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "rwd");
        this.f34614b = randomAccessFile2;
        randomAccessFile2.seek(0L);
        randomAccessFile2.readFully(bArr);
        int iK = k(0, bArr);
        this.f34615c = iK;
        if (iK <= randomAccessFile2.length()) {
            this.d = k(4, bArr);
            int iK2 = k(8, bArr);
            int iK3 = k(12, bArr);
            this.f34616e = j(iK2);
            this.f34617f = j(iK3);
            return;
        }
        throw new IOException("File is truncated. Expected length: " + this.f34615c + ", Actual length: " + randomAccessFile2.length());
    }

    public static int k(int i2, byte[] bArr) {
        return ((bArr[i2] & 255) << 24) + ((bArr[i2 + 1] & 255) << 16) + ((bArr[i2 + 2] & 255) << 8) + (bArr[i2 + 3] & 255);
    }

    public static void s(int i2, int i3, byte[] bArr) {
        bArr[i2] = (byte) (i3 >> 24);
        bArr[i2 + 1] = (byte) (i3 >> 16);
        bArr[i2 + 2] = (byte) (i3 >> 8);
        bArr[i2 + 3] = (byte) i3;
    }

    public final void c(byte[] bArr) {
        int iQ;
        int length = bArr.length;
        synchronized (this) {
            if (length >= 0) {
                if (length <= bArr.length) {
                    d(length);
                    boolean zH = h();
                    if (zH) {
                        iQ = 16;
                    } else {
                        Element element = this.f34617f;
                        iQ = q(element.f34621a + 4 + element.f34622b);
                    }
                    Element element2 = new Element(iQ, length);
                    s(0, length, this.g);
                    o(iQ, 4, this.g);
                    o(iQ + 4, length, bArr);
                    r(this.f34615c, this.d + 1, zH ? iQ : this.f34616e.f34621a, iQ);
                    this.f34617f = element2;
                    this.d++;
                    if (zH) {
                        this.f34616e = element2;
                    }
                }
            }
            throw new IndexOutOfBoundsException();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        this.f34614b.close();
    }

    public final void d(int i2) throws IOException {
        int i3 = i2 + 4;
        int iP = this.f34615c - p();
        if (iP >= i3) {
            return;
        }
        int i4 = this.f34615c;
        do {
            iP += i4;
            i4 <<= 1;
        } while (iP < i3);
        RandomAccessFile randomAccessFile = this.f34614b;
        randomAccessFile.setLength(i4);
        randomAccessFile.getChannel().force(true);
        Element element = this.f34617f;
        int iQ = q(element.f34621a + 4 + element.f34622b);
        if (iQ < this.f34616e.f34621a) {
            FileChannel channel = randomAccessFile.getChannel();
            channel.position(this.f34615c);
            long j2 = iQ - 4;
            if (channel.transferTo(16L, j2, channel) != j2) {
                md.h("Copied insufficient number of bytes!");
                return;
            }
        }
        int i5 = this.f34617f.f34621a;
        int i6 = this.f34616e.f34621a;
        if (i5 < i6) {
            int i7 = (this.f34615c + i5) - 16;
            r(i4, this.d, i6, i7);
            this.f34617f = new Element(i7, this.f34617f.f34622b);
        } else {
            r(i4, this.d, i6, i5);
        }
        this.f34615c = i4;
    }

    public final synchronized void e(ElementReader elementReader) {
        int iQ = this.f34616e.f34621a;
        for (int i2 = 0; i2 < this.d; i2++) {
            Element elementJ = j(iQ);
            elementReader.a(new ElementInputStream(elementJ), elementJ.f34622b);
            iQ = q(elementJ.f34621a + 4 + elementJ.f34622b);
        }
    }

    public final synchronized boolean h() {
        return this.d == 0;
    }

    public final Element j(int i2) throws IOException {
        if (i2 == 0) {
            return Element.f34620c;
        }
        RandomAccessFile randomAccessFile = this.f34614b;
        randomAccessFile.seek(i2);
        return new Element(i2, randomAccessFile.readInt());
    }

    public final synchronized void m() {
        if (h()) {
            throw new NoSuchElementException();
        }
        if (this.d == 1) {
            synchronized (this) {
                r(4096, 0, 0, 0);
                this.d = 0;
                Element element = Element.f34620c;
                this.f34616e = element;
                this.f34617f = element;
                if (this.f34615c > 4096) {
                    RandomAccessFile randomAccessFile = this.f34614b;
                    randomAccessFile.setLength(4096L);
                    randomAccessFile.getChannel().force(true);
                }
                this.f34615c = 4096;
            }
        } else {
            Element element2 = this.f34616e;
            int iQ = q(element2.f34621a + 4 + element2.f34622b);
            n(iQ, 0, this.g, 4);
            int iK = k(0, this.g);
            r(this.f34615c, this.d - 1, iQ, this.f34617f.f34621a);
            this.d--;
            this.f34616e = new Element(iQ, iK);
        }
    }

    public final void n(int i2, int i3, byte[] bArr, int i4) throws IOException {
        int iQ = q(i2);
        int i5 = iQ + i4;
        int i6 = this.f34615c;
        RandomAccessFile randomAccessFile = this.f34614b;
        if (i5 <= i6) {
            randomAccessFile.seek(iQ);
            randomAccessFile.readFully(bArr, i3, i4);
            return;
        }
        int i7 = i6 - iQ;
        randomAccessFile.seek(iQ);
        randomAccessFile.readFully(bArr, i3, i7);
        randomAccessFile.seek(16L);
        randomAccessFile.readFully(bArr, i3 + i7, i4 - i7);
    }

    public final void o(int i2, int i3, byte[] bArr) throws IOException {
        int iQ = q(i2);
        int i4 = iQ + i3;
        int i5 = this.f34615c;
        RandomAccessFile randomAccessFile = this.f34614b;
        if (i4 <= i5) {
            randomAccessFile.seek(iQ);
            randomAccessFile.write(bArr, 0, i3);
            return;
        }
        int i6 = i5 - iQ;
        randomAccessFile.seek(iQ);
        randomAccessFile.write(bArr, 0, i6);
        randomAccessFile.seek(16L);
        randomAccessFile.write(bArr, i6, i3 - i6);
    }

    public final int p() {
        if (this.d == 0) {
            return 16;
        }
        Element element = this.f34617f;
        int i2 = element.f34621a;
        int i3 = this.f34616e.f34621a;
        return i2 >= i3 ? (i2 - i3) + 4 + element.f34622b + 16 : (((i2 + 4) + element.f34622b) + this.f34615c) - i3;
    }

    public final int q(int i2) {
        int i3 = this.f34615c;
        return i2 < i3 ? i2 : (i2 + 16) - i3;
    }

    public final void r(int i2, int i3, int i4, int i5) throws IOException {
        int[] iArr = {i2, i3, i4, i5};
        int i6 = 0;
        int i7 = 0;
        while (true) {
            byte[] bArr = this.g;
            if (i6 >= 4) {
                RandomAccessFile randomAccessFile = this.f34614b;
                randomAccessFile.seek(0L);
                randomAccessFile.write(bArr);
                return;
            } else {
                s(i7, iArr[i6], bArr);
                i7 += 4;
                i6++;
            }
        }
    }

    public final String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("[fileLength=");
        sb.append(this.f34615c);
        sb.append(", size=");
        sb.append(this.d);
        sb.append(", first=");
        sb.append(this.f34616e);
        sb.append(", last=");
        sb.append(this.f34617f);
        sb.append(", element lengths=[");
        try {
            e(new ElementReader() { // from class: com.google.firebase.crashlytics.internal.metadata.QueueFile.1

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public boolean f34618a = true;

                @Override // com.google.firebase.crashlytics.internal.metadata.QueueFile.ElementReader
                public final void a(InputStream inputStream, int i2) {
                    boolean z = this.f34618a;
                    StringBuilder sb2 = sb;
                    if (z) {
                        this.f34618a = false;
                    } else {
                        sb2.append(", ");
                    }
                    sb2.append(i2);
                }
            });
        } catch (IOException e2) {
            f34613h.log(Level.WARNING, "read error", (Throwable) e2);
        }
        sb.append("]]");
        return sb.toString();
    }

    public final class ElementInputStream extends InputStream {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f34623b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f34624c;

        public ElementInputStream(Element element) {
            int i2 = element.f34621a + 4;
            Logger logger = QueueFile.f34613h;
            this.f34623b = QueueFile.this.q(i2);
            this.f34624c = element.f34622b;
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i2, int i3) throws IOException {
            Logger logger = QueueFile.f34613h;
            if (bArr == null) {
                r81.d("buffer");
                return 0;
            }
            if ((i2 | i3) < 0 || i3 > bArr.length - i2) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i4 = this.f34624c;
            if (i4 <= 0) {
                return -1;
            }
            if (i3 > i4) {
                i3 = i4;
            }
            int i5 = this.f34623b;
            QueueFile queueFile = QueueFile.this;
            queueFile.n(i5, i2, bArr, i3);
            this.f34623b = queueFile.q(this.f34623b + i3);
            this.f34624c -= i3;
            return i3;
        }

        @Override // java.io.InputStream
        public final int read() throws IOException {
            QueueFile queueFile = QueueFile.this;
            RandomAccessFile randomAccessFile = queueFile.f34614b;
            if (this.f34624c == 0) {
                return -1;
            }
            randomAccessFile.seek(this.f34623b);
            int i2 = randomAccessFile.read();
            this.f34623b = queueFile.q(this.f34623b + 1);
            this.f34624c--;
            return i2;
        }
    }
}
