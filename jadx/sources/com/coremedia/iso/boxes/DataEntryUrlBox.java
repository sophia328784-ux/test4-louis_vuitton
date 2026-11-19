package com.coremedia.iso.boxes;

import com.googlecode.mp4parser.AbstractFullBox;
import defpackage.tr;
import org.aspectj.lang.JoinPoint;
import org.aspectj.runtime.reflect.Factory;

/* JADX INFO: loaded from: classes2.dex */
public class DataEntryUrlBox extends AbstractFullBox {
    public static final /* synthetic */ JoinPoint.StaticPart o;

    static {
        Factory factory = new Factory("DataEntryUrlBox.java", DataEntryUrlBox.class);
        o = factory.e(factory.d("toString", "com.coremedia.iso.boxes.DataEntryUrlBox", "", "", "java.lang.String"), 51);
    }

    public DataEntryUrlBox() {
        super("url ");
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    public final long f() {
        return 4L;
    }

    public final String toString() {
        tr.B(Factory.b(o, this, this));
        return "DataEntryUrlBox[]";
    }
}
