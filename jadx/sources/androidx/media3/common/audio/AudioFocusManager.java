package androidx.media3.common.audio;

import android.content.Context;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.audio.AudioFocusManager;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import defpackage.da;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes.dex */
public final class AudioFocusManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Supplier f14033a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f14034b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PlayerControl f14035c;
    public AudioAttributes d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f14037f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public AudioFocusRequestCompat f14038h;
    public float g = 1.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f14036e = 0;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface PlayerCommand {
    }

    public interface PlayerControl {
        void e(int i2);

        void g();
    }

    public AudioFocusManager(Context context, Looper looper, PlayerControl playerControl) {
        this.f14033a = Suppliers.a(new da(context, 0));
        this.f14035c = playerControl;
        this.f14034b = new Handler(looper);
    }

    public final void a() {
        int i2 = this.f14036e;
        if (i2 == 1 || i2 == 0 || this.f14038h == null) {
            return;
        }
        AudioManager audioManager = (AudioManager) this.f14033a.get();
        AudioFocusRequest audioFocusRequest = this.f14038h.f14043f;
        audioFocusRequest.getClass();
        audioManager.abandonAudioFocusRequest(audioFocusRequest);
    }

    public final void b(int i2) {
        if (this.f14036e == i2) {
            return;
        }
        this.f14036e = i2;
        float f2 = i2 == 4 ? 0.2f : 1.0f;
        if (this.g == f2) {
            return;
        }
        this.g = f2;
        PlayerControl playerControl = this.f14035c;
        if (playerControl != null) {
            playerControl.g();
        }
    }

    /* JADX WARN: Type inference failed for: r6v0, types: [ca] */
    public final int c(int i2, boolean z) {
        int i3;
        AudioFocusRequestCompat.Builder builder;
        boolean z2 = false;
        if (i2 == 1 || (i3 = this.f14037f) != 1) {
            a();
            b(0);
            return 1;
        }
        int i4 = this.f14036e;
        if (z) {
            if (i4 != 2) {
                AudioFocusRequestCompat audioFocusRequestCompat = this.f14038h;
                if (audioFocusRequestCompat == null) {
                    if (audioFocusRequestCompat == null) {
                        builder = new AudioFocusRequestCompat.Builder(i3);
                    } else {
                        AudioFocusRequestCompat.Builder builder2 = new AudioFocusRequestCompat.Builder();
                        builder2.f14044a = audioFocusRequestCompat.f14039a;
                        builder2.f14045b = audioFocusRequestCompat.d;
                        builder2.f14046c = audioFocusRequestCompat.f14042e;
                        builder = builder2;
                    }
                    AudioAttributes audioAttributes = this.d;
                    if (audioAttributes != null && audioAttributes.f13692a == 1) {
                        z2 = true;
                    }
                    audioAttributes.getClass();
                    builder.f14045b = audioAttributes;
                    builder.f14046c = z2;
                    builder.d = true;
                    ?? r6 = new AudioManager.OnAudioFocusChangeListener() { // from class: ca
                        @Override // android.media.AudioManager.OnAudioFocusChangeListener
                        public final void onAudioFocusChange(int i5) {
                            AudioAttributes audioAttributes2;
                            AudioFocusManager audioFocusManager = this.f21104a;
                            audioFocusManager.getClass();
                            if (i5 == -3 || i5 == -2) {
                                if (i5 != -2 && ((audioAttributes2 = audioFocusManager.d) == null || audioAttributes2.f13692a != 1)) {
                                    audioFocusManager.b(4);
                                    return;
                                }
                                AudioFocusManager.PlayerControl playerControl = audioFocusManager.f14035c;
                                if (playerControl != null) {
                                    playerControl.e(0);
                                }
                                audioFocusManager.b(3);
                                return;
                            }
                            if (i5 == -1) {
                                AudioFocusManager.PlayerControl playerControl2 = audioFocusManager.f14035c;
                                if (playerControl2 != null) {
                                    playerControl2.e(-1);
                                }
                                audioFocusManager.a();
                                audioFocusManager.b(1);
                                return;
                            }
                            if (i5 != 1) {
                                a.u(i5, "Unknown focus change type: ");
                                return;
                            }
                            audioFocusManager.b(2);
                            AudioFocusManager.PlayerControl playerControl3 = audioFocusManager.f14035c;
                            if (playerControl3 != null) {
                                playerControl3.e(1);
                            }
                        }
                    };
                    Handler handler = this.f14034b;
                    handler.getClass();
                    this.f14038h = new AudioFocusRequestCompat(builder.f14044a, r6, handler, builder.f14045b, builder.f14046c, builder.d);
                }
                AudioManager audioManager = (AudioManager) this.f14033a.get();
                AudioFocusRequest audioFocusRequest = this.f14038h.f14043f;
                audioFocusRequest.getClass();
                int iRequestAudioFocus = audioManager.requestAudioFocus(audioFocusRequest);
                if (iRequestAudioFocus == 1 || iRequestAudioFocus == 2) {
                    b(2);
                    return 1;
                }
                b(1);
                return -1;
            }
        } else {
            if (i4 == 1) {
                return -1;
            }
            if (i4 == 3) {
                return 0;
            }
        }
        return 1;
    }
}
