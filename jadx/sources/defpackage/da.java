package defpackage;

import android.content.Context;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.exoplayer.DefaultRenderersFactory;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.upstream.DefaultBandwidthMeter;
import androidx.media3.extractor.DefaultExtractorsFactory;
import com.google.common.base.Supplier;
import com.google.common.collect.ImmutableList;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class da implements Supplier {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68487b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f68488c;

    public /* synthetic */ da(Context context, int i2) {
        this.f68487b = i2;
        this.f68488c = context;
    }

    @Override // com.google.common.base.Supplier
    public final Object get() {
        DefaultBandwidthMeter defaultBandwidthMeter;
        int i2 = this.f68487b;
        Context context = this.f68488c;
        switch (i2) {
            case 0:
                return AudioManagerCompat.a(context);
            case 1:
                int i3 = ExoPlayer.Builder.E;
                return new DefaultRenderersFactory(context);
            case 2:
                int i4 = ExoPlayer.Builder.E;
                return new DefaultTrackSelector(context);
            case 3:
                int i5 = ExoPlayer.Builder.E;
                ImmutableList immutableList = DefaultBandwidthMeter.p;
                synchronized (DefaultBandwidthMeter.class) {
                    try {
                        if (DefaultBandwidthMeter.v == null) {
                            DefaultBandwidthMeter.Builder builder = new DefaultBandwidthMeter.Builder(context);
                            DefaultBandwidthMeter.v = new DefaultBandwidthMeter(builder.f15820a, builder.f15821b, builder.f15822c, builder.d, builder.f15823e);
                        }
                        defaultBandwidthMeter = DefaultBandwidthMeter.v;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return defaultBandwidthMeter;
            case 4:
                int i6 = ExoPlayer.Builder.E;
                return new DefaultRenderersFactory(context);
            case 5:
                int i7 = ExoPlayer.Builder.E;
                return new DefaultMediaSourceFactory(context, new DefaultExtractorsFactory());
            default:
                int i8 = ExoPlayer.Builder.E;
                return new DefaultMediaSourceFactory(context, new DefaultExtractorsFactory());
        }
    }
}
