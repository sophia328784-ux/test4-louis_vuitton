package com.vuitton.android.presentation.screen.connectivity.section;

import com.vuitton.android.presentation.screen.connectivity.VideoUiModel;
import com.vuitton.android.presentation.utils.TrackingFrom;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class ConnectivitySectionDetailFragment$getEarphoneVideoView$1$1$1 extends FunctionReferenceImpl implements Function1<Result<? extends VideoUiModel>, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Object obj2 = ((Result) obj).f71708b;
        ConnectivitySectionDetailFragment connectivitySectionDetailFragment = (ConnectivitySectionDetailFragment) this.receiver;
        ConnectivitySectionDetailFragment.Companion companion = ConnectivitySectionDetailFragment.I;
        connectivitySectionDetailFragment.getClass();
        Result.Companion companion2 = Result.INSTANCE;
        boolean z = obj2 instanceof Result.Failure;
        if (z) {
            connectivitySectionDetailFragment.P();
        } else {
            if (z) {
                obj2 = null;
            }
            VideoUiModel videoUiModel = (VideoUiModel) obj2;
            if (videoUiModel != null) {
                connectivitySectionDetailFragment.R();
                ConnectivitySectionDetailActivityRouter.c(connectivitySectionDetailFragment.getActivity(), videoUiModel, new TrackingFrom("LVPass/IoT/Earphones", "IoT"), "Discover our video");
            }
        }
        return Unit.f71739a;
    }
}
