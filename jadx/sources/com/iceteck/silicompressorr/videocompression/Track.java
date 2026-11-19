package com.iceteck.silicompressorr.videocompression;

import android.media.MediaFormat;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.Utf8;
import com.coremedia.iso.boxes.AbstractMediaHeaderBox;
import com.coremedia.iso.boxes.SampleDescriptionBox;
import com.coremedia.iso.boxes.SoundMediaHeaderBox;
import com.coremedia.iso.boxes.VideoMediaHeaderBox;
import com.coremedia.iso.boxes.sampleentry.AudioSampleEntry;
import com.coremedia.iso.boxes.sampleentry.VisualSampleEntry;
import com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox;
import com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.AudioSpecificConfig;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BitWriterBuffer;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.DecoderConfigDescriptor;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.ESDescriptor;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.SLConfigDescriptor;
import com.mp4parser.iso14496.part15.AvcConfigurationBox;
import defpackage.a;
import defpackage.mt;
import defpackage.tr;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.DataChannelModule;
import okhttp3.internal.ws.RealWebSocket;
import org.aspectj.runtime.reflect.Factory;

/* JADX INFO: loaded from: classes2.dex */
public class Track {
    public static final HashMap p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f35786a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f35788c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AbstractMediaHeaderBox f35789e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SampleDescriptionBox f35790f;
    public final LinkedList g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f35791h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f35793j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f35794k;
    public final float l;
    public final ArrayList m;
    public long n;
    public boolean o;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f35787b = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Date f35792i = new Date();

    static {
        HashMap map = new HashMap();
        p = map;
        map.put(a.h(10, map, a.h(9, map, a.h(8, map, a.h(7, map, a.h(6, map, a.h(5, map, a.h(4, map, a.h(3, map, a.h(2, map, a.h(1, map, a.h(0, map, 96000, 88200), 64000), 48000), 44100), 32000), 24000), 22050), 16000), 12000), 11025), 8000), 11);
    }

    public Track(int i2, MediaFormat mediaFormat, boolean z) throws Exception {
        int i3;
        this.f35786a = 0L;
        this.f35788c = 0L;
        this.f35789e = null;
        this.f35790f = null;
        this.g = null;
        this.l = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        ArrayList arrayList = new ArrayList();
        this.m = arrayList;
        this.n = 0L;
        this.o = true;
        this.f35786a = i2;
        int i4 = 0;
        if (!z) {
            arrayList.add(3015L);
            this.f35788c = 3015L;
            int integer = mediaFormat.getInteger("width");
            this.f35794k = integer;
            int integer2 = mediaFormat.getInteger("height");
            this.f35793j = integer2;
            this.f35791h = 90000;
            this.g = new LinkedList();
            this.d = "vide";
            this.f35789e = new VideoMediaHeaderBox();
            SampleDescriptionBox sampleDescriptionBox = new SampleDescriptionBox();
            this.f35790f = sampleDescriptionBox;
            String string = mediaFormat.getString("mime");
            if (!string.equals("video/avc")) {
                if (string.equals("video/mp4v")) {
                    VisualSampleEntry visualSampleEntry = new VisualSampleEntry("mp4v");
                    visualSampleEntry.f25327k = 1;
                    visualSampleEntry.r = 24;
                    visualSampleEntry.p = 1;
                    visualSampleEntry.n = 72.0d;
                    visualSampleEntry.o = 72.0d;
                    visualSampleEntry.l = integer;
                    visualSampleEntry.m = integer2;
                    sampleDescriptionBox.g(visualSampleEntry);
                    return;
                }
                return;
            }
            VisualSampleEntry visualSampleEntry2 = new VisualSampleEntry("avc1");
            visualSampleEntry2.f25327k = 1;
            visualSampleEntry2.r = 24;
            visualSampleEntry2.p = 1;
            visualSampleEntry2.n = 72.0d;
            visualSampleEntry2.o = 72.0d;
            visualSampleEntry2.l = integer;
            visualSampleEntry2.m = integer2;
            AvcConfigurationBox avcConfigurationBox = new AvcConfigurationBox();
            if (mediaFormat.getByteBuffer("csd-0") != null) {
                ArrayList arrayList2 = new ArrayList();
                ByteBuffer byteBuffer = mediaFormat.getByteBuffer("csd-0");
                byteBuffer.position(4);
                byte[] bArr = new byte[byteBuffer.remaining()];
                byteBuffer.get(bArr);
                arrayList2.add(bArr);
                ArrayList arrayList3 = new ArrayList();
                ByteBuffer byteBuffer2 = mediaFormat.getByteBuffer("csd-1");
                byteBuffer2.position(4);
                byte[] bArr2 = new byte[byteBuffer2.remaining()];
                byteBuffer2.get(bArr2);
                arrayList3.add(bArr2);
                tr.B(Factory.c(AvcConfigurationBox.x, avcConfigurationBox, avcConfigurationBox, arrayList2));
                avcConfigurationBox.f36374k.f36379f = arrayList2;
                tr.B(Factory.c(AvcConfigurationBox.y, avcConfigurationBox, avcConfigurationBox, arrayList3));
                avcConfigurationBox.f36374k.g = arrayList3;
            }
            tr.B(Factory.c(AvcConfigurationBox.v, avcConfigurationBox, avcConfigurationBox, new Integer(13)));
            avcConfigurationBox.f36374k.d = 13;
            tr.B(Factory.c(AvcConfigurationBox.t, avcConfigurationBox, avcConfigurationBox, new Integer(100)));
            avcConfigurationBox.f36374k.f36376b = 100;
            tr.B(Factory.c(AvcConfigurationBox.C, avcConfigurationBox, avcConfigurationBox, new Integer(-1)));
            avcConfigurationBox.f36374k.f36382j = -1;
            tr.B(Factory.c(AvcConfigurationBox.E, avcConfigurationBox, avcConfigurationBox, new Integer(-1)));
            avcConfigurationBox.f36374k.f36383k = -1;
            tr.B(Factory.c(AvcConfigurationBox.A, avcConfigurationBox, avcConfigurationBox, new Integer(-1)));
            avcConfigurationBox.f36374k.f36381i = -1;
            tr.B(Factory.c(AvcConfigurationBox.s, avcConfigurationBox, avcConfigurationBox, new Integer(1)));
            avcConfigurationBox.f36374k.f36375a = 1;
            tr.B(Factory.c(AvcConfigurationBox.w, avcConfigurationBox, avcConfigurationBox, new Integer(3)));
            avcConfigurationBox.f36374k.f36378e = 3;
            tr.B(Factory.c(AvcConfigurationBox.u, avcConfigurationBox, avcConfigurationBox, new Integer(0)));
            avcConfigurationBox.f36374k.f36377c = 0;
            visualSampleEntry2.g(avcConfigurationBox);
            sampleDescriptionBox.g(visualSampleEntry2);
            return;
        }
        arrayList.add(Long.valueOf(RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE));
        this.f35788c = RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
        this.l = 1.0f;
        this.f35791h = mediaFormat.getInteger("sample-rate");
        this.d = "soun";
        this.f35789e = new SoundMediaHeaderBox();
        SampleDescriptionBox sampleDescriptionBox2 = new SampleDescriptionBox();
        this.f35790f = sampleDescriptionBox2;
        AudioSampleEntry audioSampleEntry = new AudioSampleEntry("mp4a");
        audioSampleEntry.l = mediaFormat.getInteger("channel-count");
        audioSampleEntry.n = mediaFormat.getInteger("sample-rate");
        audioSampleEntry.f25327k = 1;
        audioSampleEntry.m = 16;
        ESDescriptorBox eSDescriptorBox = new ESDescriptorBox();
        ESDescriptor eSDescriptor = new ESDescriptor();
        eSDescriptor.d = 0;
        SLConfigDescriptor sLConfigDescriptor = new SLConfigDescriptor();
        sLConfigDescriptor.d = 2;
        eSDescriptor.n = sLConfigDescriptor;
        DecoderConfigDescriptor decoderConfigDescriptor = new DecoderConfigDescriptor();
        decoderConfigDescriptor.d = 64;
        decoderConfigDescriptor.f35718e = 5;
        decoderConfigDescriptor.g = DataChannelModule.MAX_SIZE_DATA_CHANNEL;
        decoderConfigDescriptor.f35720h = 96000L;
        decoderConfigDescriptor.f35721i = 96000L;
        AudioSpecificConfig audioSpecificConfig = new AudioSpecificConfig();
        audioSpecificConfig.f35702e = 2;
        audioSpecificConfig.f35703f = ((Integer) p.get(Integer.valueOf((int) audioSampleEntry.n))).intValue();
        audioSpecificConfig.f35704h = audioSampleEntry.l;
        decoderConfigDescriptor.f35723k = audioSpecificConfig;
        eSDescriptor.m = decoderConfigDescriptor;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(eSDescriptor.c());
        IsoTypeWriter.f(3, byteBufferAllocate);
        byteBufferAllocate.put((byte) ((eSDescriptor.c() - 2) & 255));
        IsoTypeWriter.d(eSDescriptor.d, byteBufferAllocate);
        byteBufferAllocate.put((byte) (((eSDescriptor.f35724e << 7) | (eSDescriptor.f35725f << 6) | (eSDescriptor.g << 5) | (eSDescriptor.f35726h & 31)) & 255));
        if (eSDescriptor.f35724e > 0) {
            IsoTypeWriter.d(eSDescriptor.f35729k, byteBufferAllocate);
        }
        if (eSDescriptor.f35725f > 0) {
            byteBufferAllocate.put((byte) (eSDescriptor.f35727i & 255));
            byteBufferAllocate.put(Utf8.a(eSDescriptor.f35728j));
            byteBufferAllocate.put((byte) 0);
        }
        if (eSDescriptor.g > 0) {
            IsoTypeWriter.d(eSDescriptor.l, byteBufferAllocate);
        }
        DecoderConfigDescriptor decoderConfigDescriptor2 = eSDescriptor.m;
        AudioSpecificConfig audioSpecificConfig2 = decoderConfigDescriptor2.f35723k;
        if (audioSpecificConfig2 == null) {
            i3 = 0;
        } else {
            if (audioSpecificConfig2.f35702e != 2) {
                mt.i("can't serialize that yet");
                throw null;
            }
            i3 = 4;
        }
        ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(i3 + 15);
        IsoTypeWriter.f(4, byteBufferAllocate2);
        AudioSpecificConfig audioSpecificConfig3 = decoderConfigDescriptor2.f35723k;
        if (audioSpecificConfig3 != null) {
            if (audioSpecificConfig3.f35702e != 2) {
                mt.i("can't serialize that yet");
                throw null;
            }
            i4 = 4;
        }
        byteBufferAllocate2.put((byte) ((i4 + 13) & 255));
        byteBufferAllocate2.put((byte) (decoderConfigDescriptor2.d & 255));
        byteBufferAllocate2.put((byte) (((decoderConfigDescriptor2.f35718e << 2) | (decoderConfigDescriptor2.f35719f << 1) | 1) & 255));
        IsoTypeWriter.e(decoderConfigDescriptor2.g, byteBufferAllocate2);
        byteBufferAllocate2.putInt((int) decoderConfigDescriptor2.f35720h);
        byteBufferAllocate2.putInt((int) decoderConfigDescriptor2.f35721i);
        AudioSpecificConfig audioSpecificConfig4 = decoderConfigDescriptor2.f35723k;
        if (audioSpecificConfig4 != null) {
            if (audioSpecificConfig4.f35702e != 2) {
                mt.i("can't serialize that yet");
                throw null;
            }
            ByteBuffer byteBufferAllocate3 = ByteBuffer.allocate(4);
            IsoTypeWriter.f(5, byteBufferAllocate3);
            if (audioSpecificConfig4.f35702e != 2) {
                mt.i("can't serialize that yet");
                throw null;
            }
            byteBufferAllocate3.put((byte) 2);
            BitWriterBuffer bitWriterBuffer = new BitWriterBuffer(byteBufferAllocate3);
            bitWriterBuffer.a(audioSpecificConfig4.f35702e, 5);
            bitWriterBuffer.a(audioSpecificConfig4.f35703f, 4);
            if (audioSpecificConfig4.f35703f == 15) {
                mt.i("can't serialize that yet");
                throw null;
            }
            bitWriterBuffer.a(audioSpecificConfig4.f35704h, 4);
            byteBufferAllocate2.put(byteBufferAllocate3.array());
        }
        SLConfigDescriptor sLConfigDescriptor2 = eSDescriptor.n;
        sLConfigDescriptor2.getClass();
        ByteBuffer byteBufferAllocate4 = ByteBuffer.allocate(3);
        IsoTypeWriter.f(6, byteBufferAllocate4);
        byteBufferAllocate4.put((byte) 1);
        byteBufferAllocate4.put((byte) (sLConfigDescriptor2.d & 255));
        byteBufferAllocate.put(byteBufferAllocate2.array());
        byteBufferAllocate.put(byteBufferAllocate4.array());
        tr.B(Factory.c(ESDescriptorBox.w, eSDescriptorBox, eSDescriptorBox, eSDescriptor));
        tr.B(Factory.c(AbstractDescriptorBox.t, eSDescriptorBox, eSDescriptorBox, eSDescriptor));
        tr.B(Factory.c(AbstractDescriptorBox.u, eSDescriptorBox, eSDescriptorBox, byteBufferAllocate));
        eSDescriptorBox.o = byteBufferAllocate;
        audioSampleEntry.g(eSDescriptorBox);
        sampleDescriptionBox2.g(audioSampleEntry);
    }
}
