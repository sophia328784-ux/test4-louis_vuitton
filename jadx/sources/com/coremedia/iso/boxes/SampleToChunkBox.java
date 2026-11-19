package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import com.googlecode.mp4parser.util.CastUtils;
import defpackage.fc;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.aspectj.lang.JoinPoint;
import org.aspectj.runtime.reflect.Factory;

/* JADX INFO: loaded from: classes2.dex */
public class SampleToChunkBox extends AbstractFullBox {
    public static final /* synthetic */ JoinPoint.StaticPart p;
    public static final /* synthetic */ JoinPoint.StaticPart q;
    public static final /* synthetic */ JoinPoint.StaticPart r;
    public static final /* synthetic */ JoinPoint.StaticPart s;
    public List o;

    public static class Entry {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f25322a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f25323b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f25324c;

        public Entry(long j2, long j3, long j4) {
            this.f25322a = j2;
            this.f25323b = j3;
            this.f25324c = j4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Entry entry = (Entry) obj;
            return this.f25322a == entry.f25322a && this.f25324c == entry.f25324c && this.f25323b == entry.f25323b;
        }

        public final int hashCode() {
            long j2 = this.f25322a;
            long j3 = this.f25323b;
            int i2 = ((((int) (j2 ^ (j2 >>> 32))) * 31) + ((int) (j3 ^ (j3 >>> 32)))) * 31;
            long j4 = this.f25324c;
            return i2 + ((int) ((j4 >>> 32) ^ j4));
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Entry{firstChunk=");
            sb.append(this.f25322a);
            sb.append(", samplesPerChunk=");
            sb.append(this.f25323b);
            sb.append(", sampleDescriptionIndex=");
            return fc.k(sb, this.f25324c, '}');
        }
    }

    static {
        Factory factory = new Factory("SampleToChunkBox.java", SampleToChunkBox.class);
        p = factory.e(factory.d("getEntries", "com.coremedia.iso.boxes.SampleToChunkBox", "", "", "java.util.List"), 47);
        q = factory.e(factory.d("setEntries", "com.coremedia.iso.boxes.SampleToChunkBox", "java.util.List", "entries", "void"), 51);
        r = factory.e(factory.d("toString", "com.coremedia.iso.boxes.SampleToChunkBox", "", "", "java.lang.String"), 84);
        s = factory.e(factory.d("blowup", "com.coremedia.iso.boxes.SampleToChunkBox", "int", "chunkCount", "[J"), 95);
    }

    public SampleToChunkBox() {
        super("stsc");
        this.o = Collections.EMPTY_LIST;
    }

    @Override // com.googlecode.mp4parser.AbstractFullBox, com.googlecode.mp4parser.AbstractBox
    public final void a(ByteBuffer byteBuffer) {
        l(byteBuffer);
        int iA = CastUtils.a(IsoTypeReader.h(byteBuffer));
        this.o = new ArrayList(iA);
        for (int i2 = 0; i2 < iA; i2++) {
            this.o.add(new Entry(IsoTypeReader.h(byteBuffer), IsoTypeReader.h(byteBuffer), IsoTypeReader.h(byteBuffer)));
        }
    }

    @Override // com.googlecode.mp4parser.AbstractFullBox, com.googlecode.mp4parser.AbstractBox
    public final void b(ByteBuffer byteBuffer) {
        o(byteBuffer);
        byteBuffer.putInt(this.o.size());
        for (Entry entry : this.o) {
            byteBuffer.putInt((int) entry.f25322a);
            byteBuffer.putInt((int) entry.f25323b);
            byteBuffer.putInt((int) entry.f25324c);
        }
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    public final long f() {
        return (this.o.size() * 12) + 8;
    }

    public final String toString() {
        JoinPoint joinPointB = Factory.b(r, this, this);
        RequiresParseDetailAspect.a().getClass();
        RequiresParseDetailAspect.b(joinPointB);
        return "SampleToChunkBox[entryCount=" + this.o.size() + "]";
    }
}
