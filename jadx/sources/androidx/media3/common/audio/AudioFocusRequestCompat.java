package androidx.media3.common.audio;

import android.media.AudioFocusRequest;
import android.os.Handler;
import androidx.media3.common.AudioAttributes;
import defpackage.ca;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class AudioFocusRequestCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f14039a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ca f14040b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f14041c;
    public final AudioAttributes d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f14042e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AudioFocusRequest f14043f;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f14044a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public AudioAttributes f14045b = AudioAttributes.f13689i;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f14046c;
        public boolean d;

        public Builder(int i2) {
            this.f14044a = i2;
        }
    }

    public AudioFocusRequestCompat(int i2, ca caVar, Handler handler, AudioAttributes audioAttributes, boolean z, boolean z2) {
        this.f14039a = i2;
        this.f14041c = handler;
        this.d = audioAttributes;
        this.f14042e = z;
        this.f14040b = caVar;
        this.f14043f = new AudioFocusRequest.Builder(i2).setAudioAttributes(audioAttributes.c()).setWillPauseWhenDucked(z).setOnAudioFocusChangeListener(caVar, handler).setAcceptsDelayedFocusGain(z2).build();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AudioFocusRequestCompat) {
            AudioFocusRequestCompat audioFocusRequestCompat = (AudioFocusRequestCompat) obj;
            if (this.f14039a == audioFocusRequestCompat.f14039a && this.f14042e == audioFocusRequestCompat.f14042e && this.f14040b == audioFocusRequestCompat.f14040b && Objects.equals(this.f14041c, audioFocusRequestCompat.f14041c) && Objects.equals(this.d, audioFocusRequestCompat.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f14039a), this.f14040b, this.f14041c, this.d, Boolean.valueOf(this.f14042e));
    }
}
