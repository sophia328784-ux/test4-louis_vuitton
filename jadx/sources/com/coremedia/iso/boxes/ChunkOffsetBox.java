package com.coremedia.iso.boxes;

import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import defpackage.a;
import org.aspectj.lang.JoinPoint;
import org.aspectj.runtime.reflect.Factory;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ChunkOffsetBox extends AbstractFullBox {
    public static final /* synthetic */ JoinPoint.StaticPart o;

    static {
        Factory factory = new Factory("ChunkOffsetBox.java", ChunkOffsetBox.class);
        o = factory.e(factory.d("toString", "com.coremedia.iso.boxes.ChunkOffsetBox", "", "", "java.lang.String"), 18);
    }

    public ChunkOffsetBox(String str) {
        super(str);
    }

    public abstract long[] p();

    public final String toString() {
        JoinPoint joinPointB = Factory.b(o, this, this);
        RequiresParseDetailAspect.a().getClass();
        RequiresParseDetailAspect.b(joinPointB);
        StringBuilder sb = new StringBuilder(getClass().getSimpleName());
        sb.append("[entryCount=");
        return a.i(p().length, "]", sb);
    }
}
