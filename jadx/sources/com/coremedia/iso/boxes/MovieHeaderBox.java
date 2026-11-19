package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import com.googlecode.mp4parser.util.DateHelper;
import com.googlecode.mp4parser.util.Matrix;
import defpackage.o60;
import defpackage.tr;
import java.nio.ByteBuffer;
import java.util.Date;
import net.rtccloud.sdk.Sink;
import org.aspectj.lang.JoinPoint;
import org.aspectj.runtime.reflect.Factory;
import org.bouncycastle.math.Primes;

/* JADX INFO: loaded from: classes2.dex */
public class MovieHeaderBox extends AbstractFullBox {
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
    public static final /* synthetic */ JoinPoint.StaticPart c1;
    public static final /* synthetic */ JoinPoint.StaticPart d1;
    public static final /* synthetic */ JoinPoint.StaticPart e1;
    public static final /* synthetic */ JoinPoint.StaticPart h0;
    public static final /* synthetic */ JoinPoint.StaticPart t0;
    public int A;
    public int B;
    public Date o;
    public Date p;
    public long q;
    public long r;
    public double s;
    public float t;
    public Matrix u;
    public long v;
    public int w;
    public int x;
    public int y;
    public int z;

    static {
        Factory factory = new Factory("MovieHeaderBox.java", MovieHeaderBox.class);
        C = factory.e(factory.d("getCreationTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "java.util.Date"), 63);
        D = factory.e(factory.d("getModificationTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "java.util.Date"), 67);
        M = factory.e(factory.d("setModificationTime", "com.coremedia.iso.boxes.MovieHeaderBox", "java.util.Date", "modificationTime", "void"), 203);
        N = factory.e(factory.d("setTimescale", "com.coremedia.iso.boxes.MovieHeaderBox", "long", "timescale", "void"), Primes.SMALL_FACTOR_LIMIT);
        O = factory.e(factory.d("setDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "long", "duration", "void"), 215);
        P = factory.e(factory.d("setRate", "com.coremedia.iso.boxes.MovieHeaderBox", "double", "rate", "void"), 222);
        Q = factory.e(factory.d("setVolume", "com.coremedia.iso.boxes.MovieHeaderBox", "float", "volume", "void"), 226);
        R = factory.e(factory.d("setMatrix", "com.coremedia.iso.boxes.MovieHeaderBox", "com.googlecode.mp4parser.util.Matrix", "matrix", "void"), 230);
        S = factory.e(factory.d("setNextTrackId", "com.coremedia.iso.boxes.MovieHeaderBox", "long", "nextTrackId", "void"), 234);
        T = factory.e(factory.d("getPreviewTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "int"), 238);
        V = factory.e(factory.d("setPreviewTime", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "previewTime", "void"), 242);
        W = factory.e(factory.d("getPreviewDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "int"), 246);
        E = factory.e(factory.d("getTimescale", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "long"), 71);
        X = factory.e(factory.d("setPreviewDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "previewDuration", "void"), 250);
        Y = factory.e(factory.d("getPosterTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "int"), 254);
        Z = factory.e(factory.d("setPosterTime", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "posterTime", "void"), 258);
        h0 = factory.e(factory.d("getSelectionTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "int"), 262);
        t0 = factory.e(factory.d("setSelectionTime", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "selectionTime", "void"), 266);
        b1 = factory.e(factory.d("getSelectionDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "int"), Sink.ORIENTATION_270);
        c1 = factory.e(factory.d("setSelectionDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "selectionDuration", "void"), 274);
        d1 = factory.e(factory.d("getCurrentTime", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "int"), 278);
        e1 = factory.e(factory.d("setCurrentTime", "com.coremedia.iso.boxes.MovieHeaderBox", "int", "currentTime", "void"), 282);
        F = factory.e(factory.d("getDuration", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "long"), 75);
        G = factory.e(factory.d("getRate", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "double"), 79);
        H = factory.e(factory.d("getVolume", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "float"), 83);
        I = factory.e(factory.d("getMatrix", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "com.googlecode.mp4parser.util.Matrix"), 87);
        J = factory.e(factory.d("getNextTrackId", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "long"), 91);
        K = factory.e(factory.d("toString", "com.coremedia.iso.boxes.MovieHeaderBox", "", "", "java.lang.String"), 139);
        L = factory.e(factory.d("setCreationTime", "com.coremedia.iso.boxes.MovieHeaderBox", "java.util.Date", "creationTime", "void"), 195);
    }

    public MovieHeaderBox() {
        super("mvhd");
        this.s = 1.0d;
        this.t = 1.0f;
        this.u = Matrix.f35737j;
    }

    @Override // com.googlecode.mp4parser.AbstractFullBox, com.googlecode.mp4parser.AbstractBox
    public final void a(ByteBuffer byteBuffer) {
        l(byteBuffer);
        if (k() == 1) {
            this.o = DateHelper.b(IsoTypeReader.i(byteBuffer));
            this.p = DateHelper.b(IsoTypeReader.i(byteBuffer));
            this.q = IsoTypeReader.h(byteBuffer);
            this.r = IsoTypeReader.i(byteBuffer);
        } else {
            this.o = DateHelper.b(IsoTypeReader.h(byteBuffer));
            this.p = DateHelper.b(IsoTypeReader.h(byteBuffer));
            this.q = IsoTypeReader.h(byteBuffer);
            this.r = IsoTypeReader.h(byteBuffer);
        }
        this.s = IsoTypeReader.d(byteBuffer);
        this.t = IsoTypeReader.e(byteBuffer);
        IsoTypeReader.f(byteBuffer);
        IsoTypeReader.h(byteBuffer);
        IsoTypeReader.h(byteBuffer);
        this.u = Matrix.a(byteBuffer);
        this.w = byteBuffer.getInt();
        this.x = byteBuffer.getInt();
        this.y = byteBuffer.getInt();
        this.z = byteBuffer.getInt();
        this.A = byteBuffer.getInt();
        this.B = byteBuffer.getInt();
        this.v = IsoTypeReader.h(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.AbstractFullBox, com.googlecode.mp4parser.AbstractBox
    public final void b(ByteBuffer byteBuffer) {
        o(byteBuffer);
        int iK = k();
        Date date = this.o;
        if (iK == 1) {
            byteBuffer.putLong(DateHelper.a(date));
            byteBuffer.putLong(DateHelper.a(this.p));
            byteBuffer.putInt((int) this.q);
            byteBuffer.putLong(this.r);
        } else {
            byteBuffer.putInt((int) DateHelper.a(date));
            byteBuffer.putInt((int) DateHelper.a(this.p));
            byteBuffer.putInt((int) this.q);
            byteBuffer.putInt((int) this.r);
        }
        IsoTypeWriter.b(byteBuffer, this.s);
        IsoTypeWriter.c(byteBuffer, this.t);
        IsoTypeWriter.d(0, byteBuffer);
        byteBuffer.putInt(0);
        byteBuffer.putInt(0);
        this.u.b(byteBuffer);
        byteBuffer.putInt(this.w);
        byteBuffer.putInt(this.x);
        byteBuffer.putInt(this.y);
        byteBuffer.putInt(this.z);
        byteBuffer.putInt(this.A);
        byteBuffer.putInt(this.B);
        byteBuffer.putInt((int) this.v);
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    public final long f() {
        return (k() == 1 ? 32L : 20L) + 80;
    }

    public final String toString() {
        JoinPoint joinPointB = Factory.b(K, this, this);
        RequiresParseDetailAspect.a().getClass();
        RequiresParseDetailAspect.b(joinPointB);
        StringBuilder sb = new StringBuilder("MovieHeaderBox[creationTime=");
        tr.B(Factory.b(C, this, this));
        sb.append(this.o);
        sb.append(";modificationTime=");
        tr.B(Factory.b(D, this, this));
        sb.append(this.p);
        sb.append(";timescale=");
        tr.B(Factory.b(E, this, this));
        sb.append(this.q);
        sb.append(";duration=");
        tr.B(Factory.b(F, this, this));
        sb.append(this.r);
        sb.append(";rate=");
        tr.B(Factory.b(G, this, this));
        sb.append(this.s);
        sb.append(";volume=");
        tr.B(Factory.b(H, this, this));
        sb.append(this.t);
        sb.append(";matrix=");
        sb.append(this.u);
        sb.append(";nextTrackId=");
        tr.B(Factory.b(J, this, this));
        return o60.j(this.v, "]", sb);
    }
}
