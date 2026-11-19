package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import com.googlecode.mp4parser.util.CastUtils;
import defpackage.a;
import java.nio.ByteBuffer;
import org.aspectj.lang.JoinPoint;
import org.aspectj.runtime.reflect.Factory;

/* JADX INFO: loaded from: classes2.dex */
public class SyncSampleBox extends AbstractFullBox {
    public static final /* synthetic */ JoinPoint.StaticPart p;
    public static final /* synthetic */ JoinPoint.StaticPart q;
    public static final /* synthetic */ JoinPoint.StaticPart r;
    public long[] o;

    static {
        Factory factory = new Factory("SyncSampleBox.java", SyncSampleBox.class);
        p = factory.e(factory.d("getSampleNumber", "com.coremedia.iso.boxes.SyncSampleBox", "", "", "[J"), 46);
        q = factory.e(factory.d("toString", "com.coremedia.iso.boxes.SyncSampleBox", "", "", "java.lang.String"), 77);
        r = factory.e(factory.d("setSampleNumber", "com.coremedia.iso.boxes.SyncSampleBox", "[J", "sampleNumber", "void"), 81);
    }

    public SyncSampleBox() {
        super("stss");
    }

    @Override // com.googlecode.mp4parser.AbstractFullBox, com.googlecode.mp4parser.AbstractBox
    public final void a(ByteBuffer byteBuffer) {
        l(byteBuffer);
        int iA = CastUtils.a(IsoTypeReader.h(byteBuffer));
        this.o = new long[iA];
        for (int i2 = 0; i2 < iA; i2++) {
            this.o[i2] = IsoTypeReader.h(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.AbstractFullBox, com.googlecode.mp4parser.AbstractBox
    public final void b(ByteBuffer byteBuffer) {
        o(byteBuffer);
        byteBuffer.putInt(this.o.length);
        for (long j2 : this.o) {
            byteBuffer.putInt((int) j2);
        }
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    public final long f() {
        return (this.o.length * 4) + 8;
    }

    public final String toString() {
        JoinPoint joinPointB = Factory.b(q, this, this);
        RequiresParseDetailAspect.a().getClass();
        RequiresParseDetailAspect.b(joinPointB);
        return a.i(this.o.length, "]", new StringBuilder("SyncSampleBox[entryCount="));
    }
}
