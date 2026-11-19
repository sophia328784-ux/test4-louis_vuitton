package androidx.media3.exoplayer.util;

import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.Spatializer;
import android.media.Spatializer$OnSpatializerStateChangedListener;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.Format;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.common.util.Util;
import com.github.druk.dnssd.NSType;
import com.google.common.collect.ImmutableList;
import defpackage.dc;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class SpatializerWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Spatializer f15860a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f15861b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f15862c;
    public final Spatializer$OnSpatializerStateChangedListener d;

    public SpatializerWrapper(Context context, final Runnable runnable, Boolean bool) {
        AudioManager audioManagerA = context == null ? null : AudioManagerCompat.a(context);
        if (audioManagerA == null || (bool != null && bool.booleanValue())) {
            this.f15860a = null;
            this.f15861b = false;
            this.f15862c = null;
            this.d = null;
            return;
        }
        Spatializer spatializer = audioManagerA.getSpatializer();
        this.f15860a = spatializer;
        this.f15861b = spatializer.getImmersiveAudioLevel() != 0;
        if (runnable == null) {
            this.f15862c = null;
            this.d = null;
            return;
        }
        Looper looperMyLooper = Looper.myLooper();
        looperMyLooper.getClass();
        Handler handler = new Handler(looperMyLooper);
        this.f15862c = handler;
        Spatializer$OnSpatializerStateChangedListener spatializer$OnSpatializerStateChangedListener = new Spatializer$OnSpatializerStateChangedListener() { // from class: androidx.media3.exoplayer.util.SpatializerWrapper.1
            public final void onSpatializerAvailableChanged(Spatializer spatializer2, boolean z) {
                runnable.run();
            }

            public final void onSpatializerEnabledChanged(Spatializer spatializer2, boolean z) {
                runnable.run();
            }
        };
        this.d = spatializer$OnSpatializerStateChangedListener;
        spatializer.addOnSpatializerStateChangedListener(new dc(handler, 0), spatializer$OnSpatializerStateChangedListener);
    }

    public final boolean a(AudioAttributes audioAttributes, Format format) {
        if (this.f15860a == null || !this.f15861b || !c() || !d()) {
            return false;
        }
        String str = format.o;
        int i2 = format.G;
        if (Objects.equals(str, "audio/eac3-joc")) {
            if (i2 == 16) {
                i2 = 12;
            }
        } else if (Objects.equals(str, "audio/iamf")) {
            if (i2 == -1) {
                i2 = 6;
            }
        } else if (Objects.equals(str, "audio/ac4") && (i2 == 18 || i2 == 21)) {
            i2 = 24;
        }
        int iT = Util.t(i2);
        if (iT == 0) {
            return false;
        }
        AudioFormat.Builder channelMask = new AudioFormat.Builder().setEncoding(2).setChannelMask(iT);
        int i3 = format.H;
        if (i3 != -1) {
            channelMask.setSampleRate(i3);
        }
        Spatializer spatializer = this.f15860a;
        spatializer.getClass();
        return spatializer.canBeSpatialized(audioAttributes.c(), channelMask.build());
    }

    public final List b() {
        if (this.f15860a == null || !this.f15861b || !c() || !d()) {
            return ImmutableList.x();
        }
        if (Build.VERSION.SDK_INT < 36) {
            return ImmutableList.A(Integer.valueOf(NSType.AXFR));
        }
        Spatializer spatializer = this.f15860a;
        spatializer.getClass();
        return spatializer.getSpatializedChannelMasks();
    }

    public final boolean c() {
        Spatializer spatializer = this.f15860a;
        return spatializer != null && spatializer.isAvailable();
    }

    public final boolean d() {
        Spatializer spatializer = this.f15860a;
        return spatializer != null && spatializer.isEnabled();
    }

    public final void e() {
        Spatializer$OnSpatializerStateChangedListener spatializer$OnSpatializerStateChangedListener;
        Handler handler;
        Spatializer spatializer = this.f15860a;
        if (spatializer == null || (spatializer$OnSpatializerStateChangedListener = this.d) == null || (handler = this.f15862c) == null) {
            return;
        }
        spatializer.removeOnSpatializerStateChangedListener(spatializer$OnSpatializerStateChangedListener);
        handler.removeCallbacksAndMessages(null);
    }
}
