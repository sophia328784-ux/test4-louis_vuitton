package com.vuitton.android.presentation.screen.video;

import androidx.media3.common.Player;
import kotlin.Metadata;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/video/VideoViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface VideoViewModel {
    StateFlow a();

    void d4(Player player, Player.Events events);
}
