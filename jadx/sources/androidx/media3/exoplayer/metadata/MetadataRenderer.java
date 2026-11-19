package androidx.media3.exoplayer.metadata;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.BaseRenderer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.extractor.metadata.MetadataDecoder;
import androidx.media3.extractor.metadata.MetadataInputBuffer;
import androidx.media3.extractor.metadata.SimpleMetadataDecoder;
import com.google.common.base.Preconditions;
import defpackage.r81;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class MetadataRenderer extends BaseRenderer implements Handler.Callback {
    public boolean A;
    public long B;
    public Metadata C;
    public long D;
    public final MetadataDecoderFactory t;
    public final MetadataOutput u;
    public final Handler v;
    public final MetadataInputBuffer w;
    public final boolean x;
    public MetadataDecoder y;
    public boolean z;

    public MetadataRenderer(MetadataOutput metadataOutput, Looper looper, MetadataDecoderFactory metadataDecoderFactory, boolean z) {
        Handler handler;
        super(5);
        metadataOutput.getClass();
        this.u = metadataOutput;
        if (looper == null) {
            handler = null;
        } else {
            String str = Util.f14242a;
            handler = new Handler(looper, this);
        }
        this.v = handler;
        metadataDecoderFactory.getClass();
        this.t = metadataDecoderFactory;
        this.x = z;
        this.w = new MetadataInputBuffer();
        this.D = -9223372036854775807L;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void K() {
        this.C = null;
        this.y = null;
        this.D = -9223372036854775807L;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void M(boolean z, boolean z2, long j2) {
        this.C = null;
        this.z = false;
        this.A = false;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void R(Format[] formatArr, long j2, long j3, MediaSource.MediaPeriodId mediaPeriodId) {
        this.y = this.t.a(formatArr[0]);
        Metadata metadata = this.C;
        if (metadata != null) {
            long j4 = metadata.f13898b;
            long j5 = (this.D + j4) - j3;
            if (j4 != j5) {
                metadata = new Metadata(j5, metadata.f13897a);
            }
            this.C = metadata;
        }
        this.D = j3;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0040  */
    public final void U(Metadata metadata, ArrayList arrayList) {
        int i2 = 0;
        while (true) {
            Metadata.Entry[] entryArr = metadata.f13897a;
            if (i2 >= entryArr.length) {
                return;
            }
            Format formatA = entryArr[i2].a();
            if (formatA != null) {
                MetadataDecoderFactory metadataDecoderFactory = this.t;
                if (metadataDecoderFactory.b(formatA)) {
                    SimpleMetadataDecoder simpleMetadataDecoderA = metadataDecoderFactory.a(formatA);
                    byte[] bArrC = entryArr[i2].c();
                    bArrC.getClass();
                    MetadataInputBuffer metadataInputBuffer = this.w;
                    metadataInputBuffer.g();
                    metadataInputBuffer.i(bArrC.length);
                    ByteBuffer byteBuffer = metadataInputBuffer.f14543e;
                    String str = Util.f14242a;
                    byteBuffer.put(bArrC);
                    metadataInputBuffer.j();
                    Metadata metadataA = simpleMetadataDecoderA.a(metadataInputBuffer);
                    if (metadataA != null) {
                        U(metadataA, arrayList);
                    }
                } else {
                    arrayList.add(entryArr[i2]);
                }
            } else {
                arrayList.add(entryArr[i2]);
            }
            i2++;
        }
    }

    public final long V(long j2) {
        Preconditions.q(j2 != -9223372036854775807L);
        Preconditions.q(this.D != -9223372036854775807L);
        return j2 - this.D;
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public final int b(Format format) {
        if (this.t.b(format)) {
            return RendererCapabilities.o(format.P == 0 ? 4 : 2, 0, 0, 0);
        }
        return RendererCapabilities.o(0, 0, 0, 0);
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.Renderer
    public final boolean e() {
        return this.A;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void g(long j2, long j3) {
        boolean z = true;
        while (z) {
            if (!this.z && this.C == null) {
                MetadataInputBuffer metadataInputBuffer = this.w;
                metadataInputBuffer.g();
                FormatHolder formatHolder = this.d;
                formatHolder.a();
                int iT = T(formatHolder, metadataInputBuffer, 0);
                if (iT == -4) {
                    if (metadataInputBuffer.f(4)) {
                        this.z = true;
                    } else if (metadataInputBuffer.g >= this.m) {
                        metadataInputBuffer.f16333k = this.B;
                        metadataInputBuffer.j();
                        MetadataDecoder metadataDecoder = this.y;
                        String str = Util.f14242a;
                        Metadata metadataA = metadataDecoder.a(metadataInputBuffer);
                        if (metadataA != null) {
                            ArrayList arrayList = new ArrayList(metadataA.f13897a.length);
                            U(metadataA, arrayList);
                            if (!arrayList.isEmpty()) {
                                this.C = new Metadata(V(metadataInputBuffer.g), arrayList);
                            }
                        }
                    }
                } else if (iT == -5) {
                    Format format = formatHolder.f14697b;
                    format.getClass();
                    this.B = format.t;
                }
            }
            Metadata metadata = this.C;
            if (metadata == null || (!this.x && metadata.f13898b > V(j2))) {
                z = false;
            } else {
                Metadata metadata2 = this.C;
                Handler handler = this.v;
                if (handler != null) {
                    handler.obtainMessage(1, metadata2).sendToTarget();
                } else {
                    this.u.C(metadata2);
                }
                this.C = null;
                z = true;
            }
            if (this.z && this.C == null) {
                this.A = true;
            }
        }
    }

    @Override // androidx.media3.exoplayer.Renderer, androidx.media3.exoplayer.RendererCapabilities
    public final String getName() {
        return "MetadataRenderer";
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what != 1) {
            r81.b();
            return false;
        }
        this.u.C((Metadata) message.obj);
        return true;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final boolean isReady() {
        return true;
    }

    public MetadataRenderer(MetadataOutput metadataOutput, Looper looper, MetadataDecoderFactory metadataDecoderFactory) {
        this(metadataOutput, looper, metadataDecoderFactory, false);
    }

    public MetadataRenderer(MetadataOutput metadataOutput, Looper looper) {
        this(metadataOutput, looper, MetadataDecoderFactory.f15411a);
    }
}
