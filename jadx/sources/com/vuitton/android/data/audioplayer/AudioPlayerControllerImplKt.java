package com.vuitton.android.data.audioplayer;

import android.net.Uri;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.audioplayer.AudioPlayerItem;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AudioPlayerControllerImplKt {
    public static final MediaItem a(AudioPlayerItem audioPlayerItem) {
        String str;
        MediaItem.Builder builder = new MediaItem.Builder();
        String str2 = audioPlayerItem.f66585b;
        str2.getClass();
        builder.f13795a = str2;
        builder.b(audioPlayerItem.f66585b);
        MediaMetadata.Builder builder2 = new MediaMetadata.Builder();
        builder2.f13888a = audioPlayerItem.d;
        String str3 = audioPlayerItem.f66587e;
        builder2.f13892f = str3;
        builder2.f13889b = str3;
        AssetImage assetImage = audioPlayerItem.f66586c;
        builder2.n = (assetImage == null || (str = assetImage.f67108a) == null) ? null : Uri.parse(str);
        builder2.c(Long.valueOf(audioPlayerItem.f66584a));
        builder.l = new MediaMetadata(builder2);
        return builder.a();
    }
}
