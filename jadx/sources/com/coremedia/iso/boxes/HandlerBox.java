package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.Utf8;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.aspectj.lang.JoinPoint;
import org.aspectj.runtime.reflect.Factory;

/* JADX INFO: loaded from: classes2.dex */
public class HandlerBox extends AbstractFullBox {
    public static final /* synthetic */ JoinPoint.StaticPart A;
    public static final /* synthetic */ JoinPoint.StaticPart B;
    public static final Map v;
    public static final /* synthetic */ JoinPoint.StaticPart w;
    public static final /* synthetic */ JoinPoint.StaticPart x;
    public static final /* synthetic */ JoinPoint.StaticPart y;
    public static final /* synthetic */ JoinPoint.StaticPart z;
    public String o;
    public String p;
    public long q;
    public long r;
    public long s;
    public boolean t;
    public long u;

    static {
        Factory factory = new Factory("HandlerBox.java", HandlerBox.class);
        w = factory.e(factory.d("getHandlerType", "com.coremedia.iso.boxes.HandlerBox", "", "", "java.lang.String"), 78);
        x = factory.e(factory.d("setName", "com.coremedia.iso.boxes.HandlerBox", "java.lang.String", "name", "void"), 87);
        y = factory.e(factory.d("setHandlerType", "com.coremedia.iso.boxes.HandlerBox", "java.lang.String", "handlerType", "void"), 91);
        z = factory.e(factory.d("getName", "com.coremedia.iso.boxes.HandlerBox", "", "", "java.lang.String"), 95);
        A = factory.e(factory.d("getHumanReadableTrackType", "com.coremedia.iso.boxes.HandlerBox", "", "", "java.lang.String"), 99);
        B = factory.e(factory.d("toString", "com.coremedia.iso.boxes.HandlerBox", "", "", "java.lang.String"), 149);
        HashMap map = new HashMap();
        map.put("odsm", "ObjectDescriptorStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        map.put("crsm", "ClockReferenceStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        map.put("sdsm", "SceneDescriptionStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        map.put("m7sm", "MPEG7Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        map.put("ocsm", "ObjectContentInfoStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        map.put("ipsm", "IPMP Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        map.put("mjsm", "MPEG-J Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        map.put("mdir", "Apple Meta Data iTunes Reader");
        map.put("mp7b", "MPEG-7 binary XML");
        map.put("mp7t", "MPEG-7 XML");
        map.put("vide", "Video Track");
        map.put("soun", "Sound Track");
        map.put("hint", "Hint Track");
        map.put("appl", "Apple specific");
        map.put("meta", "Timed Metadata track - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        v = Collections.unmodifiableMap(map);
    }

    public HandlerBox() {
        super("hdlr");
        this.p = null;
        this.t = true;
    }

    @Override // com.googlecode.mp4parser.AbstractFullBox, com.googlecode.mp4parser.AbstractBox
    public final void a(ByteBuffer byteBuffer) {
        l(byteBuffer);
        this.u = IsoTypeReader.h(byteBuffer);
        this.o = IsoTypeReader.b(byteBuffer);
        this.q = IsoTypeReader.h(byteBuffer);
        this.r = IsoTypeReader.h(byteBuffer);
        this.s = IsoTypeReader.h(byteBuffer);
        if (byteBuffer.remaining() <= 0) {
            this.t = false;
            return;
        }
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr);
        try {
            String str = new String(bArr, "UTF-8");
            this.p = str;
            if (!str.endsWith("\u0000")) {
                this.t = false;
            } else {
                this.p = o60.g(1, 0, this.p);
                this.t = true;
            }
        } catch (UnsupportedEncodingException e2) {
            throw new Error(e2);
        }
    }

    @Override // com.googlecode.mp4parser.AbstractFullBox, com.googlecode.mp4parser.AbstractBox
    public final void b(ByteBuffer byteBuffer) {
        o(byteBuffer);
        byteBuffer.putInt((int) this.u);
        byteBuffer.put(IsoFile.n(this.o));
        byteBuffer.putInt((int) this.q);
        byteBuffer.putInt((int) this.r);
        byteBuffer.putInt((int) this.s);
        String str = this.p;
        if (str != null) {
            byteBuffer.put(Utf8.a(str));
        }
        if (this.t) {
            byteBuffer.put((byte) 0);
        }
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    public final long f() {
        boolean z2 = this.t;
        String str = this.p;
        return z2 ? Utf8.b(str) + 25 : Utf8.b(str) + 24;
    }

    public final String toString() {
        JoinPoint joinPointB = Factory.b(B, this, this);
        RequiresParseDetailAspect.a().getClass();
        RequiresParseDetailAspect.b(joinPointB);
        StringBuilder sb = new StringBuilder("HandlerBox[handlerType=");
        tr.B(Factory.b(w, this, this));
        sb.append(this.o);
        sb.append(";name=");
        tr.B(Factory.b(z, this, this));
        return n00.r(this.p, "]", sb);
    }
}
