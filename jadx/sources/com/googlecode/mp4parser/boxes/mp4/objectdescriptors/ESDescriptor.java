package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import com.coremedia.iso.IsoTypeReader;
import defpackage.mt;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
@Descriptor(tags = {3})
public class ESDescriptor extends BaseDescriptor {
    public static final Logger p = Logger.getLogger(ESDescriptor.class.getName());
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f35724e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f35725f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f35726h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f35728j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f35729k;
    public int l;
    public DecoderConfigDescriptor m;
    public SLConfigDescriptor n;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f35727i = 0;
    public final ArrayList o = new ArrayList();

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor
    public final void b(ByteBuffer byteBuffer) {
        this.d = IsoTypeReader.f(byteBuffer);
        int iA = IsoTypeReader.a(byteBuffer.get());
        int i2 = iA >>> 7;
        this.f35724e = i2;
        this.f35725f = (iA >>> 6) & 1;
        this.g = (iA >>> 5) & 1;
        this.f35726h = iA & 31;
        if (i2 == 1) {
            this.f35729k = IsoTypeReader.f(byteBuffer);
        }
        if (this.f35725f == 1) {
            int iA2 = IsoTypeReader.a(byteBuffer.get());
            this.f35727i = iA2;
            byte[] bArr = new byte[iA2];
            byteBuffer.get(bArr);
            try {
                this.f35728j = new String(bArr, "UTF-8");
            } catch (UnsupportedEncodingException e2) {
                throw new Error(e2);
            }
        }
        if (this.g == 1) {
            this.l = IsoTypeReader.f(byteBuffer);
        }
        int i3 = this.f35711c + 4 + (this.f35724e == 1 ? 2 : 0) + (this.f35725f == 1 ? this.f35727i + 1 : 0) + (this.g == 1 ? 2 : 0);
        int iPosition = byteBuffer.position();
        int iA3 = a();
        int i4 = i3 + 2;
        Logger logger = p;
        if (iA3 > i4) {
            BaseDescriptor baseDescriptorA = ObjectDescriptorFactory.a(-1, byteBuffer);
            logger.finer(baseDescriptorA + " - ESDescriptor1 read: " + (byteBuffer.position() - iPosition) + ", size: " + Integer.valueOf(baseDescriptorA.a()));
            int iA4 = baseDescriptorA.a();
            byteBuffer.position(iPosition + iA4);
            i3 += iA4;
            if (baseDescriptorA instanceof DecoderConfigDescriptor) {
                this.m = (DecoderConfigDescriptor) baseDescriptorA;
            }
        }
        int iPosition2 = byteBuffer.position();
        if (a() > i3 + 2) {
            BaseDescriptor baseDescriptorA2 = ObjectDescriptorFactory.a(-1, byteBuffer);
            logger.finer(baseDescriptorA2 + " - ESDescriptor2 read: " + (byteBuffer.position() - iPosition2) + ", size: " + Integer.valueOf(baseDescriptorA2.a()));
            int iA5 = baseDescriptorA2.a();
            byteBuffer.position(iPosition2 + iA5);
            i3 += iA5;
            if (baseDescriptorA2 instanceof SLConfigDescriptor) {
                this.n = (SLConfigDescriptor) baseDescriptorA2;
            }
        } else {
            logger.warning("SLConfigDescriptor is missing!");
        }
        while (a() - i3 > 2) {
            int iPosition3 = byteBuffer.position();
            BaseDescriptor baseDescriptorA3 = ObjectDescriptorFactory.a(-1, byteBuffer);
            logger.finer(baseDescriptorA3 + " - ESDescriptor3 read: " + (byteBuffer.position() - iPosition3) + ", size: " + Integer.valueOf(baseDescriptorA3.a()));
            int iA6 = baseDescriptorA3.a();
            byteBuffer.position(iPosition3 + iA6);
            i3 += iA6;
            this.o.add(baseDescriptorA3);
        }
    }

    public final int c() {
        int i2 = this.f35724e > 0 ? 7 : 5;
        if (this.f35725f > 0) {
            i2 += this.f35727i + 1;
        }
        if (this.g > 0) {
            i2 += 2;
        }
        AudioSpecificConfig audioSpecificConfig = this.m.f35723k;
        int i3 = 0;
        if (audioSpecificConfig != null) {
            if (audioSpecificConfig.f35702e != 2) {
                mt.i("can't serialize that yet");
                return 0;
            }
            i3 = 4;
        }
        this.n.getClass();
        return i3 + 15 + i2 + 3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ESDescriptor eSDescriptor = (ESDescriptor) obj;
        if (this.f35725f != eSDescriptor.f35725f || this.f35727i != eSDescriptor.f35727i || this.f35729k != eSDescriptor.f35729k || this.d != eSDescriptor.d || this.l != eSDescriptor.l || this.g != eSDescriptor.g || this.f35724e != eSDescriptor.f35724e || this.f35726h != eSDescriptor.f35726h) {
            return false;
        }
        String str = this.f35728j;
        String str2 = eSDescriptor.f35728j;
        if (str != null) {
            if (!str.equals(str2)) {
                return false;
            }
        } else if (str2 != null) {
            return false;
        }
        DecoderConfigDescriptor decoderConfigDescriptor = this.m;
        DecoderConfigDescriptor decoderConfigDescriptor2 = eSDescriptor.m;
        if (decoderConfigDescriptor != null) {
            if (!decoderConfigDescriptor.equals(decoderConfigDescriptor2)) {
                return false;
            }
        } else if (decoderConfigDescriptor2 != null) {
            return false;
        }
        ArrayList arrayList = eSDescriptor.o;
        ArrayList arrayList2 = this.o;
        if (arrayList2 != null) {
            if (!arrayList2.equals(arrayList)) {
                return false;
            }
        } else if (arrayList != null) {
            return false;
        }
        SLConfigDescriptor sLConfigDescriptor = this.n;
        SLConfigDescriptor sLConfigDescriptor2 = eSDescriptor.n;
        if (sLConfigDescriptor != null) {
            return sLConfigDescriptor.equals(sLConfigDescriptor2);
        }
        return sLConfigDescriptor2 == null;
    }

    public final int hashCode() {
        int i2 = ((((((((((this.d * 31) + this.f35724e) * 31) + this.f35725f) * 31) + this.g) * 31) + this.f35726h) * 31) + this.f35727i) * 31;
        String str = this.f35728j;
        int iHashCode = (((((i2 + (str != null ? str.hashCode() : 0)) * 961) + this.f35729k) * 31) + this.l) * 31;
        DecoderConfigDescriptor decoderConfigDescriptor = this.m;
        int iHashCode2 = (iHashCode + (decoderConfigDescriptor != null ? decoderConfigDescriptor.hashCode() : 0)) * 31;
        SLConfigDescriptor sLConfigDescriptor = this.n;
        int i3 = (iHashCode2 + (sLConfigDescriptor != null ? sLConfigDescriptor.d : 0)) * 31;
        ArrayList arrayList = this.o;
        return i3 + (arrayList != null ? arrayList.hashCode() : 0);
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor
    public final String toString() {
        return "ESDescriptor{esId=" + this.d + ", streamDependenceFlag=" + this.f35724e + ", URLFlag=" + this.f35725f + ", oCRstreamFlag=" + this.g + ", streamPriority=" + this.f35726h + ", URLLength=" + this.f35727i + ", URLString='" + this.f35728j + "', remoteODFlag=0, dependsOnEsId=" + this.f35729k + ", oCREsId=" + this.l + ", decoderConfigDescriptor=" + this.m + ", slConfigDescriptor=" + this.n + '}';
    }
}
