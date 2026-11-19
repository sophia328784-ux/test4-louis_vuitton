package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import defpackage.a;
import defpackage.tr;
import java.nio.ByteBuffer;
import org.aspectj.lang.JoinPoint;
import org.aspectj.runtime.reflect.Factory;

/* JADX INFO: loaded from: classes2.dex */
public class VideoMediaHeaderBox extends AbstractMediaHeaderBox {
    public static final /* synthetic */ JoinPoint.StaticPart q;
    public static final /* synthetic */ JoinPoint.StaticPart r;
    public static final /* synthetic */ JoinPoint.StaticPart s;
    public static final /* synthetic */ JoinPoint.StaticPart t;
    public static final /* synthetic */ JoinPoint.StaticPart u;
    public int o;
    public int[] p;

    static {
        Factory factory = new Factory("VideoMediaHeaderBox.java", VideoMediaHeaderBox.class);
        q = factory.e(factory.d("getGraphicsmode", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "", "", "int"), 39);
        r = factory.e(factory.d("getOpcolor", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "", "", "[I"), 43);
        s = factory.e(factory.d("toString", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "", "", "java.lang.String"), 71);
        t = factory.e(factory.d("setOpcolor", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "[I", "opcolor", "void"), 75);
        u = factory.e(factory.d("setGraphicsmode", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "int", "graphicsmode", "void"), 79);
    }

    public VideoMediaHeaderBox() {
        super("vmhd");
        this.o = 0;
        this.p = new int[3];
        m(1);
    }

    @Override // com.googlecode.mp4parser.AbstractFullBox, com.googlecode.mp4parser.AbstractBox
    public final void a(ByteBuffer byteBuffer) {
        l(byteBuffer);
        this.o = IsoTypeReader.f(byteBuffer);
        this.p = new int[3];
        for (int i2 = 0; i2 < 3; i2++) {
            this.p[i2] = IsoTypeReader.f(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.AbstractFullBox, com.googlecode.mp4parser.AbstractBox
    public final void b(ByteBuffer byteBuffer) {
        o(byteBuffer);
        IsoTypeWriter.d(this.o, byteBuffer);
        for (int i2 : this.p) {
            IsoTypeWriter.d(i2, byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    public final long f() {
        return 12L;
    }

    public final String toString() {
        JoinPoint joinPointB = Factory.b(s, this, this);
        RequiresParseDetailAspect.a().getClass();
        RequiresParseDetailAspect.b(joinPointB);
        StringBuilder sb = new StringBuilder("VideoMediaHeaderBox[graphicsmode=");
        tr.B(Factory.b(q, this, this));
        sb.append(this.o);
        sb.append(";opcolor0=");
        JoinPoint.StaticPart staticPart = r;
        tr.B(Factory.b(staticPart, this, this));
        sb.append(this.p[0]);
        sb.append(";opcolor1=");
        tr.B(Factory.b(staticPart, this, this));
        sb.append(this.p[1]);
        sb.append(";opcolor2=");
        tr.B(Factory.b(staticPart, this, this));
        return a.i(this.p[2], "]", sb);
    }
}
