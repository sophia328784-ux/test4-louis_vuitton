package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.googlecode.mp4parser.util.CastUtils;
import defpackage.tr;
import java.nio.ByteBuffer;
import org.aspectj.lang.JoinPoint;
import org.aspectj.runtime.reflect.Factory;

/* JADX INFO: loaded from: classes2.dex */
public class StaticChunkOffsetBox extends ChunkOffsetBox {
    public static final /* synthetic */ JoinPoint.StaticPart q;
    public static final /* synthetic */ JoinPoint.StaticPart r;
    public long[] p;

    static {
        Factory factory = new Factory("StaticChunkOffsetBox.java", StaticChunkOffsetBox.class);
        q = factory.e(factory.d("getChunkOffsets", "com.coremedia.iso.boxes.StaticChunkOffsetBox", "", "", "[J"), 39);
        r = factory.e(factory.d("setChunkOffsets", "com.coremedia.iso.boxes.StaticChunkOffsetBox", "[J", "chunkOffsets", "void"), 48);
    }

    public StaticChunkOffsetBox() {
        super("stco");
        this.p = new long[0];
    }

    @Override // com.googlecode.mp4parser.AbstractFullBox, com.googlecode.mp4parser.AbstractBox
    public final void a(ByteBuffer byteBuffer) {
        l(byteBuffer);
        int iA = CastUtils.a(IsoTypeReader.h(byteBuffer));
        this.p = new long[iA];
        for (int i2 = 0; i2 < iA; i2++) {
            this.p[i2] = IsoTypeReader.h(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.AbstractFullBox, com.googlecode.mp4parser.AbstractBox
    public final void b(ByteBuffer byteBuffer) {
        o(byteBuffer);
        byteBuffer.putInt(this.p.length);
        for (long j2 : this.p) {
            byteBuffer.putInt((int) j2);
        }
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    public final long f() {
        return (this.p.length * 4) + 8;
    }

    @Override // com.coremedia.iso.boxes.ChunkOffsetBox
    public final long[] p() {
        tr.B(Factory.b(q, this, this));
        return this.p;
    }
}
