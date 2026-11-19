package defpackage;

import android.media.MediaPlayer;
import com.sightcall.mediacapture.presenter.views.preview.PreviewFragment;
import com.sightcall.videoplayer.view.MyVideoProducerPlayerView;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class je0 implements MediaPlayer.OnErrorListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f71370a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f71371b;

    public /* synthetic */ je0(Object obj, int i2) {
        this.f71370a = i2;
        this.f71371b = obj;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i2, int i3) {
        int i4 = this.f71370a;
        Object obj = this.f71371b;
        switch (i4) {
            case 0:
                return ((MyVideoProducerPlayerView) obj).lambda$new$3(mediaPlayer, i2, i3);
            default:
                return PreviewFragment.prepareForVideo$lambda$0$3((PreviewFragment) obj, mediaPlayer, i2, i3);
        }
    }
}
