package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.github.druk.dnssd.NSType;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import com.googlecode.mp4parser.util.DateHelper;
import com.googlecode.mp4parser.util.Matrix;
import defpackage.tr;
import defpackage.v7;
import java.nio.ByteBuffer;
import java.util.Date;
import org.aspectj.lang.JoinPoint;
import org.aspectj.runtime.reflect.Factory;
import org.bouncycastle.math.Primes;

/* JADX INFO: loaded from: classes2.dex */
public class TrackHeaderBox extends AbstractFullBox {
    public static final /* synthetic */ JoinPoint.StaticPart A;
    public static final /* synthetic */ JoinPoint.StaticPart B;
    public static final /* synthetic */ JoinPoint.StaticPart C;
    public static final /* synthetic */ JoinPoint.StaticPart D;
    public static final /* synthetic */ JoinPoint.StaticPart E;
    public static final /* synthetic */ JoinPoint.StaticPart F;
    public static final /* synthetic */ JoinPoint.StaticPart G;
    public static final /* synthetic */ JoinPoint.StaticPart H;
    public static final /* synthetic */ JoinPoint.StaticPart I;
    public static final /* synthetic */ JoinPoint.StaticPart J;
    public static final /* synthetic */ JoinPoint.StaticPart K;
    public static final /* synthetic */ JoinPoint.StaticPart L;
    public static final /* synthetic */ JoinPoint.StaticPart M;
    public static final /* synthetic */ JoinPoint.StaticPart N;
    public static final /* synthetic */ JoinPoint.StaticPart O;
    public static final /* synthetic */ JoinPoint.StaticPart P;
    public static final /* synthetic */ JoinPoint.StaticPart Q;
    public static final /* synthetic */ JoinPoint.StaticPart R;
    public static final /* synthetic */ JoinPoint.StaticPart S;
    public static final /* synthetic */ JoinPoint.StaticPart T;
    public static final /* synthetic */ JoinPoint.StaticPart V;
    public static final /* synthetic */ JoinPoint.StaticPart W;
    public static final /* synthetic */ JoinPoint.StaticPart X;
    public static final /* synthetic */ JoinPoint.StaticPart Y;
    public static final /* synthetic */ JoinPoint.StaticPart Z;
    public static final /* synthetic */ JoinPoint.StaticPart b1;
    public static final /* synthetic */ JoinPoint.StaticPart h0;
    public static final /* synthetic */ JoinPoint.StaticPart t0;
    public static final /* synthetic */ JoinPoint.StaticPart y;
    public static final /* synthetic */ JoinPoint.StaticPart z;
    public Date o;
    public Date p;
    public long q;
    public long r;
    public int s;
    public int t;
    public float u;
    public Matrix v;
    public double w;
    public double x;

    static {
        Factory factory = new Factory("TrackHeaderBox.java", TrackHeaderBox.class);
        y = factory.e(factory.d("getCreationTime", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "java.util.Date"), 60);
        z = factory.e(factory.d("getModificationTime", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "java.util.Date"), 64);
        I = factory.e(factory.d("getContent", "com.coremedia.iso.boxes.TrackHeaderBox", "java.nio.ByteBuffer", "byteBuffer", "void"), 142);
        J = factory.e(factory.d("toString", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "java.lang.String"), 170);
        K = factory.e(factory.d("setCreationTime", "com.coremedia.iso.boxes.TrackHeaderBox", "java.util.Date", "creationTime", "void"), 196);
        L = factory.e(factory.d("setModificationTime", "com.coremedia.iso.boxes.TrackHeaderBox", "java.util.Date", "modificationTime", "void"), 203);
        M = factory.e(factory.d("setTrackId", "com.coremedia.iso.boxes.TrackHeaderBox", "long", "trackId", "void"), Primes.SMALL_FACTOR_LIMIT);
        N = factory.e(factory.d("setDuration", "com.coremedia.iso.boxes.TrackHeaderBox", "long", "duration", "void"), 215);
        O = factory.e(factory.d("setLayer", "com.coremedia.iso.boxes.TrackHeaderBox", "int", "layer", "void"), 222);
        P = factory.e(factory.d("setAlternateGroup", "com.coremedia.iso.boxes.TrackHeaderBox", "int", "alternateGroup", "void"), 226);
        Q = factory.e(factory.d("setVolume", "com.coremedia.iso.boxes.TrackHeaderBox", "float", "volume", "void"), 230);
        R = factory.e(factory.d("setMatrix", "com.coremedia.iso.boxes.TrackHeaderBox", "com.googlecode.mp4parser.util.Matrix", "matrix", "void"), 234);
        A = factory.e(factory.d("getTrackId", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "long"), 68);
        S = factory.e(factory.d("setWidth", "com.coremedia.iso.boxes.TrackHeaderBox", "double", "width", "void"), 238);
        T = factory.e(factory.d("setHeight", "com.coremedia.iso.boxes.TrackHeaderBox", "double", "height", "void"), 242);
        V = factory.e(factory.d("isEnabled", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "boolean"), 247);
        W = factory.e(factory.d("isInMovie", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "boolean"), NSType.IXFR);
        X = factory.e(factory.d("isInPreview", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "boolean"), 255);
        Y = factory.e(factory.d("isInPoster", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "boolean"), 259);
        Z = factory.e(factory.d("setEnabled", "com.coremedia.iso.boxes.TrackHeaderBox", "boolean", "enabled", "void"), 263);
        h0 = factory.e(factory.d("setInMovie", "com.coremedia.iso.boxes.TrackHeaderBox", "boolean", "inMovie", "void"), 271);
        t0 = factory.e(factory.d("setInPreview", "com.coremedia.iso.boxes.TrackHeaderBox", "boolean", "inPreview", "void"), 279);
        b1 = factory.e(factory.d("setInPoster", "com.coremedia.iso.boxes.TrackHeaderBox", "boolean", "inPoster", "void"), 287);
        B = factory.e(factory.d("getDuration", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "long"), 72);
        C = factory.e(factory.d("getLayer", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "int"), 76);
        D = factory.e(factory.d("getAlternateGroup", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "int"), 80);
        E = factory.e(factory.d("getVolume", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "float"), 84);
        F = factory.e(factory.d("getMatrix", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "com.googlecode.mp4parser.util.Matrix"), 88);
        G = factory.e(factory.d("getWidth", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "double"), 92);
        H = factory.e(factory.d("getHeight", "com.coremedia.iso.boxes.TrackHeaderBox", "", "", "double"), 96);
    }

    public TrackHeaderBox() {
        super("tkhd");
        this.v = Matrix.f35737j;
    }

    @Override // com.googlecode.mp4parser.AbstractFullBox, com.googlecode.mp4parser.AbstractBox
    public final void a(ByteBuffer byteBuffer) {
        l(byteBuffer);
        if (k() == 1) {
            this.o = DateHelper.b(IsoTypeReader.i(byteBuffer));
            this.p = DateHelper.b(IsoTypeReader.i(byteBuffer));
            this.q = IsoTypeReader.h(byteBuffer);
            IsoTypeReader.h(byteBuffer);
            long j2 = byteBuffer.getLong();
            this.r = j2;
            if (j2 < -1) {
                v7.h("The tracks duration is bigger than Long.MAX_VALUE");
                return;
            }
        } else {
            this.o = DateHelper.b(IsoTypeReader.h(byteBuffer));
            this.p = DateHelper.b(IsoTypeReader.h(byteBuffer));
            this.q = IsoTypeReader.h(byteBuffer);
            IsoTypeReader.h(byteBuffer);
            this.r = IsoTypeReader.h(byteBuffer);
        }
        IsoTypeReader.h(byteBuffer);
        IsoTypeReader.h(byteBuffer);
        this.s = IsoTypeReader.f(byteBuffer);
        this.t = IsoTypeReader.f(byteBuffer);
        this.u = IsoTypeReader.e(byteBuffer);
        IsoTypeReader.f(byteBuffer);
        this.v = Matrix.a(byteBuffer);
        this.w = IsoTypeReader.d(byteBuffer);
        this.x = IsoTypeReader.d(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.AbstractFullBox, com.googlecode.mp4parser.AbstractBox
    public final void b(ByteBuffer byteBuffer) {
        JoinPoint joinPointC = Factory.c(I, this, this, byteBuffer);
        RequiresParseDetailAspect.a().getClass();
        RequiresParseDetailAspect.b(joinPointC);
        o(byteBuffer);
        int iK = k();
        Date date = this.o;
        if (iK == 1) {
            byteBuffer.putLong(DateHelper.a(date));
            byteBuffer.putLong(DateHelper.a(this.p));
            byteBuffer.putInt((int) this.q);
            byteBuffer.putInt(0);
            byteBuffer.putLong(this.r);
        } else {
            byteBuffer.putInt((int) DateHelper.a(date));
            byteBuffer.putInt((int) DateHelper.a(this.p));
            byteBuffer.putInt((int) this.q);
            byteBuffer.putInt(0);
            byteBuffer.putInt((int) this.r);
        }
        byteBuffer.putInt(0);
        byteBuffer.putInt(0);
        IsoTypeWriter.d(this.s, byteBuffer);
        IsoTypeWriter.d(this.t, byteBuffer);
        IsoTypeWriter.c(byteBuffer, this.u);
        IsoTypeWriter.d(0, byteBuffer);
        this.v.b(byteBuffer);
        IsoTypeWriter.b(byteBuffer, this.w);
        IsoTypeWriter.b(byteBuffer, this.x);
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    public final long f() {
        return (k() == 1 ? 36L : 24L) + 60;
    }

    public final String toString() {
        JoinPoint joinPointB = Factory.b(J, this, this);
        RequiresParseDetailAspect.a().getClass();
        RequiresParseDetailAspect.b(joinPointB);
        StringBuilder sb = new StringBuilder("TrackHeaderBox[creationTime=");
        tr.B(Factory.b(y, this, this));
        sb.append(this.o);
        sb.append(";modificationTime=");
        tr.B(Factory.b(z, this, this));
        sb.append(this.p);
        sb.append(";trackId=");
        tr.B(Factory.b(A, this, this));
        sb.append(this.q);
        sb.append(";duration=");
        tr.B(Factory.b(B, this, this));
        sb.append(this.r);
        sb.append(";layer=");
        tr.B(Factory.b(C, this, this));
        sb.append(this.s);
        sb.append(";alternateGroup=");
        tr.B(Factory.b(D, this, this));
        sb.append(this.t);
        sb.append(";volume=");
        tr.B(Factory.b(E, this, this));
        sb.append(this.u);
        sb.append(";matrix=");
        sb.append(this.v);
        sb.append(";width=");
        tr.B(Factory.b(G, this, this));
        sb.append(this.w);
        sb.append(";height=");
        tr.B(Factory.b(H, this, this));
        sb.append(this.x);
        sb.append("]");
        return sb.toString();
    }
}
