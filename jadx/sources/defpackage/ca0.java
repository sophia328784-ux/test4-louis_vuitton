package defpackage;

import android.opengl.GLSurfaceView;
import android.view.View;
import androidx.compose.runtime.MutableState;
import androidx.lifecycle.Lifecycle;
import androidx.media3.common.Player;
import androidx.media3.ui.PlayerView;
import com.vuitton.android.presentation.screen.livevideo.component.LiveVideoPlayerComponentKt;
import com.vuitton.android.presentation.screen.video.components.VideoPlayerComponentKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ca0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21105b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f21106c;
    public final /* synthetic */ MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f21107e;

    public /* synthetic */ ca0(MutableState mutableState, MutableState mutableState2, MutableState mutableState3, int i2) {
        this.f21105b = i2;
        this.f21106c = mutableState;
        this.d = mutableState2;
        this.f21107e = mutableState3;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Player player;
        Player player2;
        int i2 = this.f21105b;
        MutableState mutableState = this.f21107e;
        MutableState mutableState2 = this.d;
        MutableState mutableState3 = this.f21106c;
        PlayerView playerView = (PlayerView) obj;
        switch (i2) {
            case 0:
                playerView.getClass();
                int i3 = LiveVideoPlayerComponentKt.WhenMappings.f58965a[((Lifecycle.Event) mutableState3.getF10755b()).ordinal()];
                if (i3 == 1 || i3 == 2) {
                    mutableState2.setValue(Boolean.TRUE);
                    mutableState.setValue(Boolean.FALSE);
                    View view = playerView.f18031e;
                    if (view instanceof GLSurfaceView) {
                        ((GLSurfaceView) view).onPause();
                    }
                    Player player3 = playerView.getPlayer();
                    if (player3 != null) {
                        player3.pause();
                    }
                } else if (i3 == 3 && (player = playerView.getPlayer()) != null) {
                    player.release();
                }
                break;
            default:
                playerView.getClass();
                int i4 = VideoPlayerComponentKt.WhenMappings.f65437a[((Lifecycle.Event) mutableState3.getF10755b()).ordinal()];
                if (i4 == 1) {
                    mutableState2.setValue(Boolean.TRUE);
                    mutableState.setValue(Boolean.FALSE);
                    View view2 = playerView.f18031e;
                    if (view2 instanceof GLSurfaceView) {
                        ((GLSurfaceView) view2).onPause();
                    }
                    Player player4 = playerView.getPlayer();
                    if (player4 != null) {
                        player4.pause();
                    }
                } else if (i4 == 2 && (player2 = playerView.getPlayer()) != null) {
                    player2.release();
                }
                break;
        }
        return Unit.f71739a;
    }
}
