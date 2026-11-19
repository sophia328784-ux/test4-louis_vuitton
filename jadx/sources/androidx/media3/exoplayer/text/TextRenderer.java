package androidx.media3.exoplayer.text;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.BaseRenderer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.extractor.text.CueDecoder;
import androidx.media3.extractor.text.CuesWithTiming;
import androidx.media3.extractor.text.SubtitleDecoder;
import androidx.media3.extractor.text.SubtitleDecoderException;
import androidx.media3.extractor.text.SubtitleInputBuffer;
import androidx.media3.extractor.text.SubtitleOutputBuffer;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableListIterator;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.md;
import defpackage.r81;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class TextRenderer extends BaseRenderer implements Handler.Callback {
    public SubtitleInputBuffer A;
    public SubtitleOutputBuffer B;
    public SubtitleOutputBuffer C;
    public int D;
    public final Handler E;
    public final TextOutput F;
    public final FormatHolder G;
    public boolean H;
    public boolean I;
    public Format J;
    public long K;
    public long L;
    public final CueDecoder t;
    public final DecoderInputBuffer u;
    public CuesResolver v;
    public final SubtitleDecoderFactory w;
    public boolean x;
    public int y;
    public SubtitleDecoder z;

    public TextRenderer(TextOutput textOutput, Looper looper, SubtitleDecoderFactory subtitleDecoderFactory) {
        Handler handler;
        super(3);
        textOutput.getClass();
        this.F = textOutput;
        if (looper == null) {
            handler = null;
        } else {
            String str = Util.f14242a;
            handler = new Handler(looper, this);
        }
        this.E = handler;
        this.w = subtitleDecoderFactory;
        this.t = new CueDecoder();
        this.u = new DecoderInputBuffer(1);
        this.G = new FormatHolder();
        this.L = -9223372036854775807L;
        this.K = -9223372036854775807L;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void K() {
        this.J = null;
        this.L = -9223372036854775807L;
        V();
        this.K = -9223372036854775807L;
        if (this.z != null) {
            Y();
            SubtitleDecoder subtitleDecoder = this.z;
            subtitleDecoder.getClass();
            subtitleDecoder.release();
            this.z = null;
            this.y = 0;
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void M(boolean z, boolean z2, long j2) {
        this.K = j2;
        CuesResolver cuesResolver = this.v;
        if (cuesResolver != null) {
            cuesResolver.clear();
        }
        V();
        this.H = false;
        this.I = false;
        this.L = -9223372036854775807L;
        Format format = this.J;
        if (format == null || Objects.equals(format.o, "application/x-media3-cues")) {
            return;
        }
        if (this.y == 0) {
            Y();
            SubtitleDecoder subtitleDecoder = this.z;
            subtitleDecoder.getClass();
            subtitleDecoder.flush();
            subtitleDecoder.d(this.m);
            return;
        }
        Y();
        SubtitleDecoder subtitleDecoder2 = this.z;
        subtitleDecoder2.getClass();
        subtitleDecoder2.release();
        this.z = null;
        this.y = 0;
        this.x = true;
        Format format2 = this.J;
        format2.getClass();
        SubtitleDecoder subtitleDecoderA = this.w.a(format2);
        this.z = subtitleDecoderA;
        subtitleDecoderA.d(this.m);
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void R(Format[] formatArr, long j2, long j3, MediaSource.MediaPeriodId mediaPeriodId) {
        Format format = formatArr[0];
        this.J = format;
        if (Objects.equals(format.o, "application/x-media3-cues")) {
            this.v = this.J.M == 1 ? new MergingCuesResolver() : new ReplacingCuesResolver();
            return;
        }
        U();
        if (this.z != null) {
            this.y = 1;
            return;
        }
        this.x = true;
        Format format2 = this.J;
        format2.getClass();
        SubtitleDecoder subtitleDecoderA = this.w.a(format2);
        this.z = subtitleDecoderA;
        subtitleDecoderA.d(this.m);
    }

    public final void U() {
        boolean z = Objects.equals(this.J.o, "application/cea-608") || Objects.equals(this.J.o, "application/x-mp4-cea-608") || Objects.equals(this.J.o, "application/cea-708");
        String str = this.J.o;
        if (z) {
            return;
        }
        md.k(Strings.b("Legacy decoding is disabled, can't handle %s samples (expected %s).", str, "application/x-media3-cues"));
    }

    public final void V() {
        CueGroup cueGroup = new CueGroup(ImmutableList.x(), X(this.K));
        Handler handler = this.E;
        if (handler != null) {
            handler.obtainMessage(1, cueGroup).sendToTarget();
            return;
        }
        ImmutableList immutableList = cueGroup.f14114a;
        TextOutput textOutput = this.F;
        textOutput.n(immutableList);
        textOutput.B(cueGroup);
    }

    public final long W() {
        if (this.D == -1) {
            return Long.MAX_VALUE;
        }
        this.B.getClass();
        if (this.D >= this.B.d()) {
            return Long.MAX_VALUE;
        }
        return this.B.c(this.D);
    }

    public final long X(long j2) {
        Preconditions.q(j2 != -9223372036854775807L);
        return j2 - this.l;
    }

    public final void Y() {
        this.A = null;
        this.D = -1;
        SubtitleOutputBuffer subtitleOutputBuffer = this.B;
        if (subtitleOutputBuffer != null) {
            subtitleOutputBuffer.h();
            this.B = null;
        }
        SubtitleOutputBuffer subtitleOutputBuffer2 = this.C;
        if (subtitleOutputBuffer2 != null) {
            subtitleOutputBuffer2.h();
            this.C = null;
        }
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public final int b(Format format) {
        if (Objects.equals(format.o, "application/x-media3-cues") || this.w.b(format)) {
            return RendererCapabilities.o(format.P == 0 ? 4 : 2, 0, 0, 0);
        }
        return MimeTypes.n(format.o) ? RendererCapabilities.o(1, 0, 0, 0) : RendererCapabilities.o(0, 0, 0, 0);
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.Renderer
    public final boolean e() {
        return this.I;
    }

    /* JADX WARN: Code duplicated, block: B:74:0x01df  */
    @Override // androidx.media3.exoplayer.Renderer
    public final void g(long j2, long j3) {
        boolean z;
        FormatHolder formatHolder;
        boolean z2;
        long jC;
        if (this.o) {
            long j4 = this.L;
            if (j4 != -9223372036854775807L && j2 >= j4) {
                Y();
                this.I = true;
            }
        }
        if (this.I) {
            return;
        }
        Format format = this.J;
        format.getClass();
        boolean zEquals = Objects.equals(format.o, "application/x-media3-cues");
        TextOutput textOutput = this.F;
        Handler handler = this.E;
        FormatHolder formatHolder2 = this.G;
        boolean zB = false;
        zB = false;
        zB = false;
        if (zEquals) {
            this.v.getClass();
            if (!this.H) {
                DecoderInputBuffer decoderInputBuffer = this.u;
                if (T(formatHolder2, decoderInputBuffer, 0) == -4) {
                    if (decoderInputBuffer.f(4)) {
                        this.H = true;
                    } else {
                        decoderInputBuffer.j();
                        ByteBuffer byteBuffer = decoderInputBuffer.f14543e;
                        byteBuffer.getClass();
                        long j5 = decoderInputBuffer.g;
                        byte[] bArrArray = byteBuffer.array();
                        int iArrayOffset = byteBuffer.arrayOffset();
                        int iLimit = byteBuffer.limit();
                        this.t.getClass();
                        Parcel parcelObtain = Parcel.obtain();
                        parcelObtain.unmarshall(bArrArray, iArrayOffset, iLimit);
                        parcelObtain.setDataPosition(0);
                        Bundle bundle = parcelObtain.readBundle(Bundle.class.getClassLoader());
                        parcelObtain.recycle();
                        ArrayList parcelableArrayList = bundle.getParcelableArrayList("c");
                        parcelableArrayList.getClass();
                        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
                        ImmutableList.Builder builder = new ImmutableList.Builder();
                        for (int i2 = 0; i2 < parcelableArrayList.size(); i2++) {
                            Bundle bundle2 = (Bundle) parcelableArrayList.get(i2);
                            bundle2.getClass();
                            builder.e(Cue.b(bundle2));
                        }
                        CuesWithTiming cuesWithTiming = new CuesWithTiming(builder.j(), j5, bundle.getLong(NBSSpanMetricUnit.Day));
                        decoderInputBuffer.g();
                        zB = this.v.b(cuesWithTiming, j2);
                    }
                }
            }
            long jD = this.v.d(this.K);
            if (jD == Long.MIN_VALUE && this.H && !zB) {
                this.I = true;
            }
            if (jD != Long.MIN_VALUE && jD <= j2) {
                zB = true;
            }
            if (zB) {
                ImmutableList immutableListA = this.v.a(j2);
                long jC2 = this.v.c(j2);
                CueGroup cueGroup = new CueGroup(immutableListA, X(jC2));
                if (handler != null) {
                    handler.obtainMessage(1, cueGroup).sendToTarget();
                } else {
                    textOutput.n(cueGroup.f14114a);
                    textOutput.B(cueGroup);
                }
                this.v.e(jC2);
            }
            this.K = j2;
            return;
        }
        U();
        this.K = j2;
        SubtitleOutputBuffer subtitleOutputBuffer = this.C;
        SubtitleDecoderFactory subtitleDecoderFactory = this.w;
        if (subtitleOutputBuffer == null) {
            SubtitleDecoder subtitleDecoder = this.z;
            subtitleDecoder.getClass();
            subtitleDecoder.b(j2);
            try {
                SubtitleDecoder subtitleDecoder2 = this.z;
                subtitleDecoder2.getClass();
                this.C = (SubtitleOutputBuffer) subtitleDecoder2.a();
            } catch (SubtitleDecoderException e2) {
                Log.e("Subtitle decoding failed. streamFormat=" + this.J, e2);
                V();
                Y();
                SubtitleDecoder subtitleDecoder3 = this.z;
                subtitleDecoder3.getClass();
                subtitleDecoder3.release();
                this.z = null;
                this.y = 0;
                this.x = true;
                Format format2 = this.J;
                format2.getClass();
                SubtitleDecoder subtitleDecoderA = subtitleDecoderFactory.a(format2);
                this.z = subtitleDecoderA;
                subtitleDecoderA.d(this.m);
                return;
            }
        }
        if (this.f14567i != 2) {
            return;
        }
        if (this.B != null) {
            long jW = W();
            z = false;
            while (jW <= j2) {
                this.D++;
                jW = W();
                z = true;
            }
        } else {
            z = false;
        }
        SubtitleOutputBuffer subtitleOutputBuffer2 = this.C;
        if (subtitleOutputBuffer2 == null) {
            formatHolder = formatHolder2;
            z2 = z;
        } else if (!subtitleOutputBuffer2.f(4)) {
            formatHolder = formatHolder2;
            if (subtitleOutputBuffer2.f14548c <= j2) {
                SubtitleOutputBuffer subtitleOutputBuffer3 = this.B;
                if (subtitleOutputBuffer3 != null) {
                    z2 = z;
                    subtitleOutputBuffer3.h();
                }
                z2 = z;
                this.D = subtitleOutputBuffer2.a(j2);
                this.B = subtitleOutputBuffer2;
                this.C = null;
                z2 = true;
            }
        } else if (z || W() != Long.MAX_VALUE) {
            formatHolder = formatHolder2;
            z2 = z;
        } else if (this.y == 2) {
            Y();
            SubtitleDecoder subtitleDecoder4 = this.z;
            subtitleDecoder4.getClass();
            subtitleDecoder4.release();
            this.z = null;
            this.y = 0;
            this.x = true;
            Format format3 = this.J;
            format3.getClass();
            SubtitleDecoder subtitleDecoderA2 = subtitleDecoderFactory.a(format3);
            this.z = subtitleDecoderA2;
            formatHolder = formatHolder2;
            subtitleDecoderA2.d(this.m);
        } else {
            formatHolder = formatHolder2;
            Y();
            this.I = true;
        }
        if (z2) {
            z2 = z;
            this.B.getClass();
            int iA = this.B.a(j2);
            if (iA == 0 || this.B.d() == 0) {
                z2 = z;
                z2 = z;
                jC = this.B.f14548c;
            } else {
                SubtitleOutputBuffer subtitleOutputBuffer4 = this.B;
                if (iA == -1) {
                    z2 = z;
                    jC = subtitleOutputBuffer4.c(subtitleOutputBuffer4.d() - 1);
                } else {
                    z2 = z;
                    jC = subtitleOutputBuffer4.c(iA - 1);
                }
            }
            CueGroup cueGroup2 = new CueGroup(this.B.b(j2), X(jC));
            if (handler != null) {
                handler.obtainMessage(1, cueGroup2).sendToTarget();
            } else {
                textOutput.n(cueGroup2.f14114a);
                textOutput.B(cueGroup2);
            }
        }
        z2 = z;
        z2 = z;
        if (this.y == 2) {
            return;
        }
        while (!this.H) {
            try {
                SubtitleInputBuffer subtitleInputBuffer = this.A;
                if (subtitleInputBuffer == null) {
                    SubtitleDecoder subtitleDecoder5 = this.z;
                    subtitleDecoder5.getClass();
                    subtitleInputBuffer = (SubtitleInputBuffer) subtitleDecoder5.e();
                    if (subtitleInputBuffer == null) {
                        return;
                    } else {
                        this.A = subtitleInputBuffer;
                    }
                }
                if (this.y == 1) {
                    subtitleInputBuffer.f14531b = 4;
                    SubtitleDecoder subtitleDecoder6 = this.z;
                    subtitleDecoder6.getClass();
                    subtitleDecoder6.c(subtitleInputBuffer);
                    this.A = null;
                    this.y = 2;
                    return;
                }
                FormatHolder formatHolder3 = formatHolder;
                int iT = T(formatHolder3, subtitleInputBuffer, 0);
                if (iT == -4) {
                    if (subtitleInputBuffer.f(4)) {
                        this.H = true;
                        this.x = false;
                    } else {
                        Format format4 = formatHolder3.f14697b;
                        if (format4 == null) {
                            return;
                        }
                        subtitleInputBuffer.f16680k = format4.t;
                        subtitleInputBuffer.j();
                        this.x &= !subtitleInputBuffer.f(1);
                    }
                    if (!this.x) {
                        SubtitleDecoder subtitleDecoder7 = this.z;
                        subtitleDecoder7.getClass();
                        subtitleDecoder7.c(subtitleInputBuffer);
                        this.A = null;
                    }
                } else if (iT == -3) {
                    return;
                }
                formatHolder = formatHolder3;
            } catch (SubtitleDecoderException e3) {
                Log.e("Subtitle decoding failed. streamFormat=" + this.J, e3);
                V();
                Y();
                SubtitleDecoder subtitleDecoder8 = this.z;
                subtitleDecoder8.getClass();
                subtitleDecoder8.release();
                this.z = null;
                this.y = 0;
                this.x = true;
                Format format5 = this.J;
                format5.getClass();
                SubtitleDecoder subtitleDecoderA3 = subtitleDecoderFactory.a(format5);
                this.z = subtitleDecoderA3;
                subtitleDecoderA3.d(this.m);
                return;
            }
        }
    }

    @Override // androidx.media3.exoplayer.Renderer, androidx.media3.exoplayer.RendererCapabilities
    public final String getName() {
        return "TextRenderer";
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what != 1) {
            r81.b();
            return false;
        }
        CueGroup cueGroup = (CueGroup) message.obj;
        ImmutableList immutableList = cueGroup.f14114a;
        TextOutput textOutput = this.F;
        textOutput.n(immutableList);
        textOutput.B(cueGroup);
        return true;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final boolean isReady() {
        Format format = this.J;
        if (format != null) {
            if (!Objects.equals(format.o, "application/x-media3-cues")) {
                if (!this.I) {
                    if (this.H) {
                        SubtitleOutputBuffer subtitleOutputBuffer = this.B;
                        long j2 = this.K;
                        if (subtitleOutputBuffer == null || subtitleOutputBuffer.d() <= 0 || subtitleOutputBuffer.c(subtitleOutputBuffer.d() - 1) <= j2) {
                            SubtitleOutputBuffer subtitleOutputBuffer2 = this.C;
                            long j3 = this.K;
                            if ((subtitleOutputBuffer2 == null || subtitleOutputBuffer2.d() <= 0 || subtitleOutputBuffer2.c(subtitleOutputBuffer2.d() - 1) <= j3) && this.A != null) {
                            }
                        }
                    }
                }
                return false;
            }
            CuesResolver cuesResolver = this.v;
            cuesResolver.getClass();
            if (cuesResolver.d(this.K) == Long.MIN_VALUE) {
                try {
                    s();
                    return true;
                } catch (IOException unused) {
                    return false;
                }
            }
        }
        return true;
    }

    public TextRenderer(TextOutput textOutput, Looper looper) {
        this(textOutput, looper, SubtitleDecoderFactory.f15667a);
    }
}
