package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import com.googlecode.mp4parser.util.CastUtils;
import defpackage.o60;
import defpackage.tr;
import java.nio.ByteBuffer;
import org.aspectj.lang.JoinPoint;
import org.aspectj.runtime.reflect.Factory;

/* JADX INFO: loaded from: classes2.dex */
public class SampleSizeBox extends AbstractFullBox {
    public static final /* synthetic */ JoinPoint.StaticPart r;
    public static final /* synthetic */ JoinPoint.StaticPart s;
    public static final /* synthetic */ JoinPoint.StaticPart t;
    public static final /* synthetic */ JoinPoint.StaticPart u;
    public static final /* synthetic */ JoinPoint.StaticPart v;
    public static final /* synthetic */ JoinPoint.StaticPart w;
    public static final /* synthetic */ JoinPoint.StaticPart x;
    public long o;
    public long[] p;
    public int q;

    static {
        Factory factory = new Factory("SampleSizeBox.java", SampleSizeBox.class);
        r = factory.e(factory.d("getSampleSize", "com.coremedia.iso.boxes.SampleSizeBox", "", "", "long"), 50);
        s = factory.e(factory.d("setSampleSize", "com.coremedia.iso.boxes.SampleSizeBox", "long", "sampleSize", "void"), 54);
        t = factory.e(factory.d("getSampleSizeAtIndex", "com.coremedia.iso.boxes.SampleSizeBox", "int", "index", "long"), 59);
        u = factory.e(factory.d("getSampleCount", "com.coremedia.iso.boxes.SampleSizeBox", "", "", "long"), 67);
        v = factory.e(factory.d("getSampleSizes", "com.coremedia.iso.boxes.SampleSizeBox", "", "", "[J"), 76);
        w = factory.e(factory.d("setSampleSizes", "com.coremedia.iso.boxes.SampleSizeBox", "[J", "sampleSizes", "void"), 80);
        x = factory.e(factory.d("toString", "com.coremedia.iso.boxes.SampleSizeBox", "", "", "java.lang.String"), 119);
    }

    public SampleSizeBox() {
        super("stsz");
        this.p = new long[0];
    }

    @Override // com.googlecode.mp4parser.AbstractFullBox, com.googlecode.mp4parser.AbstractBox
    public final void a(ByteBuffer byteBuffer) {
        l(byteBuffer);
        this.o = IsoTypeReader.h(byteBuffer);
        int iA = CastUtils.a(IsoTypeReader.h(byteBuffer));
        this.q = iA;
        if (this.o == 0) {
            this.p = new long[iA];
            for (int i2 = 0; i2 < this.q; i2++) {
                this.p[i2] = IsoTypeReader.h(byteBuffer);
            }
        }
    }

    @Override // com.googlecode.mp4parser.AbstractFullBox, com.googlecode.mp4parser.AbstractBox
    public final void b(ByteBuffer byteBuffer) {
        o(byteBuffer);
        byteBuffer.putInt((int) this.o);
        if (this.o != 0) {
            byteBuffer.putInt(this.q);
            return;
        }
        byteBuffer.putInt(this.p.length);
        long[] jArr = this.p;
        for (long j2 : jArr) {
            byteBuffer.putInt((int) j2);
        }
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    public final long f() {
        return (this.o == 0 ? this.p.length * 4 : 0) + 12;
    }

    public final String toString() {
        JoinPoint joinPointB = Factory.b(x, this, this);
        RequiresParseDetailAspect.a().getClass();
        RequiresParseDetailAspect.b(joinPointB);
        StringBuilder sb = new StringBuilder("SampleSizeBox[sampleSize=");
        tr.B(Factory.b(r, this, this));
        sb.append(this.o);
        sb.append(";sampleCount=");
        tr.B(Factory.b(u, this, this));
        return o60.j(this.o > 0 ? this.q : this.p.length, "]", sb);
    }
}
