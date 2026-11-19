package androidx.camera.video.internal.audio;

import defpackage.md;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2939b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AudioSource f2940c;
    public final /* synthetic */ boolean d;

    public /* synthetic */ b(AudioSource audioSource, boolean z, int i2) {
        this.f2939b = i2;
        this.f2940c = audioSource;
        this.d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f2939b;
        int i3 = 1;
        boolean z = this.d;
        AudioSource audioSource = this.f2940c;
        switch (i2) {
            case 0:
                int iOrdinal = audioSource.g.ordinal();
                if (iOrdinal == 0) {
                    audioSource.f2887b.set(null);
                    audioSource.f2888c.set(false);
                    audioSource.c(AudioSource.InternalState.STARTED);
                    audioSource.f2886a.execute(new b(audioSource, z, i3));
                    audioSource.e();
                    break;
                } else if (iOrdinal == 2) {
                    md.h("AudioSource is released");
                    break;
                }
                break;
            default:
                int iOrdinal2 = audioSource.g.ordinal();
                if (iOrdinal2 == 0 || iOrdinal2 == 1) {
                    if (audioSource.r != z) {
                        audioSource.r = z;
                        if (audioSource.g == AudioSource.InternalState.STARTED) {
                            audioSource.a();
                        }
                        break;
                    }
                } else if (iOrdinal2 == 2) {
                    md.h("AudioSource is released");
                    break;
                }
                break;
        }
    }
}
