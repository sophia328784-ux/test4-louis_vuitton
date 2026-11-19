package defpackage;

import androidx.media3.exoplayer.DefaultLoadControl;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.LoadControl;
import androidx.media3.exoplayer.RenderersFactory;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import com.google.common.base.Supplier;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ws implements Supplier {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80934b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f80935c;

    public /* synthetic */ ws(Object obj, int i2) {
        this.f80934b = i2;
        this.f80935c = obj;
    }

    @Override // com.google.common.base.Supplier
    public final Object get() {
        Object obj;
        int i2 = this.f80934b;
        Object obj2 = this.f80935c;
        switch (i2) {
            case 0:
                Class cls = (Class) obj2;
                int i3 = DefaultMediaSourceFactory.l;
                try {
                    return (MediaSource.Factory) cls.getConstructor(null).newInstance(null);
                } catch (Exception e2) {
                    bm.i(e2);
                    return null;
                }
            case 1:
                obj = (DefaultLoadControl) obj2;
                break;
            case 2:
                obj = (DefaultMediaSourceFactory) obj2;
                break;
            case 3:
                obj = (MediaSource.Factory) obj2;
                break;
            case 4:
                obj = (RenderersFactory) obj2;
                break;
            case 5:
                obj = (TrackSelector) obj2;
                break;
            case 6:
                obj = (LoadControl) obj2;
                break;
            default:
                obj = (BandwidthMeter) obj2;
                break;
        }
        int i4 = ExoPlayer.Builder.E;
        return obj;
    }
}
