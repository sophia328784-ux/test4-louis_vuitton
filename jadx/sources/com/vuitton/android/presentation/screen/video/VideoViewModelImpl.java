package com.vuitton.android.presentation.screen.video;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import androidx.media3.common.Player;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.video.models.VideoTrackingUiModel;
import com.vuitton.android.presentation.screen.video.models.VideoViewState;
import com.vuitton.android.presentation.utils.TrackingFrom;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import defpackage.v40;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B!\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/video/VideoViewModel;", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/foundation/logger/Logger;", "logger", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/foundation/logger/Logger;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class VideoViewModelImpl extends ViewModel implements VideoViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnalyticsTracker f65410a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Logger f65411b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TrackingFrom f65412c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f65413e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f65414f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f65415h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f65416i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableStateFlow f65417j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableStateFlow f65418k;
    public final MutableStateFlow l;
    public final MutableStateFlow m;
    public final StateFlow n;

    @Inject
    public VideoViewModelImpl(SavedStateHandle savedStateHandle, AnalyticsTracker analyticsTracker, Logger logger) {
        savedStateHandle.getClass();
        analyticsTracker.getClass();
        logger.getClass();
        this.f65410a = analyticsTracker;
        this.f65411b = logger;
        String str = (String) savedStateHandle.a("extra_url");
        String str2 = (String) savedStateHandle.a("identifier");
        this.f65412c = (TrackingFrom) savedStateHandle.a("extra_tracking_from");
        this.d = (String) savedStateHandle.a("VIDEO_TRACKING_NAME");
        String str3 = (String) savedStateHandle.a("extra_url_srt");
        Integer num = (Integer) savedStateHandle.a("EXTRA_CURRENT_PLAY_POSITION");
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(null);
        this.f65417j = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(null);
        this.f65418k = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(null);
        this.l = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(0L);
        this.m = mutableStateFlowA4;
        FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1 flowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1H = FlowKt.h(mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4, new VideoViewModelImpl$viewState$1(4, null));
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        this.n = FlowKt.A(flowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1H, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new VideoViewState(null, null, 0L, 7, null));
        mutableStateFlowA2.setValue(str);
        mutableStateFlowA3.setValue(str3);
        mutableStateFlowA4.setValue(Long.valueOf(num != null ? num.intValue() : 0L));
        if (str2 != null) {
            mutableStateFlowA.setValue(str2);
            return;
        }
        Matcher matcher = str != null ? Pattern.compile("^https?://player.louisvuitton.com/mp4/(\\d+)/\\d+/[a-zA-Z\\d]+$").matcher(str) : null;
        if (matcher == null || !matcher.find()) {
            return;
        }
        mutableStateFlowA.setValue(matcher.group(1));
    }

    public static final void yc(VideoViewModelImpl videoViewModelImpl, VideoTrackingUiModel videoTrackingUiModel) {
        Hit.EventHit.DefaultEventHit defaultEventHit;
        String str = videoViewModelImpl.d;
        String str2 = (String) videoViewModelImpl.f65417j.getValue();
        if (str2 == null) {
            str2 = (String) videoViewModelImpl.f65418k.getValue();
        }
        TrackingFrom trackingFrom = videoViewModelImpl.f65412c;
        String str3 = trackingFrom != null ? trackingFrom.f65879b : null;
        if (videoTrackingUiModel instanceof VideoTrackingUiModel.VideoStarted) {
            String str4 = str2;
            AdditionalProperty.ContentType contentType = new AdditionalProperty.ContentType("video");
            if (str4 == null) {
                str4 = "";
            }
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, str3, str, "video", "video_started", null, CollectionsKt.P(contentType, new AdditionalProperty.ContentId(str4)), 33, null);
        } else {
            String str5 = str2;
            if (videoTrackingUiModel instanceof VideoTrackingUiModel.VideoCompleted) {
                AdditionalProperty.ContentType contentType2 = new AdditionalProperty.ContentType("video");
                if (str5 == null) {
                    str5 = "";
                }
                defaultEventHit = new Hit.EventHit.DefaultEventHit(null, str3, str, "video", "video_completed", null, CollectionsKt.P(contentType2, new AdditionalProperty.ContentId(str5)), 33, null);
            } else {
                if (!(videoTrackingUiModel instanceof VideoTrackingUiModel.MilestonePassed)) {
                    v40.g();
                    return;
                }
                String str6 = ((VideoTrackingUiModel.MilestonePassed) videoTrackingUiModel).f65438a;
                AdditionalProperty.ContentType contentType3 = new AdditionalProperty.ContentType("video");
                if (str5 == null) {
                    str5 = "";
                }
                defaultEventHit = new Hit.EventHit.DefaultEventHit(null, str3, str, "video", str6, null, CollectionsKt.P(contentType3, new AdditionalProperty.ContentId(str5)), 33, null);
            }
        }
        videoViewModelImpl.f65410a.a(defaultEventHit);
    }

    @Override // com.vuitton.android.presentation.screen.video.VideoViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getN() {
        return this.n;
    }

    @Override // com.vuitton.android.presentation.screen.video.VideoViewModel
    public final void d4(Player player, Player.Events events) {
        player.getClass();
        events.getClass();
        if (player.isPlaying()) {
            if (events.f13927a.a(3, 4, 5, 7)) {
                long duration = (player.getDuration() * 25) / 100;
                long duration2 = (player.getDuration() * 50) / 100;
                long duration3 = (player.getDuration() * 75) / 100;
                long duration4 = (player.getDuration() * 90) / 100;
                if (player.getCurrentPosition() > 0 && !this.f65413e) {
                    this.f65413e = true;
                    BuildersKt.c(ViewModelKt.a(this), null, null, new VideoViewModelImpl$trackVideoStarted$1(this, null), 3);
                    return;
                }
                if (player.getCurrentPosition() > duration && !this.g) {
                    this.g = true;
                    zc("milestone_25");
                    return;
                }
                if (player.getCurrentPosition() > duration2 && !this.f65415h) {
                    this.f65415h = true;
                    zc("milestone_50");
                } else if (player.getCurrentPosition() > duration3 && !this.f65416i) {
                    this.f65416i = true;
                    zc("milestone_75");
                } else {
                    if (player.getCurrentPosition() <= duration4 || this.f65414f) {
                        return;
                    }
                    this.f65414f = true;
                    BuildersKt.c(ViewModelKt.a(this), null, null, new VideoViewModelImpl$trackVideoCompleted$1(this, null), 3);
                }
            }
        }
    }

    public final void zc(String str) {
        BuildersKt.c(ViewModelKt.a(this), null, null, new VideoViewModelImpl$trackMilestone$1(this, str, null), 3);
    }
}
