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
import java.util.WeakHashMap;
import org.aspectj.lang.JoinPoint;
import org.aspectj.runtime.reflect.Factory;

/* JADX INFO: loaded from: classes2.dex */
public class TimeToSampleBox extends AbstractFullBox {
    public static final /* synthetic */ JoinPoint.StaticPart p;
    public static final /* synthetic */ JoinPoint.StaticPart q;
    public static final /* synthetic */ JoinPoint.StaticPart r;
    public List o;

    public static class Entry {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f25325a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f25326b;

        public Entry(long j2, long j3) {
            this.f25325a = j2;
            this.f25326b = j3;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Entry{count=");
            sb.append(this.f25325a);
            sb.append(", delta=");
            return fc.k(sb, this.f25326b, '}');
        }
    }

    static {
        Factory factory = new Factory("TimeToSampleBox.java", TimeToSampleBox.class);
        p = factory.e(factory.d("getEntries", "com.coremedia.iso.boxes.TimeToSampleBox", "", "", "java.util.List"), 79);
        q = factory.e(factory.d("setEntries", "com.coremedia.iso.boxes.TimeToSampleBox", "java.util.List", "entries", "void"), 83);
        r = factory.e(factory.d("toString", "com.coremedia.iso.boxes.TimeToSampleBox", "", "", "java.lang.String"), 87);
        new WeakHashMap();
    }

    public TimeToSampleBox() {
        super("stts");
        this.o = Collections.EMPTY_LIST;
    }

    @Override // com.googlecode.mp4parser.AbstractFullBox, com.googlecode.mp4parser.AbstractBox
    public final void a(ByteBuffer byteBuffer) {
        l(byteBuffer);
        int iA = CastUtils.a(IsoTypeReader.h(byteBuffer));
        this.o = new ArrayList(iA);
        for (int i2 = 0; i2 < iA; i2++) {
            this.o.add(new Entry(IsoTypeReader.h(byteBuffer), IsoTypeReader.h(byteBuffer)));
        }
    }

    @Override // com.googlecode.mp4parser.AbstractFullBox, com.googlecode.mp4parser.AbstractBox
    public final void b(ByteBuffer byteBuffer) {
        o(byteBuffer);
        byteBuffer.putInt(this.o.size());
        for (Entry entry : this.o) {
            byteBuffer.putInt((int) entry.f25325a);
            byteBuffer.putInt((int) entry.f25326b);
        }
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    public final long f() {
        return (this.o.size() * 8) + 8;
    }

    public final String toString() {
        JoinPoint joinPointB = Factory.b(r, this, this);
        RequiresParseDetailAspect.a().getClass();
        RequiresParseDetailAspect.b(joinPointB);
        return "TimeToSampleBox[entryCount=" + this.o.size() + "]";
    }
}
