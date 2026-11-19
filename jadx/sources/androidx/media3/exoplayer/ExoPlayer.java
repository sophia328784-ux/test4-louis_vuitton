package androidx.media3.exoplayer;

import android.content.Context;
import android.os.Build;
import android.os.Looper;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.Player;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.SystemClock;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;
import androidx.media3.exoplayer.image.ImageOutput;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import com.github.druk.dnssd.DNSSD;
import com.google.common.base.Ascii;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.networkbench.agent.impl.background.NBSApplicationStateMonitor;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import defpackage.da;
import defpackage.mw;
import defpackage.uh;
import defpackage.ur;
import defpackage.ws;

/* JADX INFO: loaded from: classes.dex */
public interface ExoPlayer extends Player {

    public interface AudioOffloadListener {
        default void A() {
        }
    }

    public static class PreloadConfiguration {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final PreloadConfiguration f14642b = new PreloadConfiguration(-9223372036854775807L);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f14643a;

        public PreloadConfiguration(long j2) {
            this.f14643a = j2;
        }
    }

    void P0();

    void T0();

    void b(ProgressiveMediaSource progressiveMediaSource);

    @Override // androidx.media3.common.Player
    ExoPlaybackException e();

    boolean isScrubbingModeEnabled();

    void setImageOutput(ImageOutput imageOutput);

    void setScrubbingModeEnabled(boolean z);

    public static final class Builder {
        public static final int E;
        public static final boolean F;
        public boolean A;
        public final String B;
        public final SuitableOutputChecker C;
        public final boolean D;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f14633a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SystemClock f14634b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Supplier f14635c;
        public Supplier d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Supplier f14636e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Supplier f14637f;
        public final Supplier g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Function f14638h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Looper f14639i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f14640j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final AudioAttributes f14641k;
        public final int l;
        public final boolean m;
        public final SeekParameters n;
        public final ScrubbingModeParameters o;
        public final long p;
        public final long q;
        public final long r;
        public final DefaultLivePlaybackSpeedControl s;
        public final long t;
        public final long u;
        public final int v;
        public final int w;
        public final int x;
        public final int y;
        public final boolean z;

        static {
            String str = Util.f14242a;
            String strC = Ascii.c(Build.DEVICE);
            E = (strC.contains("emulator") || strC.contains("emu64a") || strC.contains("emu64x") || strC.contains("generic")) ? NBSApplicationStateMonitor.ALTERNATEPERIOD : 10000;
            F = true;
        }

        public Builder(Context context, Supplier supplier, Supplier supplier2, Supplier supplier3, Supplier supplier4, Supplier supplier5, Function function) {
            context.getClass();
            this.f14633a = context;
            this.f14635c = supplier;
            this.d = supplier2;
            this.f14636e = supplier3;
            this.f14637f = supplier4;
            this.g = supplier5;
            this.f14638h = function;
            String str = Util.f14242a;
            Looper looperMyLooper = Looper.myLooper();
            this.f14639i = looperMyLooper == null ? Looper.getMainLooper() : looperMyLooper;
            this.f14641k = AudioAttributes.f13689i;
            this.l = 1;
            this.m = true;
            this.n = SeekParameters.d;
            this.p = LiveTranslationEntity.DefaultSentenceTimeOut;
            this.q = 15000L;
            this.r = HarvestConfiguration.SLOW_USER_ACTION_THRESHOLD;
            this.o = ScrubbingModeParameters.g;
            DefaultLivePlaybackSpeedControl.Builder builder = new DefaultLivePlaybackSpeedControl.Builder();
            this.s = new DefaultLivePlaybackSpeedControl(builder.f14595a, builder.f14596b, builder.f14597c);
            this.f14634b = Clock.f14143a;
            this.t = 500L;
            this.u = 2000L;
            this.v = 600000;
            boolean z = F;
            this.w = z ? E : Integer.MAX_VALUE;
            this.x = z ? DNSSD.DNSSD_DEFAULT_TIMEOUT : Integer.MAX_VALUE;
            this.y = 600000;
            this.z = true;
            this.B = "";
            this.f14640j = -1000;
            new DefaultSuitableOutputChecker();
            this.D = true;
        }

        public final ExoPlayer a() {
            Preconditions.q(!this.A);
            this.A = true;
            return new ExoPlayerImpl(this, null);
        }

        public Builder(Context context, RenderersFactory renderersFactory) {
            this(context, new ws(renderersFactory, 4), new da(context, 6));
            renderersFactory.getClass();
        }

        public Builder(Context context, MediaSource.Factory factory) {
            this(context, new da(context, 1), new ws(factory, 3));
            factory.getClass();
        }

        public Builder(Context context, RenderersFactory renderersFactory, MediaSource.Factory factory) {
            this(context, new ws(renderersFactory, 4), new ws(factory, 3));
            renderersFactory.getClass();
            factory.getClass();
        }

        public Builder(Context context, RenderersFactory renderersFactory, MediaSource.Factory factory, TrackSelector trackSelector, LoadControl loadControl, BandwidthMeter bandwidthMeter, AnalyticsCollector analyticsCollector) {
            this(context, new ws(renderersFactory, 4), new ws(factory, 3), new ws(trackSelector, 5), new ws(loadControl, 6), new ws(bandwidthMeter, 7), new mw(analyticsCollector, 0));
            renderersFactory.getClass();
            factory.getClass();
            trackSelector.getClass();
            bandwidthMeter.getClass();
            analyticsCollector.getClass();
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public Builder(Context context, Supplier supplier, Supplier supplier2) {
            int i2 = 3;
            this(context, supplier, supplier2, new da(context, 2), new ur(i2), new da(context, i2), new uh(2));
        }

        public Builder(Context context) {
            this(context, new da(context, 4), new da(context, 5));
        }
    }
}
