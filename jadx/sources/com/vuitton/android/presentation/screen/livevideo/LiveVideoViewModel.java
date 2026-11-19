package com.vuitton.android.presentation.screen.livevideo;

import androidx.media3.exoplayer.ExoPlayer;
import kotlin.Metadata;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface LiveVideoViewModel {
    void K6(ExoPlayer exoPlayer);

    void U1(String str, String str2);

    StateFlow a();

    void o1(String str, boolean z);
}
