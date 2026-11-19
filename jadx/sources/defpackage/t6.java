package defpackage;

import android.view.View;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.video.internal.audio.BufferedAudioStream;
import androidx.core.content.res.ResourcesCompat;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.perfectcorp.perfectlib.LookHandler;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment;
import java.util.function.IntConsumer;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class t6 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79969b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f79970c;
    public final /* synthetic */ Object d;

    public /* synthetic */ t6(Object obj, int i2, int i3) {
        this.f79969b = i3;
        this.d = obj;
        this.f79970c = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f79969b;
        int i3 = this.f79970c;
        Object obj = this.d;
        switch (i2) {
            case 0:
                ((IntConsumer) obj).accept(i3);
                break;
            case 1:
                AudioRendererEventListener audioRendererEventListener = ((AudioRendererEventListener.EventDispatcher) obj).f14926b;
                String str = Util.f14242a;
                audioRendererEventListener.f(i3);
                break;
            case 2:
                BufferedAudioStream bufferedAudioStream = (BufferedAudioStream) obj;
                if (bufferedAudioStream.l != i3) {
                    int i4 = bufferedAudioStream.f2925h;
                    bufferedAudioStream.l = (i3 / i4) * i4;
                    Logger.c(3, "BufferedAudioStream");
                    break;
                }
                break;
            case 3:
                ((CameraCaptureCallback) obj).a(i3);
                break;
            case 4:
                LightUpDetailFragment.Q((LightUpDetailFragment) obj, i3);
                break;
            case 5:
                ((LookHandler.DownloadLooksCallback) obj).progress(0, i3);
                break;
            case 6:
                ((ResourcesCompat.FontCallback) obj).b(i3);
                break;
            default:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) obj;
                View view = (View) sideSheetBehavior.q.get();
                if (view != null) {
                    sideSheetBehavior.z(view, i3, false);
                }
                break;
        }
    }
}
