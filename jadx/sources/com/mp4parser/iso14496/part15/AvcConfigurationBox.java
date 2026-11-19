package com.mp4parser.iso14496.part15;

import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BitWriterBuffer;
import defpackage.tr;
import java.nio.ByteBuffer;
import java.util.Iterator;
import org.aspectj.lang.JoinPoint;
import org.aspectj.runtime.reflect.Factory;

/* JADX INFO: loaded from: classes2.dex */
public final class AvcConfigurationBox extends AbstractBox {
    public static final /* synthetic */ JoinPoint.StaticPart A;
    public static final /* synthetic */ JoinPoint.StaticPart B;
    public static final /* synthetic */ JoinPoint.StaticPart C;
    public static final /* synthetic */ JoinPoint.StaticPart D;
    public static final /* synthetic */ JoinPoint.StaticPart E;
    public static final /* synthetic */ JoinPoint.StaticPart F;
    public static final /* synthetic */ JoinPoint.StaticPart G;
    public static final /* synthetic */ JoinPoint.StaticPart H;
    public static final /* synthetic */ JoinPoint.StaticPart I;
    public static final /* synthetic */ JoinPoint.StaticPart J;
    public static final /* synthetic */ JoinPoint.StaticPart K;
    public static final /* synthetic */ JoinPoint.StaticPart L;
    public static final /* synthetic */ JoinPoint.StaticPart M;
    public static final /* synthetic */ JoinPoint.StaticPart N;
    public static final /* synthetic */ JoinPoint.StaticPart O;
    public static final /* synthetic */ JoinPoint.StaticPart l;
    public static final /* synthetic */ JoinPoint.StaticPart m;
    public static final /* synthetic */ JoinPoint.StaticPart n;
    public static final /* synthetic */ JoinPoint.StaticPart o;
    public static final /* synthetic */ JoinPoint.StaticPart p;
    public static final /* synthetic */ JoinPoint.StaticPart q;
    public static final /* synthetic */ JoinPoint.StaticPart r;
    public static final /* synthetic */ JoinPoint.StaticPart s;
    public static final /* synthetic */ JoinPoint.StaticPart t;
    public static final /* synthetic */ JoinPoint.StaticPart u;
    public static final /* synthetic */ JoinPoint.StaticPart v;
    public static final /* synthetic */ JoinPoint.StaticPart w;
    public static final /* synthetic */ JoinPoint.StaticPart x;
    public static final /* synthetic */ JoinPoint.StaticPart y;
    public static final /* synthetic */ JoinPoint.StaticPart z;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public AvcDecoderConfigurationRecord f36374k;

    static {
        Factory factory = new Factory("AvcConfigurationBox.java", AvcConfigurationBox.class);
        l = factory.e(factory.d("getConfigurationVersion", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "int"), 44);
        m = factory.e(factory.d("getAvcProfileIndication", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "int"), 48);
        v = factory.e(factory.d("setAvcLevelIndication", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "avcLevelIndication", "void"), 84);
        w = factory.e(factory.d("setLengthSizeMinusOne", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "lengthSizeMinusOne", "void"), 88);
        x = factory.e(factory.d("setSequenceParameterSets", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "java.util.List", "sequenceParameterSets", "void"), 92);
        y = factory.e(factory.d("setPictureParameterSets", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "java.util.List", "pictureParameterSets", "void"), 96);
        z = factory.e(factory.d("getChromaFormat", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "int"), 100);
        A = factory.e(factory.d("setChromaFormat", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "chromaFormat", "void"), 104);
        B = factory.e(factory.d("getBitDepthLumaMinus8", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "int"), 108);
        C = factory.e(factory.d("setBitDepthLumaMinus8", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "bitDepthLumaMinus8", "void"), 112);
        D = factory.e(factory.d("getBitDepthChromaMinus8", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "int"), 116);
        E = factory.e(factory.d("setBitDepthChromaMinus8", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "bitDepthChromaMinus8", "void"), 120);
        n = factory.e(factory.d("getProfileCompatibility", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "int"), 52);
        F = factory.e(factory.d("getSequenceParameterSetExts", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "java.util.List"), 124);
        G = factory.e(factory.d("setSequenceParameterSetExts", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "java.util.List", "sequenceParameterSetExts", "void"), 128);
        H = factory.e(factory.d("hasExts", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "boolean"), 132);
        I = factory.e(factory.d("setHasExts", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "boolean", "hasExts", "void"), 136);
        J = factory.e(factory.d("getContentSize", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "long"), 147);
        K = factory.e(factory.d("getContent", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "java.nio.ByteBuffer", "byteBuffer", "void"), 153);
        L = factory.e(factory.d("getSPS", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "[Ljava.lang.String;"), 158);
        M = factory.e(factory.d("getPPS", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "[Ljava.lang.String;"), 162);
        N = factory.e(factory.d("getavcDecoderConfigurationRecord", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "com.mp4parser.iso14496.part15.AvcDecoderConfigurationRecord"), 167);
        O = factory.e(factory.d("toString", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "java.lang.String"), 172);
        o = factory.e(factory.d("getAvcLevelIndication", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "int"), 56);
        p = factory.e(factory.d("getLengthSizeMinusOne", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "int"), 60);
        q = factory.e(factory.d("getSequenceParameterSets", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "java.util.List"), 64);
        r = factory.e(factory.d("getPictureParameterSets", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "java.util.List"), 68);
        s = factory.e(factory.d("setConfigurationVersion", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "configurationVersion", "void"), 72);
        t = factory.e(factory.d("setAvcProfileIndication", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "avcProfileIndication", "void"), 76);
        u = factory.e(factory.d("setProfileCompatibility", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "profileCompatibility", "void"), 80);
    }

    public AvcConfigurationBox() {
        super("avcC");
        this.f36374k = new AvcDecoderConfigurationRecord();
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    public final void a(ByteBuffer byteBuffer) {
        this.f36374k = new AvcDecoderConfigurationRecord(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    public final void b(ByteBuffer byteBuffer) {
        tr.B(Factory.c(K, this, this, byteBuffer));
        AvcDecoderConfigurationRecord avcDecoderConfigurationRecord = this.f36374k;
        IsoTypeWriter.f(avcDecoderConfigurationRecord.f36375a, byteBuffer);
        byteBuffer.put((byte) (avcDecoderConfigurationRecord.f36376b & 255));
        byteBuffer.put((byte) (avcDecoderConfigurationRecord.f36377c & 255));
        byteBuffer.put((byte) (avcDecoderConfigurationRecord.d & 255));
        BitWriterBuffer bitWriterBuffer = new BitWriterBuffer(byteBuffer);
        bitWriterBuffer.a(avcDecoderConfigurationRecord.m, 6);
        bitWriterBuffer.a(avcDecoderConfigurationRecord.f36378e, 2);
        bitWriterBuffer.a(avcDecoderConfigurationRecord.n, 3);
        bitWriterBuffer.a(avcDecoderConfigurationRecord.g.size(), 5);
        for (byte[] bArr : avcDecoderConfigurationRecord.f36379f) {
            IsoTypeWriter.d(bArr.length, byteBuffer);
            byteBuffer.put(bArr);
        }
        byteBuffer.put((byte) (avcDecoderConfigurationRecord.g.size() & 255));
        for (byte[] bArr2 : avcDecoderConfigurationRecord.g) {
            IsoTypeWriter.d(bArr2.length, byteBuffer);
            byteBuffer.put(bArr2);
        }
        if (avcDecoderConfigurationRecord.f36380h) {
            int i2 = avcDecoderConfigurationRecord.f36376b;
            if (i2 == 100 || i2 == 110 || i2 == 122 || i2 == 144) {
                BitWriterBuffer bitWriterBuffer2 = new BitWriterBuffer(byteBuffer);
                bitWriterBuffer2.a(avcDecoderConfigurationRecord.o, 6);
                bitWriterBuffer2.a(avcDecoderConfigurationRecord.f36381i, 2);
                bitWriterBuffer2.a(avcDecoderConfigurationRecord.p, 5);
                bitWriterBuffer2.a(avcDecoderConfigurationRecord.f36382j, 3);
                bitWriterBuffer2.a(avcDecoderConfigurationRecord.q, 5);
                bitWriterBuffer2.a(avcDecoderConfigurationRecord.f36383k, 3);
                for (byte[] bArr3 : avcDecoderConfigurationRecord.l) {
                    IsoTypeWriter.d(bArr3.length, byteBuffer);
                    byteBuffer.put(bArr3);
                }
            }
        }
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    public final long f() {
        int i2;
        tr.B(Factory.b(J, this, this));
        AvcDecoderConfigurationRecord avcDecoderConfigurationRecord = this.f36374k;
        Iterator it = avcDecoderConfigurationRecord.f36379f.iterator();
        long length = 6;
        while (it.hasNext()) {
            length = length + 2 + ((long) ((byte[]) it.next()).length);
        }
        long length2 = length + 1;
        Iterator it2 = avcDecoderConfigurationRecord.g.iterator();
        while (it2.hasNext()) {
            length2 = length2 + 2 + ((long) ((byte[]) it2.next()).length);
        }
        if (!avcDecoderConfigurationRecord.f36380h || ((i2 = avcDecoderConfigurationRecord.f36376b) != 100 && i2 != 110 && i2 != 122 && i2 != 144)) {
            return length2;
        }
        long length3 = length2 + 4;
        Iterator it3 = avcDecoderConfigurationRecord.l.iterator();
        while (it3.hasNext()) {
            length3 = length3 + 2 + ((long) ((byte[]) it3.next()).length);
        }
        return length3;
    }

    public final String toString() {
        JoinPoint joinPointB = Factory.b(O, this, this);
        RequiresParseDetailAspect.a().getClass();
        RequiresParseDetailAspect.b(joinPointB);
        return "AvcConfigurationBox{avcDecoderConfigurationRecord=" + this.f36374k + '}';
    }
}
