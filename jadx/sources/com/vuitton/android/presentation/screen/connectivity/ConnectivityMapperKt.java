package com.vuitton.android.presentation.screen.connectivity;

import com.vuitton.foundation.model.domain.model.connectivity.common.Video;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ConnectivityMapperKt {
    public static final VideoUiModel a(Video video) {
        video.getClass();
        String str = video.f67319a;
        if (str == null) {
            str = "";
        }
        String str2 = video.f67320b;
        return new VideoUiModel(str, str2 != null ? str2 : "");
    }
}
