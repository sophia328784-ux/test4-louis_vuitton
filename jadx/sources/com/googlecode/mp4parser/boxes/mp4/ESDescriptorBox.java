package com.googlecode.mp4parser.boxes.mp4;

import defpackage.tr;
import java.nio.ByteBuffer;
import org.aspectj.lang.JoinPoint;
import org.aspectj.runtime.reflect.Factory;

/* JADX INFO: loaded from: classes2.dex */
public class ESDescriptorBox extends AbstractDescriptorBox {
    public static final /* synthetic */ JoinPoint.StaticPart v;
    public static final /* synthetic */ JoinPoint.StaticPart w;
    public static final /* synthetic */ JoinPoint.StaticPart x;
    public static final /* synthetic */ JoinPoint.StaticPart y;

    static {
        Factory factory = new Factory("ESDescriptorBox.java", ESDescriptorBox.class);
        v = factory.e(factory.d("getEsDescriptor", "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox", "", "", "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.ESDescriptor"), 33);
        w = factory.e(factory.d("setEsDescriptor", "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox", "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.ESDescriptor", "esDescriptor", "void"), 37);
        x = factory.e(factory.d("equals", "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox", "java.lang.Object", "o", "boolean"), 42);
        y = factory.e(factory.d("hashCode", "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox", "", "", "int"), 53);
    }

    public ESDescriptorBox() {
        super("esds");
    }

    public final boolean equals(Object obj) {
        tr.B(Factory.c(x, this, this, obj));
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ByteBuffer byteBuffer = this.o;
        ByteBuffer byteBuffer2 = ((ESDescriptorBox) obj).o;
        if (byteBuffer != null) {
            return byteBuffer.equals(byteBuffer2);
        }
        return byteBuffer2 == null;
    }

    public final int hashCode() {
        tr.B(Factory.b(y, this, this));
        ByteBuffer byteBuffer = this.o;
        if (byteBuffer != null) {
            return byteBuffer.hashCode();
        }
        return 0;
    }
}
