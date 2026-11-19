package defpackage;

import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.presentation.screen.connectivity.home.ConnectivityFragment;
import com.vuitton.android.presentation.screen.connectivity.home.ConnectivityRouter;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModelKt;
import com.vuitton.android.presentation.screen.connectivity.section.SectionType;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ep implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68918b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ConnectivityFragment f68919c;

    public /* synthetic */ ep(ConnectivityFragment connectivityFragment, int i2) {
        this.f68918b = i2;
        this.f68919c = connectivityFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f68918b;
        ConnectivityFragment connectivityFragment = this.f68919c;
        switch (i2) {
            case 0:
                ConnectivityFragment.Companion companion = ConnectivityFragment.Q;
                Boolean bool = (Boolean) connectivityFragment.K.getF71699b();
                bool.booleanValue();
                return bool;
            case 1:
                ConnectivityFragment.Companion companion2 = ConnectivityFragment.Q;
                IsFeatureAvailableUseCase isFeatureAvailableUseCase = connectivityFragment.J;
                if (isFeatureAvailableUseCase != null) {
                    return Boolean.valueOf(isFeatureAvailableUseCase.b(new Feature[]{Feature.KEEP_ALL}));
                }
                Intrinsics.h("isFeatureAvailableUseCase");
                throw null;
            case 2:
                ConnectivityFragment.Companion companion3 = ConnectivityFragment.Q;
                IsFeatureAvailableUseCase isFeatureAvailableUseCase2 = connectivityFragment.J;
                if (isFeatureAvailableUseCase2 != null) {
                    return Boolean.valueOf(isFeatureAvailableUseCase2.b(new Feature[]{Feature.SNEAKERS}));
                }
                Intrinsics.h("isFeatureAvailableUseCase");
                throw null;
            case 3:
                ConnectivityFragment.Companion companion4 = ConnectivityFragment.Q;
                IsFeatureAvailableUseCase isFeatureAvailableUseCase3 = connectivityFragment.J;
                if (isFeatureAvailableUseCase3 != null) {
                    return Boolean.valueOf(isFeatureAvailableUseCase3.b(new Feature[]{Feature.TRUNK_SPEAKER}));
                }
                Intrinsics.h("isFeatureAvailableUseCase");
                throw null;
            case 4:
                ConnectivityFragment.Companion companion5 = ConnectivityFragment.Q;
                IsFeatureAvailableUseCase isFeatureAvailableUseCase4 = connectivityFragment.J;
                if (isFeatureAvailableUseCase4 != null) {
                    return Boolean.valueOf(isFeatureAvailableUseCase4.b(new Feature[]{Feature.HORIZON_SPEAKER}));
                }
                Intrinsics.h("isFeatureAvailableUseCase");
                throw null;
            case 5:
                ConnectivityFragment.Companion companion6 = ConnectivityFragment.Q;
                connectivityFragment.R().f56078j.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.OpenSectionEvent(LVLightUpDeviceType.KEEPALL)));
                connectivityFragment.Q();
                ConnectivityRouter.a(connectivityFragment.getActivity(), SectionType.KEEPALL);
                return Unit.f71739a;
            case 6:
                ConnectivityFragment.Companion companion7 = ConnectivityFragment.Q;
                connectivityFragment.Q();
                ConnectivityRouter.a(connectivityFragment.getActivity(), SectionType.WATCH_V3);
                return Unit.f71739a;
            case 7:
                ConnectivityFragment.Companion companion8 = ConnectivityFragment.Q;
                connectivityFragment.R().f56078j.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.OpenSectionEvent(LVLightUpDeviceType.X408PAIR)));
                connectivityFragment.Q();
                ConnectivityRouter.a(connectivityFragment.getActivity(), SectionType.SNEAKERS);
                return Unit.f71739a;
            case 8:
                ConnectivityFragment.Companion companion9 = ConnectivityFragment.Q;
                connectivityFragment.Q();
                ConnectivityRouter.a(connectivityFragment.getActivity(), SectionType.HORIZON_SPEAKER);
                return Unit.f71739a;
            case 9:
                ConnectivityFragment.Companion companion10 = ConnectivityFragment.Q;
                connectivityFragment.Q();
                ConnectivityRouter.a(connectivityFragment.getActivity(), SectionType.TRUNK_SPEAKER);
                return Unit.f71739a;
            case 10:
                ConnectivityFragment.Companion companion11 = ConnectivityFragment.Q;
                connectivityFragment.Q();
                ConnectivityRouter.a(connectivityFragment.getActivity(), SectionType.EARPHONE);
                return Unit.f71739a;
            case 11:
                ConnectivityFragment.Companion companion12 = ConnectivityFragment.Q;
                Boolean bool2 = (Boolean) connectivityFragment.N.getF71699b();
                bool2.booleanValue();
                return bool2;
            case 12:
                ConnectivityFragment.Companion companion13 = ConnectivityFragment.Q;
                Boolean bool3 = (Boolean) connectivityFragment.M.getF71699b();
                bool3.booleanValue();
                return bool3;
            default:
                ConnectivityFragment.Companion companion14 = ConnectivityFragment.Q;
                Boolean bool4 = (Boolean) connectivityFragment.L.getF71699b();
                bool4.booleanValue();
                return bool4;
        }
    }
}
