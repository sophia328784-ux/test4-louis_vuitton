package androidx.media3.extractor.text.cea;

import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderOutputBuffer;
import androidx.media3.extractor.text.Subtitle;
import androidx.media3.extractor.text.SubtitleDecoder;
import androidx.media3.extractor.text.SubtitleInputBuffer;
import androidx.media3.extractor.text.SubtitleOutputBuffer;
import com.google.common.base.Preconditions;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes.dex */
abstract class CeaDecoder implements SubtitleDecoder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayDeque f16733a = new ArrayDeque();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayDeque f16734b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayDeque f16735c;
    public CeaInputBuffer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f16736e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f16737f;
    public long g;

    public static final class CeaInputBuffer extends SubtitleInputBuffer implements Comparable<CeaInputBuffer> {
        public long l;

        @Override // java.lang.Comparable
        public final int compareTo(CeaInputBuffer ceaInputBuffer) {
            CeaInputBuffer ceaInputBuffer2 = ceaInputBuffer;
            if (f(4) != ceaInputBuffer2.f(4)) {
                return f(4) ? 1 : -1;
            }
            long j2 = this.g - ceaInputBuffer2.g;
            if (j2 == 0) {
                j2 = this.l - ceaInputBuffer2.l;
                if (j2 == 0) {
                    return 0;
                }
            }
            return j2 > 0 ? 1 : -1;
        }
    }

    public static final class CeaOutputBuffer extends SubtitleOutputBuffer {
        public final DecoderOutputBuffer.Owner g;

        public CeaOutputBuffer(DecoderOutputBuffer.Owner<CeaOutputBuffer> owner) {
            this.g = owner;
        }

        @Override // androidx.media3.decoder.DecoderOutputBuffer
        public final void h() {
            this.g.a(this);
        }
    }

    public CeaDecoder() {
        for (int i2 = 0; i2 < 10; i2++) {
            this.f16733a.add(new CeaInputBuffer());
        }
        this.f16734b = new ArrayDeque();
        for (int i3 = 0; i3 < 2; i3++) {
            this.f16734b.add(new CeaOutputBuffer(new DecoderOutputBuffer.Owner() { // from class: androidx.media3.extractor.text.cea.b
                @Override // androidx.media3.decoder.DecoderOutputBuffer.Owner
                public final void a(DecoderOutputBuffer decoderOutputBuffer) {
                    CeaDecoder.CeaOutputBuffer ceaOutputBuffer = (CeaDecoder.CeaOutputBuffer) decoderOutputBuffer;
                    ceaOutputBuffer.g();
                    this.f16739a.f16734b.add(ceaOutputBuffer);
                }
            }));
        }
        this.f16735c = new ArrayDeque();
        this.g = -9223372036854775807L;
    }

    @Override // androidx.media3.extractor.text.SubtitleDecoder
    public void b(long j2) {
        this.f16736e = j2;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0033  */
    @Override // androidx.media3.decoder.Decoder
    public final void c(SubtitleInputBuffer subtitleInputBuffer) {
        Preconditions.g(subtitleInputBuffer == this.d);
        CeaInputBuffer ceaInputBuffer = (CeaInputBuffer) subtitleInputBuffer;
        if (ceaInputBuffer.f(4)) {
            long j2 = this.f16737f;
            this.f16737f = 1 + j2;
            ceaInputBuffer.l = j2;
            this.f16735c.add(ceaInputBuffer);
        } else {
            long j3 = ceaInputBuffer.g;
            if (j3 != Long.MIN_VALUE) {
                long j4 = this.g;
                if (j4 == -9223372036854775807L || j3 >= j4) {
                    long j5 = this.f16737f;
                    this.f16737f = 1 + j5;
                    ceaInputBuffer.l = j5;
                    this.f16735c.add(ceaInputBuffer);
                } else {
                    ceaInputBuffer.g();
                    this.f16733a.add(ceaInputBuffer);
                }
            } else {
                long j6 = this.f16737f;
                this.f16737f = 1 + j6;
                ceaInputBuffer.l = j6;
                this.f16735c.add(ceaInputBuffer);
            }
        }
        this.d = null;
    }

    @Override // androidx.media3.decoder.Decoder
    public final void d(long j2) {
        this.g = j2;
    }

    @Override // androidx.media3.decoder.Decoder
    public final Object e() {
        Preconditions.q(this.d == null);
        ArrayDeque arrayDeque = this.f16733a;
        if (arrayDeque.isEmpty()) {
            return null;
        }
        CeaInputBuffer ceaInputBuffer = (CeaInputBuffer) arrayDeque.pollFirst();
        this.d = ceaInputBuffer;
        return ceaInputBuffer;
    }

    @Override // androidx.media3.decoder.Decoder
    public void flush() {
        ArrayDeque arrayDeque;
        this.f16737f = 0L;
        this.f16736e = 0L;
        while (true) {
            ArrayDeque arrayDeque2 = this.f16735c;
            boolean zIsEmpty = arrayDeque2.isEmpty();
            arrayDeque = this.f16733a;
            if (zIsEmpty) {
                break;
            }
            CeaInputBuffer ceaInputBuffer = (CeaInputBuffer) arrayDeque2.poll();
            String str = Util.f14242a;
            ceaInputBuffer.g();
            arrayDeque.add(ceaInputBuffer);
        }
        CeaInputBuffer ceaInputBuffer2 = this.d;
        if (ceaInputBuffer2 != null) {
            ceaInputBuffer2.g();
            arrayDeque.add(ceaInputBuffer2);
            this.d = null;
        }
    }

    public abstract Subtitle g();

    public abstract void h(SubtitleInputBuffer subtitleInputBuffer);

    @Override // androidx.media3.decoder.Decoder
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public SubtitleOutputBuffer a() {
        ArrayDeque arrayDeque = this.f16734b;
        if (arrayDeque.isEmpty()) {
            return null;
        }
        while (true) {
            ArrayDeque arrayDeque2 = this.f16735c;
            if (arrayDeque2.isEmpty()) {
                return null;
            }
            CeaInputBuffer ceaInputBuffer = (CeaInputBuffer) arrayDeque2.peek();
            String str = Util.f14242a;
            if (ceaInputBuffer.g > this.f16736e) {
                return null;
            }
            CeaInputBuffer ceaInputBuffer2 = (CeaInputBuffer) arrayDeque2.poll();
            boolean zF = ceaInputBuffer2.f(4);
            ArrayDeque arrayDeque3 = this.f16733a;
            if (zF) {
                SubtitleOutputBuffer subtitleOutputBuffer = (SubtitleOutputBuffer) arrayDeque.pollFirst();
                subtitleOutputBuffer.e(4);
                ceaInputBuffer2.g();
                arrayDeque3.add(ceaInputBuffer2);
                return subtitleOutputBuffer;
            }
            h(ceaInputBuffer2);
            if (j()) {
                Subtitle subtitleG = g();
                SubtitleOutputBuffer subtitleOutputBuffer2 = (SubtitleOutputBuffer) arrayDeque.pollFirst();
                long j2 = ceaInputBuffer2.g;
                subtitleOutputBuffer2.f14548c = j2;
                subtitleOutputBuffer2.f16681e = subtitleG;
                subtitleOutputBuffer2.f16682f = j2;
                ceaInputBuffer2.g();
                arrayDeque3.add(ceaInputBuffer2);
                return subtitleOutputBuffer2;
            }
            ceaInputBuffer2.g();
            arrayDeque3.add(ceaInputBuffer2);
        }
    }

    public abstract boolean j();

    @Override // androidx.media3.decoder.Decoder
    public void release() {
    }
}
