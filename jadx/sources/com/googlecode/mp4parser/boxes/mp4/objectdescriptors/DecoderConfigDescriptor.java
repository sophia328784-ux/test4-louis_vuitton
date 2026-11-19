package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import com.coremedia.iso.Hex;
import com.coremedia.iso.IsoTypeReader;
import defpackage.fc;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
@Descriptor(tags = {4})
public class DecoderConfigDescriptor extends BaseDescriptor {
    public static final Logger n = Logger.getLogger(DecoderConfigDescriptor.class.getName());
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f35718e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f35719f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f35720h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f35721i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public DecoderSpecificInfo f35722j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public AudioSpecificConfig f35723k;
    public final ArrayList l = new ArrayList();
    public byte[] m;

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor
    public final void b(ByteBuffer byteBuffer) {
        this.d = IsoTypeReader.a(byteBuffer.get());
        int iA = IsoTypeReader.a(byteBuffer.get());
        this.f35718e = iA >>> 2;
        this.f35719f = (iA >> 1) & 1;
        this.g = IsoTypeReader.g(byteBuffer);
        this.f35720h = IsoTypeReader.h(byteBuffer);
        this.f35721i = IsoTypeReader.h(byteBuffer);
        int iRemaining = byteBuffer.remaining();
        Logger logger = n;
        if (iRemaining > 2) {
            int iPosition = byteBuffer.position();
            BaseDescriptor baseDescriptorA = ObjectDescriptorFactory.a(this.d, byteBuffer);
            int iPosition2 = byteBuffer.position() - iPosition;
            logger.finer(baseDescriptorA + " - DecoderConfigDescr1 read: " + iPosition2 + ", size: " + Integer.valueOf(baseDescriptorA.a()));
            int iA2 = baseDescriptorA.a();
            if (iPosition2 < iA2) {
                byte[] bArr = new byte[iA2 - iPosition2];
                this.m = bArr;
                byteBuffer.get(bArr);
            }
            if (baseDescriptorA instanceof DecoderSpecificInfo) {
                this.f35722j = (DecoderSpecificInfo) baseDescriptorA;
            }
            if (baseDescriptorA instanceof AudioSpecificConfig) {
                this.f35723k = (AudioSpecificConfig) baseDescriptorA;
            }
        }
        while (byteBuffer.remaining() > 2) {
            long jPosition = byteBuffer.position();
            BaseDescriptor baseDescriptorA2 = ObjectDescriptorFactory.a(this.d, byteBuffer);
            logger.finer(baseDescriptorA2 + " - DecoderConfigDescr2 read: " + (((long) byteBuffer.position()) - jPosition) + ", size: " + Integer.valueOf(baseDescriptorA2.a()));
            if (baseDescriptorA2 instanceof ProfileLevelIndicationDescriptor) {
                this.l.add((ProfileLevelIndicationDescriptor) baseDescriptorA2);
            }
        }
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor
    public final String toString() {
        StringBuilder sb = new StringBuilder("DecoderConfigDescriptor{objectTypeIndication=");
        sb.append(this.d);
        sb.append(", streamType=");
        sb.append(this.f35718e);
        sb.append(", upStream=");
        sb.append(this.f35719f);
        sb.append(", bufferSizeDB=");
        sb.append(this.g);
        sb.append(", maxBitRate=");
        sb.append(this.f35720h);
        sb.append(", avgBitRate=");
        sb.append(this.f35721i);
        sb.append(", decoderSpecificInfo=");
        sb.append(this.f35722j);
        sb.append(", audioSpecificInfo=");
        sb.append(this.f35723k);
        sb.append(", configDescriptorDeadBytes=");
        byte[] bArr = this.m;
        if (bArr == null) {
            bArr = new byte[0];
        }
        sb.append(Hex.a(0, bArr));
        sb.append(", profileLevelIndicationDescriptors=");
        ArrayList arrayList = this.l;
        return fc.l(sb, arrayList == null ? "null" : Arrays.asList(arrayList).toString(), '}');
    }
}
