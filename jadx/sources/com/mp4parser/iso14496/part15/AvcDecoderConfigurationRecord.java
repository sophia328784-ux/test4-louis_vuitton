package com.mp4parser.iso14496.part15;

import com.coremedia.iso.IsoTypeReader;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BitReaderBuffer;
import defpackage.tr;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class AvcDecoderConfigurationRecord {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f36375a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f36376b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f36377c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f36378e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ArrayList f36379f;
    public ArrayList g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f36380h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f36381i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f36382j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f36383k;
    public final ArrayList l;
    public final int m;
    public final int n;
    public final int o;
    public final int p;
    public final int q;

    public AvcDecoderConfigurationRecord(ByteBuffer byteBuffer) {
        int i2;
        this.f36379f = new ArrayList();
        this.g = new ArrayList();
        this.f36380h = true;
        this.f36381i = 1;
        this.f36382j = 0;
        this.f36383k = 0;
        this.l = new ArrayList();
        this.m = 63;
        this.n = 7;
        this.o = 31;
        this.p = 31;
        this.q = 31;
        this.f36375a = IsoTypeReader.j(byteBuffer);
        this.f36376b = IsoTypeReader.a(byteBuffer.get());
        this.f36377c = IsoTypeReader.a(byteBuffer.get());
        this.d = IsoTypeReader.a(byteBuffer.get());
        BitReaderBuffer bitReaderBuffer = new BitReaderBuffer(byteBuffer);
        this.m = bitReaderBuffer.a(6);
        this.f36378e = bitReaderBuffer.a(2);
        this.n = bitReaderBuffer.a(3);
        int iA = bitReaderBuffer.a(5);
        for (int i3 = 0; i3 < iA; i3++) {
            byte[] bArr = new byte[IsoTypeReader.f(byteBuffer)];
            byteBuffer.get(bArr);
            this.f36379f.add(bArr);
        }
        long jA = IsoTypeReader.a(byteBuffer.get());
        for (int i4 = 0; i4 < jA; i4++) {
            byte[] bArr2 = new byte[IsoTypeReader.f(byteBuffer)];
            byteBuffer.get(bArr2);
            this.g.add(bArr2);
        }
        if (byteBuffer.remaining() < 4) {
            this.f36380h = false;
        }
        if (!this.f36380h || ((i2 = this.f36376b) != 100 && i2 != 110 && i2 != 122 && i2 != 144)) {
            this.f36381i = -1;
            this.f36382j = -1;
            this.f36383k = -1;
            return;
        }
        BitReaderBuffer bitReaderBuffer2 = new BitReaderBuffer(byteBuffer);
        this.o = bitReaderBuffer2.a(6);
        this.f36381i = bitReaderBuffer2.a(2);
        this.p = bitReaderBuffer2.a(5);
        this.f36382j = bitReaderBuffer2.a(3);
        this.q = bitReaderBuffer2.a(5);
        this.f36383k = bitReaderBuffer2.a(3);
        long jA2 = IsoTypeReader.a(byteBuffer.get());
        for (int i5 = 0; i5 < jA2; i5++) {
            byte[] bArr3 = new byte[IsoTypeReader.f(byteBuffer)];
            byteBuffer.get(bArr3);
            this.l.add(bArr3);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AvcDecoderConfigurationRecord{configurationVersion=");
        sb.append(this.f36375a);
        sb.append(", avcProfileIndication=");
        sb.append(this.f36376b);
        sb.append(", profileCompatibility=");
        sb.append(this.f36377c);
        sb.append(", avcLevelIndication=");
        sb.append(this.d);
        sb.append(", lengthSizeMinusOne=");
        sb.append(this.f36378e);
        sb.append(", hasExts=");
        sb.append(this.f36380h);
        sb.append(", chromaFormat=");
        sb.append(this.f36381i);
        sb.append(", bitDepthLumaMinus8=");
        sb.append(this.f36382j);
        sb.append(", bitDepthChromaMinus8=");
        sb.append(this.f36383k);
        sb.append(", lengthSizeMinusOnePaddingBits=");
        sb.append(this.m);
        sb.append(", numberOfSequenceParameterSetsPaddingBits=");
        sb.append(this.n);
        sb.append(", chromaFormatPaddingBits=");
        sb.append(this.o);
        sb.append(", bitDepthLumaMinus8PaddingBits=");
        sb.append(this.p);
        sb.append(", bitDepthChromaMinus8PaddingBits=");
        return tr.k(sb, this.q, '}');
    }

    public AvcDecoderConfigurationRecord() {
        this.f36379f = new ArrayList();
        this.g = new ArrayList();
        this.f36380h = true;
        this.f36381i = 1;
        this.f36382j = 0;
        this.f36383k = 0;
        this.l = new ArrayList();
        this.m = 63;
        this.n = 7;
        this.o = 31;
        this.p = 31;
        this.q = 31;
    }
}
