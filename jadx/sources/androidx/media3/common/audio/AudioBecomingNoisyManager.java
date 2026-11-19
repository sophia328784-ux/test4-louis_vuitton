package androidx.media3.common.audio;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Looper;
import androidx.media3.common.audio.AudioBecomingNoisyManager;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.HandlerWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class AudioBecomingNoisyManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f14027a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AudioBecomingNoisyReceiver f14028b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HandlerWrapper f14029c;
    public boolean d;

    public final class AudioBecomingNoisyReceiver extends BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Listener f14030a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final HandlerWrapper f14031b;

        public AudioBecomingNoisyReceiver(HandlerWrapper handlerWrapper, Listener listener) {
            this.f14031b = handlerWrapper;
            this.f14030a = listener;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                this.f14031b.k(new Runnable() { // from class: androidx.media3.common.audio.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioBecomingNoisyManager.AudioBecomingNoisyReceiver audioBecomingNoisyReceiver = this.f14092b;
                        if (AudioBecomingNoisyManager.this.d) {
                            audioBecomingNoisyReceiver.f14030a.s();
                        }
                    }
                });
            }
        }
    }

    public interface Listener {
        void s();
    }

    public AudioBecomingNoisyManager(Context context, Looper looper, Looper looper2, Listener listener, Clock clock) {
        this.f14027a = context.getApplicationContext();
        this.f14029c = clock.e(looper, null);
        this.f14028b = new AudioBecomingNoisyReceiver(clock.e(looper2, null), listener);
    }

    public final void a(boolean z) {
        if (z == this.d) {
            return;
        }
        HandlerWrapper handlerWrapper = this.f14029c;
        if (z) {
            final int i2 = 0;
            handlerWrapper.k(new Runnable(this) { // from class: y9

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ AudioBecomingNoisyManager f81328c;

                {
                    this.f81328c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i3 = i2;
                    AudioBecomingNoisyManager audioBecomingNoisyManager = this.f81328c;
                    switch (i3) {
                        case 0:
                            audioBecomingNoisyManager.f14027a.registerReceiver(audioBecomingNoisyManager.f14028b, new IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
                            break;
                        default:
                            audioBecomingNoisyManager.f14027a.unregisterReceiver(audioBecomingNoisyManager.f14028b);
                            break;
                    }
                }
            });
            this.d = true;
        } else {
            final int i3 = 1;
            handlerWrapper.k(new Runnable(this) { // from class: y9

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ AudioBecomingNoisyManager f81328c;

                {
                    this.f81328c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i4 = i3;
                    AudioBecomingNoisyManager audioBecomingNoisyManager = this.f81328c;
                    switch (i4) {
                        case 0:
                            audioBecomingNoisyManager.f14027a.registerReceiver(audioBecomingNoisyManager.f14028b, new IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
                            break;
                        default:
                            audioBecomingNoisyManager.f14027a.unregisterReceiver(audioBecomingNoisyManager.f14028b);
                            break;
                    }
                }
            });
            this.d = false;
        }
    }
}
