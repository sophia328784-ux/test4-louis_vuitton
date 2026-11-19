package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.IsoTypeReader;
import com.googlecode.mp4parser.AbstractBox;
import defpackage.tr;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.aspectj.lang.JoinPoint;
import org.aspectj.runtime.reflect.Factory;

/* JADX INFO: loaded from: classes2.dex */
public class FileTypeBox extends AbstractBox {
    public static final /* synthetic */ JoinPoint.StaticPart n;
    public static final /* synthetic */ JoinPoint.StaticPart o;
    public static final /* synthetic */ JoinPoint.StaticPart p;
    public static final /* synthetic */ JoinPoint.StaticPart q;
    public static final /* synthetic */ JoinPoint.StaticPart r;
    public static final /* synthetic */ JoinPoint.StaticPart s;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f25320k;
    public long l;
    public List m;

    static {
        Factory factory = new Factory("FileTypeBox.java", FileTypeBox.class);
        n = factory.e(factory.d("getMajorBrand", "com.coremedia.iso.boxes.FileTypeBox", "", "", "java.lang.String"), 85);
        o = factory.e(factory.d("setMajorBrand", "com.coremedia.iso.boxes.FileTypeBox", "java.lang.String", "majorBrand", "void"), 94);
        p = factory.e(factory.d("setMinorVersion", "com.coremedia.iso.boxes.FileTypeBox", "long", "minorVersion", "void"), 103);
        q = factory.e(factory.d("getMinorVersion", "com.coremedia.iso.boxes.FileTypeBox", "", "", "long"), 113);
        r = factory.e(factory.d("getCompatibleBrands", "com.coremedia.iso.boxes.FileTypeBox", "", "", "java.util.List"), 122);
        s = factory.e(factory.d("setCompatibleBrands", "com.coremedia.iso.boxes.FileTypeBox", "java.util.List", "compatibleBrands", "void"), 126);
    }

    public FileTypeBox(String str, long j2, List<String> list) {
        super("ftyp");
        List list2 = Collections.EMPTY_LIST;
        this.f25320k = str;
        this.l = j2;
        this.m = list;
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    public final void a(ByteBuffer byteBuffer) {
        this.f25320k = IsoTypeReader.b(byteBuffer);
        this.l = IsoTypeReader.h(byteBuffer);
        int iRemaining = byteBuffer.remaining() / 4;
        this.m = new LinkedList();
        for (int i2 = 0; i2 < iRemaining; i2++) {
            this.m.add(IsoTypeReader.b(byteBuffer));
        }
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    public final void b(ByteBuffer byteBuffer) {
        byteBuffer.put(IsoFile.n(this.f25320k));
        byteBuffer.putInt((int) this.l);
        Iterator it = this.m.iterator();
        while (it.hasNext()) {
            byteBuffer.put(IsoFile.n((String) it.next()));
        }
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    public final long f() {
        return (this.m.size() * 4) + 8;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FileTypeBox[majorBrand=");
        tr.B(Factory.b(n, this, this));
        sb.append(this.f25320k);
        sb.append(";minorVersion=");
        tr.B(Factory.b(q, this, this));
        sb.append(this.l);
        for (String str : this.m) {
            sb.append(";compatibleBrand=");
            sb.append(str);
        }
        sb.append("]");
        return sb.toString();
    }

    public FileTypeBox() {
        super("ftyp");
        this.m = Collections.EMPTY_LIST;
    }
}
