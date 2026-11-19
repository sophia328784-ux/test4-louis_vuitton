package com.googlecode.mp4parser;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.boxes.FullBox;
import defpackage.tr;
import java.nio.ByteBuffer;
import org.aspectj.lang.JoinPoint;
import org.aspectj.runtime.reflect.Factory;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractFullBox extends AbstractBox implements FullBox {
    public static final /* synthetic */ JoinPoint.StaticPart m;
    public static final /* synthetic */ JoinPoint.StaticPart n;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f35692k;
    public int l;

    static {
        Factory factory = new Factory("AbstractFullBox.java", AbstractFullBox.class);
        m = factory.e(factory.d("setVersion", "com.googlecode.mp4parser.AbstractFullBox", "int", "version", "void"), 51);
        n = factory.e(factory.d("setFlags", "com.googlecode.mp4parser.AbstractFullBox", "int", "flags", "void"), 64);
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    public void a(ByteBuffer byteBuffer) {
        l(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    public void b(ByteBuffer byteBuffer) {
        o(byteBuffer);
    }

    public final int k() {
        if (!this.f35685c) {
            i();
        }
        return this.f35692k;
    }

    public final void l(ByteBuffer byteBuffer) {
        this.f35692k = IsoTypeReader.j(byteBuffer);
        this.l = IsoTypeReader.g(byteBuffer);
    }

    public final void m(int i2) {
        tr.B(Factory.c(n, this, this, new Integer(i2)));
        this.l = i2;
    }

    public final void n() {
        tr.B(Factory.c(m, this, this, new Integer(1)));
        this.f35692k = 1;
    }

    public final void o(ByteBuffer byteBuffer) {
        IsoTypeWriter.f(this.f35692k, byteBuffer);
        IsoTypeWriter.e(this.l, byteBuffer);
    }
}
