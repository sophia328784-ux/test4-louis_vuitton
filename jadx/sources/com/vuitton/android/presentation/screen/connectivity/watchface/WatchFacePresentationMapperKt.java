package com.vuitton.android.presentation.screen.connectivity.watchface;

import com.vuitton.android.presentation.screen.connectivity.ConnectivityMapperKt;
import com.vuitton.android.presentation.screen.connectivity.VideoUiModel;
import com.vuitton.foundation.model.domain.model.connectivity.common.Video;
import com.vuitton.foundation.model.domain.model.connectivity.watchface.WatchfacePresentation;
import java.util.ArrayList;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class WatchFacePresentationMapperKt {
    public static final WatchFacePresentationUiModel a(WatchfacePresentation watchfacePresentation) {
        watchfacePresentation.getClass();
        String str = watchfacePresentation.f67411a;
        String str2 = watchfacePresentation.f67412b;
        String str3 = watchfacePresentation.f67413c;
        String str4 = watchfacePresentation.d;
        ArrayList arrayList = watchfacePresentation.f67414e;
        ArrayList arrayList2 = watchfacePresentation.f67415f;
        Video video = watchfacePresentation.g;
        VideoUiModel videoUiModelA = video != null ? ConnectivityMapperKt.a(video) : null;
        Video video2 = watchfacePresentation.f67416h;
        return new WatchFacePresentationUiModel(str, str2, str3, str4, arrayList, arrayList2, videoUiModelA, video2 != null ? ConnectivityMapperKt.a(video2) : null, watchfacePresentation.f67417i, watchfacePresentation.f67418j);
    }
}
