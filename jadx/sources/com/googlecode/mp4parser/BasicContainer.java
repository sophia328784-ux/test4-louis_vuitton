package com.googlecode.mp4parser;

import com.coremedia.iso.BoxParser;
import com.coremedia.iso.boxes.Box;
import com.coremedia.iso.boxes.Container;
import com.googlecode.mp4parser.util.LazyList;
import com.googlecode.mp4parser.util.Logger;
import defpackage.b21;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes2.dex */
public class BasicContainer implements Container, Iterator<Box>, Closeable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Box f35693h = new AnonymousClass1("eof ");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public BoxParser f35694b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public DataSource f35695c;
    public Box d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f35696e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f35697f = 0;
    public ArrayList g = new ArrayList();

    /* JADX INFO: renamed from: com.googlecode.mp4parser.BasicContainer$1, reason: invalid class name */
    public class AnonymousClass1 extends AbstractBox {
        @Override // com.googlecode.mp4parser.AbstractBox
        public final void a(ByteBuffer byteBuffer) {
        }

        @Override // com.googlecode.mp4parser.AbstractBox
        public final void b(ByteBuffer byteBuffer) {
        }

        @Override // com.googlecode.mp4parser.AbstractBox
        public final long f() {
            return 0L;
        }
    }

    static {
        Logger.a(BasicContainer.class);
    }

    public void close() throws IOException {
        this.f35695c.close();
    }

    public final void g(Box box) {
        if (box != null) {
            this.g = new ArrayList(h());
            box.e(this);
            this.g.add(box);
        }
    }

    public final List h() {
        return (this.f35695c == null || this.d == f35693h) ? this.g : new LazyList(this.g, this);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        Box box = this.d;
        Box box2 = f35693h;
        if (box == box2) {
            return false;
        }
        if (box != null) {
            return true;
        }
        try {
            this.d = next();
            return true;
        } catch (NoSuchElementException unused) {
            this.d = box2;
            return false;
        }
    }

    public final long j() {
        long size = 0;
        for (int i2 = 0; i2 < h().size(); i2++) {
            size += ((Box) this.g.get(i2)).getSize();
        }
        return size;
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public final Box next() {
        Box boxA;
        Box box = this.d;
        if (box != null && box != f35693h) {
            this.d = null;
            return box;
        }
        DataSource dataSource = this.f35695c;
        if (dataSource == null || this.f35696e >= this.f35697f) {
            this.d = f35693h;
            b21.x();
            return null;
        }
        try {
            synchronized (dataSource) {
                this.f35695c.position(this.f35696e);
                boxA = this.f35694b.a(this.f35695c, this);
                this.f35696e = this.f35695c.position();
            }
            return boxA;
        } catch (EOFException unused) {
            b21.x();
            return null;
        } catch (IOException unused2) {
            b21.x();
            return null;
        }
    }

    public final void m(WritableByteChannel writableByteChannel) {
        Iterator it = h().iterator();
        while (it.hasNext()) {
            ((Box) it.next()).c(writableByteChannel);
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("[");
        for (int i2 = 0; i2 < this.g.size(); i2++) {
            if (i2 > 0) {
                sb.append(";");
            }
            sb.append(((Box) this.g.get(i2)).toString());
        }
        sb.append("]");
        return sb.toString();
    }
}
