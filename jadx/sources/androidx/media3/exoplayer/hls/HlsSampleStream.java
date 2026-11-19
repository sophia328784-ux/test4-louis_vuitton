package androidx.media3.exoplayer.hls;

import androidx.media3.common.Format;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.source.SampleStream;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import defpackage.cj;
import defpackage.ct0;
import defpackage.p3;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class HlsSampleStream implements SampleStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f15173a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HlsSampleStreamWrapper f15174b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f15175c = -1;

    public HlsSampleStream(HlsSampleStreamWrapper hlsSampleStreamWrapper, int i2) {
        this.f15174b = hlsSampleStreamWrapper;
        this.f15173a = i2;
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public final void a() throws DrmSession.DrmSessionException, SampleQueueMappingException {
        int i2 = this.f15175c;
        HlsSampleStreamWrapper hlsSampleStreamWrapper = this.f15174b;
        if (i2 == -2) {
            hlsSampleStreamWrapper.x();
            throw new SampleQueueMappingException(hlsSampleStreamWrapper.J.a(this.f15173a).d[0].o);
        }
        if (i2 == -1) {
            hlsSampleStreamWrapper.H();
            return;
        }
        if (i2 != -3) {
            hlsSampleStreamWrapper.H();
            HlsSampleStreamWrapper.HlsSampleQueue hlsSampleQueue = hlsSampleStreamWrapper.w[i2];
            DrmSession drmSession = hlsSampleQueue.f15588h;
            if (drmSession == null || drmSession.getState() != 1) {
                return;
            }
            DrmSession.DrmSessionException drmSessionExceptionA = hlsSampleQueue.f15588h.a();
            drmSessionExceptionA.getClass();
            throw drmSessionExceptionA;
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0042  */
    @Override // androidx.media3.exoplayer.source.SampleStream
    public final int b(long j2) throws Throwable {
        Object next;
        Object objC;
        if (!e()) {
            return 0;
        }
        int i2 = this.f15175c;
        HlsSampleStreamWrapper hlsSampleStreamWrapper = this.f15174b;
        if (hlsSampleStreamWrapper.F()) {
            return 0;
        }
        HlsSampleStreamWrapper.HlsSampleQueue hlsSampleQueue = hlsSampleStreamWrapper.w[i2];
        int iS = hlsSampleQueue.s(j2, hlsSampleStreamWrapper.V);
        ArrayList arrayList = hlsSampleStreamWrapper.o;
        if (arrayList == null) {
            Iterator it = arrayList.iterator();
            if (it.hasNext()) {
                do {
                    next = it.next();
                } while (it.hasNext());
                objC = next;
            } else {
                objC = null;
            }
        } else if (arrayList.isEmpty()) {
            objC = null;
        } else {
            objC = cj.c(1, arrayList);
        }
        HlsMediaChunk hlsMediaChunk = (HlsMediaChunk) objC;
        if (hlsMediaChunk != null && !hlsMediaChunk.f()) {
            iS = Math.min(iS, hlsMediaChunk.e(i2) - hlsSampleQueue.q());
        }
        hlsSampleQueue.D(iS);
        return iS;
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public final int c(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i2) {
        Format format;
        if (this.f15175c == -3) {
            decoderInputBuffer.e(4);
            return -4;
        }
        if (e()) {
            int i3 = this.f15175c;
            HlsSampleStreamWrapper hlsSampleStreamWrapper = this.f15174b;
            ArrayList arrayList = hlsSampleStreamWrapper.o;
            if (!hlsSampleStreamWrapper.F()) {
                int i4 = 0;
                if (!arrayList.isEmpty()) {
                    int i5 = 0;
                    loop0: while (i5 < arrayList.size() - 1) {
                        int i6 = ((HlsMediaChunk) arrayList.get(i5)).f15152k;
                        int length = hlsSampleStreamWrapper.w.length;
                        for (int i7 = 0; i7 < length; i7++) {
                            if (hlsSampleStreamWrapper.O[i7] && hlsSampleStreamWrapper.w[i7].x() == i6) {
                                break loop0;
                            }
                        }
                        i5++;
                    }
                    String str = Util.f14242a;
                    if (i5 > arrayList.size() || i5 < 0) {
                        ct0.c();
                        return 0;
                    }
                    if (i5 != 0) {
                        arrayList.subList(0, i5).clear();
                    }
                    HlsMediaChunk hlsMediaChunk = (HlsMediaChunk) arrayList.get(0);
                    Format format2 = hlsMediaChunk.d;
                    if (!format2.equals(hlsSampleStreamWrapper.H)) {
                        MediaSourceEventListener.EventDispatcher eventDispatcher = hlsSampleStreamWrapper.l;
                        int i8 = hlsSampleStreamWrapper.f15177c;
                        int i9 = hlsMediaChunk.f15651e;
                        Object obj = hlsMediaChunk.f15652f;
                        long j2 = hlsMediaChunk.g;
                        eventDispatcher.getClass();
                        eventDispatcher.a(new p3(eventDispatcher, new MediaLoadData(1, i8, format2, i9, obj, Util.f0(j2), -9223372036854775807L), 17));
                    }
                    hlsSampleStreamWrapper.H = format2;
                }
                if (arrayList.isEmpty() || ((HlsMediaChunk) arrayList.get(0)).f()) {
                    int iY = hlsSampleStreamWrapper.w[i3].y(formatHolder, decoderInputBuffer, i2, hlsSampleStreamWrapper.V);
                    if (iY == -5) {
                        Format formatD = formatHolder.f14697b;
                        formatD.getClass();
                        if (i3 == hlsSampleStreamWrapper.C) {
                            int iB = Ints.b(hlsSampleStreamWrapper.w[i3].x());
                            while (i4 < arrayList.size() && ((HlsMediaChunk) arrayList.get(i4)).f15152k != iB) {
                                i4++;
                            }
                            if (i4 < arrayList.size()) {
                                format = ((HlsMediaChunk) arrayList.get(i4)).d;
                            } else {
                                format = hlsSampleStreamWrapper.G;
                                format.getClass();
                            }
                            formatD = formatD.d(format);
                        }
                        formatHolder.f14697b = formatD;
                    }
                    return iY;
                }
            }
        }
        return -3;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002f  */
    public final void d() {
        Preconditions.g(this.f15175c == -1);
        HlsSampleStreamWrapper hlsSampleStreamWrapper = this.f15174b;
        hlsSampleStreamWrapper.x();
        hlsSampleStreamWrapper.L.getClass();
        int[] iArr = hlsSampleStreamWrapper.L;
        int i2 = this.f15173a;
        int i3 = iArr[i2];
        if (i3 != -1) {
            boolean[] zArr = hlsSampleStreamWrapper.O;
            if (zArr[i3]) {
                i3 = -2;
            } else {
                zArr[i3] = true;
            }
        } else if (hlsSampleStreamWrapper.K.contains(hlsSampleStreamWrapper.J.a(i2))) {
            i3 = -3;
        } else {
            i3 = -2;
        }
        this.f15175c = i3;
    }

    public final boolean e() {
        int i2 = this.f15175c;
        return (i2 == -1 || i2 == -3 || i2 == -2) ? false : true;
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public final boolean isReady() {
        if (this.f15175c == -3) {
            return true;
        }
        if (!e()) {
            return false;
        }
        int i2 = this.f15175c;
        HlsSampleStreamWrapper hlsSampleStreamWrapper = this.f15174b;
        return !hlsSampleStreamWrapper.F() && hlsSampleStreamWrapper.w[i2].u(hlsSampleStreamWrapper.V);
    }
}
