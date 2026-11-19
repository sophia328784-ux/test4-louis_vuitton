package androidx.media;

import android.media.AudioAttributes;

/* JADX INFO: loaded from: classes.dex */
public class AudioAttributesImplApi21 implements AudioAttributesImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public AudioAttributes f13649a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f13650b = -1;

    public final boolean equals(Object obj) {
        if (obj instanceof AudioAttributesImplApi21) {
            return this.f13649a.equals(((AudioAttributesImplApi21) obj).f13649a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f13649a.hashCode();
    }

    public final String toString() {
        return "AudioAttributesCompat: audioattributes=" + this.f13649a;
    }
}
