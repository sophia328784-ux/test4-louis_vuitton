package defpackage;

import android.media.MediaPlayer;
import com.sightcall.mediacapture.presenter.views.preview.PreviewFragment;
import com.sightcall.videoplayer.view.MyVideoProducerPlayerView;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ie0 implements MediaPlayer.OnCompletionListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f69956a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f69957b;

    public /* synthetic */ ie0(Object obj, int i2) {
        this.f69956a = i2;
        this.f69957b = obj;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        int i2 = this.f69956a;
        Object obj = this.f69957b;
        switch (i2) {
            case 0:
                ((MyVideoProducerPlayerView) obj).lambda$new$2(mediaPlayer);
                break;
            default:
                PreviewFragment.prepareForVideo$lambda$0$4((PreviewFragment) obj, mediaPlayer);
                break;
        }
    }
}
