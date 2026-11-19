package com.coremedia.iso.boxes;

import com.batch.android.x0.h;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import com.googlecode.mp4parser.util.DateHelper;
import defpackage.fc;
import defpackage.md;
import defpackage.n00;
import defpackage.tr;
import java.nio.ByteBuffer;
import java.util.Date;
import org.aspectj.lang.JoinPoint;
import org.aspectj.runtime.reflect.Factory;

/* JADX INFO: loaded from: classes2.dex */
public class MediaHeaderBox extends AbstractFullBox {
    public static final /* synthetic */ JoinPoint.StaticPart A;
    public static final /* synthetic */ JoinPoint.StaticPart B;
    public static final /* synthetic */ JoinPoint.StaticPart C;
    public static final /* synthetic */ JoinPoint.StaticPart D;
    public static final /* synthetic */ JoinPoint.StaticPart t;
    public static final /* synthetic */ JoinPoint.StaticPart u;
    public static final /* synthetic */ JoinPoint.StaticPart v;
    public static final /* synthetic */ JoinPoint.StaticPart w;
    public static final /* synthetic */ JoinPoint.StaticPart x;
    public static final /* synthetic */ JoinPoint.StaticPart y;
    public static final /* synthetic */ JoinPoint.StaticPart z;
    public Date o;
    public Date p;
    public long q;
    public long r;
    public String s;

    static {
        Factory factory = new Factory("MediaHeaderBox.java", MediaHeaderBox.class);
        t = factory.e(factory.d("getCreationTime", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "java.util.Date"), 46);
        u = factory.e(factory.d("getModificationTime", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "java.util.Date"), 50);
        D = factory.e(factory.d("toString", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "java.lang.String"), 118);
        v = factory.e(factory.d("getTimescale", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "long"), 54);
        w = factory.e(factory.d("getDuration", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "long"), 58);
        x = factory.e(factory.d("getLanguage", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "java.lang.String"), 62);
        y = factory.e(factory.d("setCreationTime", "com.coremedia.iso.boxes.MediaHeaderBox", "java.util.Date", "creationTime", "void"), 79);
        z = factory.e(factory.d("setModificationTime", "com.coremedia.iso.boxes.MediaHeaderBox", "java.util.Date", "modificationTime", "void"), 83);
        A = factory.e(factory.d("setTimescale", "com.coremedia.iso.boxes.MediaHeaderBox", "long", "timescale", "void"), 87);
        B = factory.e(factory.d("setDuration", "com.coremedia.iso.boxes.MediaHeaderBox", "long", "duration", "void"), 91);
        C = factory.e(factory.d("setLanguage", "com.coremedia.iso.boxes.MediaHeaderBox", "java.lang.String", "language", "void"), 95);
    }

    public MediaHeaderBox() {
        super("mdhd");
        this.o = new Date();
        this.p = new Date();
        this.s = "eng";
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
        int iF = IsoTypeReader.f(byteBuffer);
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < 3; i2++) {
            sb.append((char) (((iF >> ((2 - i2) * 5)) & 31) + 96));
        }
        this.s = sb.toString();
        IsoTypeReader.f(byteBuffer);
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
        String str = this.s;
        if (str.getBytes().length != 3) {
            md.n(fc.h("\"", str, "\" language string isn't exactly 3 characters long!"));
            return;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < 3; i3++) {
            i2 += (str.getBytes()[i3] + h.a.d) << ((2 - i3) * 5);
        }
        IsoTypeWriter.d(i2, byteBuffer);
        IsoTypeWriter.d(0, byteBuffer);
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    public final long f() {
        return (k() == 1 ? 32L : 20L) + 4;
    }

    public final String toString() {
        JoinPoint joinPointB = Factory.b(D, this, this);
        RequiresParseDetailAspect.a().getClass();
        RequiresParseDetailAspect.b(joinPointB);
        StringBuilder sb = new StringBuilder("MediaHeaderBox[creationTime=");
        tr.B(Factory.b(t, this, this));
        sb.append(this.o);
        sb.append(";modificationTime=");
        tr.B(Factory.b(u, this, this));
        sb.append(this.p);
        sb.append(";timescale=");
        tr.B(Factory.b(v, this, this));
        sb.append(this.q);
        sb.append(";duration=");
        tr.B(Factory.b(w, this, this));
        sb.append(this.r);
        sb.append(";language=");
        tr.B(Factory.b(x, this, this));
        return n00.r(this.s, "]", sb);
    }
}
