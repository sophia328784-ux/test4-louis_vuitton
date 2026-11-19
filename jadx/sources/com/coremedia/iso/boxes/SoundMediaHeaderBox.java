package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import defpackage.d21;
import defpackage.tr;
import java.nio.ByteBuffer;
import org.aspectj.lang.JoinPoint;
import org.aspectj.runtime.reflect.Factory;

/* JADX INFO: loaded from: classes2.dex */
public class SoundMediaHeaderBox extends AbstractMediaHeaderBox {
    public static final /* synthetic */ JoinPoint.StaticPart p;
    public static final /* synthetic */ JoinPoint.StaticPart q;
    public float o;

    static {
        Factory factory = new Factory("SoundMediaHeaderBox.java", SoundMediaHeaderBox.class);
        p = factory.e(factory.d("getBalance", "com.coremedia.iso.boxes.SoundMediaHeaderBox", "", "", "float"), 36);
        q = factory.e(factory.d("toString", "com.coremedia.iso.boxes.SoundMediaHeaderBox", "", "", "java.lang.String"), 58);
    }

    public SoundMediaHeaderBox() {
        super("smhd");
    }

    @Override // com.googlecode.mp4parser.AbstractFullBox, com.googlecode.mp4parser.AbstractBox
    public final void a(ByteBuffer byteBuffer) {
        l(byteBuffer);
        this.o = IsoTypeReader.e(byteBuffer);
        IsoTypeReader.f(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.AbstractFullBox, com.googlecode.mp4parser.AbstractBox
    public final void b(ByteBuffer byteBuffer) {
        o(byteBuffer);
        IsoTypeWriter.c(byteBuffer, this.o);
        IsoTypeWriter.d(0, byteBuffer);
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    public final long f() {
        return 8L;
    }

    public final String toString() {
        JoinPoint joinPointB = Factory.b(q, this, this);
        RequiresParseDetailAspect.a().getClass();
        RequiresParseDetailAspect.b(joinPointB);
        StringBuilder sb = new StringBuilder("SoundMediaHeaderBox[balance=");
        tr.B(Factory.b(p, this, this));
        return d21.e(this.o, "]", sb);
    }
}
