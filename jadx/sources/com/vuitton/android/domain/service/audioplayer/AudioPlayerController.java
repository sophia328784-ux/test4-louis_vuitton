package com.vuitton.android.domain.service.audioplayer;

import com.vuitton.foundation.model.domain.model.audioplayer.AudioPlayerItem;
import com.vuitton.foundation.model.domain.model.audioplayer.PlayerSpeed;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.functions.Function5;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AudioPlayerController {
    void a(AudioPlayerItem audioPlayerItem);

    void b(int i2, ArrayList arrayList);

    void c();

    void d(Function5 function5);

    void destroy();

    void e(PlayerSpeed playerSpeed);

    long getCurrentPosition();

    void pause();

    void resume();

    void seekTo(long j2);

    void stop();
}
