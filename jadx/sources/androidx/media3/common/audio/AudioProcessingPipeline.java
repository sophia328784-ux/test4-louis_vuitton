package androidx.media3.common.audio;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class AudioProcessingPipeline {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImmutableList f14048a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f14049b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ByteBuffer[] f14050c = new ByteBuffer[0];
    public boolean d;

    public AudioProcessingPipeline(ImmutableList<AudioProcessor> immutableList) {
        this.f14048a = immutableList;
        AudioProcessor.AudioFormat audioFormat = AudioProcessor.AudioFormat.f14052e;
        this.d = false;
    }

    public final void a() {
        AudioProcessor.StreamMetadata streamMetadata = AudioProcessor.StreamMetadata.f14056b;
        ArrayList arrayList = this.f14049b;
        arrayList.clear();
        this.d = false;
        long jK = streamMetadata.f14057a;
        int i2 = 0;
        while (true) {
            ImmutableList immutableList = this.f14048a;
            if (i2 >= immutableList.size()) {
                break;
            }
            AudioProcessor audioProcessor = (AudioProcessor) immutableList.get(i2);
            audioProcessor.h(new AudioProcessor.StreamMetadata(jK));
            if (audioProcessor.isActive()) {
                jK = audioProcessor.k(jK);
                Preconditions.q(jK >= 0);
                arrayList.add(audioProcessor);
            }
            i2++;
        }
        this.f14050c = new ByteBuffer[arrayList.size()];
        for (int i3 = 0; i3 <= b(); i3++) {
            this.f14050c[i3] = ((AudioProcessor) arrayList.get(i3)).f();
        }
    }

    public final int b() {
        return this.f14050c.length - 1;
    }

    public final boolean c() {
        return this.d && ((AudioProcessor) this.f14049b.get(b())).e() && !this.f14050c[b()].hasRemaining();
    }

    public final boolean d() {
        return !this.f14049b.isEmpty();
    }

    public final void e(ByteBuffer byteBuffer) {
        boolean z;
        for (boolean z2 = true; z2; z2 = z) {
            z = false;
            for (int i2 = 0; i2 <= b(); i2++) {
                if (!this.f14050c[i2].hasRemaining()) {
                    ArrayList arrayList = this.f14049b;
                    AudioProcessor audioProcessor = (AudioProcessor) arrayList.get(i2);
                    if (!audioProcessor.e()) {
                        ByteBuffer byteBuffer2 = i2 > 0 ? this.f14050c[i2 - 1] : byteBuffer.hasRemaining() ? byteBuffer : AudioProcessor.f14051a;
                        long jRemaining = byteBuffer2.remaining();
                        audioProcessor.g(byteBuffer2);
                        this.f14050c[i2] = audioProcessor.f();
                        z |= jRemaining - ((long) byteBuffer2.remaining()) > 0 || this.f14050c[i2].hasRemaining();
                    } else if (!this.f14050c[i2].hasRemaining() && i2 < b()) {
                        ((AudioProcessor) arrayList.get(i2 + 1)).i();
                    }
                }
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioProcessingPipeline)) {
            return false;
        }
        ImmutableList immutableList = ((AudioProcessingPipeline) obj).f14048a;
        ImmutableList immutableList2 = this.f14048a;
        if (immutableList2.size() != immutableList.size()) {
            return false;
        }
        for (int i2 = 0; i2 < immutableList2.size(); i2++) {
            if (immutableList2.get(i2) != immutableList.get(i2)) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        return this.f14048a.hashCode();
    }
}
