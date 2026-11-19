package androidx.media3.exoplayer.audio;

import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.os.Build;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultAudioOffloadSupportProvider implements DefaultAudioSink.AudioOffloadSupportProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f14986a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Boolean f14987b;

    public DefaultAudioOffloadSupportProvider(Context context) {
        this.f14986a = context == null ? null : context.getApplicationContext();
    }

    public final AudioOffloadSupport a(AudioAttributes audioAttributes, Format format) {
        boolean zBooleanValue;
        int i2;
        format.getClass();
        audioAttributes.getClass();
        int i3 = format.H;
        if (i3 == -1) {
            return AudioOffloadSupport.d;
        }
        Boolean bool = this.f14987b;
        boolean z = false;
        if (bool != null) {
            zBooleanValue = bool.booleanValue();
        } else {
            Context context = this.f14986a;
            if (context != null) {
                String parameters = AudioManagerCompat.a(context).getParameters("offloadVariableRateSupported");
                this.f14987b = Boolean.valueOf(parameters != null && parameters.equals("offloadVariableRateSupported=1"));
            } else {
                this.f14987b = Boolean.FALSE;
            }
            zBooleanValue = this.f14987b.booleanValue();
        }
        String str = format.o;
        str.getClass();
        int iD = MimeTypes.d(str, format.f13763k);
        if (iD == 0 || (i2 = Build.VERSION.SDK_INT) < Util.s(iD)) {
            return AudioOffloadSupport.d;
        }
        int iT = Util.t(format.G);
        if (iT == 0) {
            return AudioOffloadSupport.d;
        }
        try {
            AudioFormat audioFormatBuild = new AudioFormat.Builder().setSampleRate(i3).setChannelMask(iT).setEncoding(iD).build();
            if (i2 >= 33) {
                int directPlaybackSupport = AudioManager.getDirectPlaybackSupport(audioFormatBuild, audioAttributes.c());
                if ((directPlaybackSupport & 1) == 0) {
                    return AudioOffloadSupport.d;
                }
                z = (directPlaybackSupport & 3) == 3;
                AudioOffloadSupport.Builder builder = new AudioOffloadSupport.Builder();
                builder.f14884a = true;
                builder.f14885b = z;
                builder.f14886c = zBooleanValue;
                return builder.a();
            }
            if (i2 < 31) {
                if (!AudioManager.isOffloadedPlaybackSupported(audioFormatBuild, audioAttributes.c())) {
                    return AudioOffloadSupport.d;
                }
                AudioOffloadSupport.Builder builder2 = new AudioOffloadSupport.Builder();
                builder2.f14884a = true;
                builder2.f14886c = zBooleanValue;
                return builder2.a();
            }
            int playbackOffloadSupport = AudioManager.getPlaybackOffloadSupport(audioFormatBuild, audioAttributes.c());
            if (playbackOffloadSupport == 0) {
                return AudioOffloadSupport.d;
            }
            AudioOffloadSupport.Builder builder3 = new AudioOffloadSupport.Builder();
            if (i2 > 32 && playbackOffloadSupport == 2) {
                z = true;
            }
            builder3.f14884a = true;
            builder3.f14885b = z;
            builder3.f14886c = zBooleanValue;
            return builder3.a();
        } catch (IllegalArgumentException unused) {
            return AudioOffloadSupport.d;
        }
    }

    public DefaultAudioOffloadSupportProvider() {
        this(null);
    }
}
