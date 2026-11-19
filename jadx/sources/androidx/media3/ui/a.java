package androidx.media3.ui;

import android.view.View;
import com.dynatrace.android.callback.Callback;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f18076b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f18077c;

    public /* synthetic */ a(Object obj, int i2) {
        this.f18076b = i2;
        this.f18077c = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i2 = this.f18076b;
        Object obj = this.f18077c;
        switch (i2) {
            case 0:
                PlayerControlView.AudioTrackSelectionAdapter audioTrackSelectionAdapter = (PlayerControlView.AudioTrackSelectionAdapter) obj;
                Callback.n(view);
                try {
                    audioTrackSelectionAdapter.f();
                    return;
                } finally {
                    Callback.o();
                }
            case 1:
                PlayerControlView.SettingViewHolder settingViewHolder = (PlayerControlView.SettingViewHolder) obj;
                int i3 = PlayerControlView.SettingViewHolder.f17994f;
                Callback.n(view);
                try {
                    PlayerControlView playerControlView = PlayerControlView.this;
                    int bindingAdapterPosition = settingViewHolder.getBindingAdapterPosition();
                    View view2 = playerControlView.H;
                    if (bindingAdapterPosition == 0) {
                        PlayerControlView.PlaybackSpeedAdapter playbackSpeedAdapter = playerControlView.o;
                        view2.getClass();
                        playerControlView.e(playbackSpeedAdapter, view2);
                    } else if (bindingAdapterPosition == 1) {
                        PlayerControlView.AudioTrackSelectionAdapter audioTrackSelectionAdapter2 = playerControlView.q;
                        view2.getClass();
                        playerControlView.e(audioTrackSelectionAdapter2, view2);
                    } else {
                        playerControlView.s.dismiss();
                    }
                    return;
                } finally {
                    Callback.o();
                }
            default:
                PlayerControlView.TextTrackSelectionAdapter textTrackSelectionAdapter = (PlayerControlView.TextTrackSelectionAdapter) obj;
                Callback.n(view);
                try {
                    textTrackSelectionAdapter.f();
                    return;
                } finally {
                    Callback.o();
                }
        }
    }
}
