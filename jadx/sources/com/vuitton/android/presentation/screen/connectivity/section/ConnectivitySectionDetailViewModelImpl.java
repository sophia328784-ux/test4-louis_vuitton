package com.vuitton.android.presentation.screen.connectivity.section;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.vuitton.android.domain.usecase.connectivity.earphone.GetEarphoneSkuListUseCase;
import com.vuitton.android.domain.usecase.connectivity.earphone.GetEarphoneVideoUseCase;
import com.vuitton.android.domain.usecase.connectivity.horizon.GetHorizonSpeakerSkuListUseCase;
import com.vuitton.android.domain.usecase.connectivity.horizon.GetHorizonSpeakerVideoUseCase;
import com.vuitton.android.domain.usecase.connectivity.lightup.GetLightUpVideoUseCase;
import com.vuitton.android.domain.usecase.connectivity.trunkspeaker.GetTrunkSpeakerSkuListUseCase;
import com.vuitton.android.domain.usecase.connectivity.trunkspeaker.GetTrunkSpeakerVideoUseCase;
import com.vuitton.android.domain.usecase.connectivity.watch.GetWatchVideoUseCase;
import com.vuitton.android.domain.usecase.connectivity.watchv3.GetWatchV3SkuListUseCase;
import com.vuitton.android.domain.usecase.connectivity.watchv3.GetWatchV3VideoUseCase;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002Ba\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModel;", "Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchVideoUseCase;", "getWatchVideoUseCase", "Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneVideoUseCase;", "getEarphoneVideoUseCase", "Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneSkuListUseCase;", "getEarphoneSkuListUseCase", "Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpVideoUseCase;", "getLightUpVideoUseCase", "Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerVideoUseCase;", "getTrunkSpeakerVideoUseCase", "Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerSkuListUseCase;", "getTrunkSpeakerSkuListUseCase", "Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerSkuListUseCase;", "getHorizonSpeakerSkuListUseCase", "Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerVideoUseCase;", "getHorizonSpeakerVideoUseCase", "Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3VideoUseCase;", "getWatchV3VideoUseCase", "Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3SkuListUseCase;", "getWatchV3SkuListUseCase", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "<init>", "(Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchVideoUseCase;Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneVideoUseCase;Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneSkuListUseCase;Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpVideoUseCase;Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerVideoUseCase;Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerSkuListUseCase;Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerSkuListUseCase;Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerVideoUseCase;Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3VideoUseCase;Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3SkuListUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ConnectivitySectionDetailViewModelImpl extends ViewModel implements ConnectivitySectionDetailViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetWatchVideoUseCase f56270a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetEarphoneVideoUseCase f56271b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GetEarphoneSkuListUseCase f56272c;
    public final GetLightUpVideoUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GetTrunkSpeakerVideoUseCase f56273e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final GetTrunkSpeakerSkuListUseCase f56274f;
    public final GetHorizonSpeakerSkuListUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final GetHorizonSpeakerVideoUseCase f56275h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final GetWatchV3VideoUseCase f56276i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final GetWatchV3SkuListUseCase f56277j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AnalyticsTracker f56278k;
    public final MutableLiveData l;
    public final MutableLiveData m;
    public final MutableLiveData n;
    public final MutableLiveData o;
    public final MutableLiveData p;
    public final MutableLiveData q;
    public final MutableLiveData r;
    public final MutableLiveData s;
    public final MutableLiveData t;
    public final MutableLiveData u;
    public final MutableLiveData v;
    public final MutableLiveData w;
    public final MutableLiveData x;
    public final MutableLiveData y;

    @Inject
    public ConnectivitySectionDetailViewModelImpl(GetWatchVideoUseCase getWatchVideoUseCase, GetEarphoneVideoUseCase getEarphoneVideoUseCase, GetEarphoneSkuListUseCase getEarphoneSkuListUseCase, GetLightUpVideoUseCase getLightUpVideoUseCase, GetTrunkSpeakerVideoUseCase getTrunkSpeakerVideoUseCase, GetTrunkSpeakerSkuListUseCase getTrunkSpeakerSkuListUseCase, GetHorizonSpeakerSkuListUseCase getHorizonSpeakerSkuListUseCase, GetHorizonSpeakerVideoUseCase getHorizonSpeakerVideoUseCase, GetWatchV3VideoUseCase getWatchV3VideoUseCase, GetWatchV3SkuListUseCase getWatchV3SkuListUseCase, AnalyticsTracker analyticsTracker) {
        getWatchVideoUseCase.getClass();
        getEarphoneVideoUseCase.getClass();
        getEarphoneSkuListUseCase.getClass();
        getLightUpVideoUseCase.getClass();
        getTrunkSpeakerVideoUseCase.getClass();
        getTrunkSpeakerSkuListUseCase.getClass();
        getHorizonSpeakerSkuListUseCase.getClass();
        getHorizonSpeakerVideoUseCase.getClass();
        getWatchV3VideoUseCase.getClass();
        getWatchV3SkuListUseCase.getClass();
        analyticsTracker.getClass();
        this.f56270a = getWatchVideoUseCase;
        this.f56271b = getEarphoneVideoUseCase;
        this.f56272c = getEarphoneSkuListUseCase;
        this.d = getLightUpVideoUseCase;
        this.f56273e = getTrunkSpeakerVideoUseCase;
        this.f56274f = getTrunkSpeakerSkuListUseCase;
        this.g = getHorizonSpeakerSkuListUseCase;
        this.f56275h = getHorizonSpeakerVideoUseCase;
        this.f56276i = getWatchV3VideoUseCase;
        this.f56277j = getWatchV3SkuListUseCase;
        this.f56278k = analyticsTracker;
        MutableLiveData mutableLiveData = new MutableLiveData();
        this.l = mutableLiveData;
        this.m = mutableLiveData;
        MutableLiveData mutableLiveData2 = new MutableLiveData();
        this.n = mutableLiveData2;
        this.o = mutableLiveData2;
        MutableLiveData mutableLiveData3 = new MutableLiveData();
        this.p = mutableLiveData3;
        this.q = mutableLiveData3;
        MutableLiveData mutableLiveData4 = new MutableLiveData();
        this.r = mutableLiveData4;
        this.s = mutableLiveData4;
        MutableLiveData mutableLiveData5 = new MutableLiveData();
        this.t = mutableLiveData5;
        this.u = mutableLiveData5;
        MutableLiveData mutableLiveData6 = new MutableLiveData();
        this.v = mutableLiveData6;
        this.w = mutableLiveData6;
        MutableLiveData mutableLiveData7 = new MutableLiveData();
        this.x = mutableLiveData7;
        this.y = mutableLiveData7;
    }
}
