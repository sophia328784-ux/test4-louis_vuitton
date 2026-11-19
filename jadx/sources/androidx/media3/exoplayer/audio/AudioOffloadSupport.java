package androidx.media3.exoplayer.audio;

import defpackage.md;

/* JADX INFO: loaded from: classes.dex */
public final class AudioOffloadSupport {
    public static final AudioOffloadSupport d = new Builder().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f14881a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f14882b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f14883c;

    public AudioOffloadSupport(Builder builder) {
        this.f14881a = builder.f14884a;
        this.f14882b = builder.f14885b;
        this.f14883c = builder.f14886c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || AudioOffloadSupport.class != obj.getClass()) {
            return false;
        }
        AudioOffloadSupport audioOffloadSupport = (AudioOffloadSupport) obj;
        return this.f14881a == audioOffloadSupport.f14881a && this.f14882b == audioOffloadSupport.f14882b && this.f14883c == audioOffloadSupport.f14883c;
    }

    public final int hashCode() {
        return ((this.f14881a ? 1 : 0) << 2) + ((this.f14882b ? 1 : 0) << 1) + (this.f14883c ? 1 : 0);
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f14884a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f14885b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f14886c;

        public Builder(AudioOffloadSupport audioOffloadSupport) {
            this.f14884a = audioOffloadSupport.f14881a;
            this.f14885b = audioOffloadSupport.f14882b;
            this.f14886c = audioOffloadSupport.f14883c;
        }

        public final AudioOffloadSupport a() {
            if (this.f14884a || !(this.f14885b || this.f14886c)) {
                return new AudioOffloadSupport(this);
            }
            md.k("Secondary offload attribute fields are true but primary isFormatSupported is false");
            return null;
        }

        public Builder() {
        }
    }
}
