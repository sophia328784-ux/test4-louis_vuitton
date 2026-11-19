package androidx.media3.decoder;

/* JADX INFO: loaded from: classes.dex */
public abstract class DecoderOutputBuffer extends Buffer {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f14548c;
    public boolean d;

    public interface Owner<S extends DecoderOutputBuffer> {
        void a(DecoderOutputBuffer decoderOutputBuffer);
    }

    public void g() {
        this.f14531b = 0;
        this.f14548c = 0L;
        this.d = false;
    }

    public abstract void h();
}
