package defpackage;

import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTracker;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTrackingUiModelKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class rv0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79628b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ShadeFinderTracker f79629c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ rv0(ShadeFinderTracker shadeFinderTracker, Function0 function0, int i2) {
        this.f79628b = i2;
        this.f79629c = shadeFinderTracker;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f79628b;
        Function0 function0 = this.d;
        ShadeFinderTracker shadeFinderTracker = this.f79629c;
        switch (i2) {
            case 0:
                shadeFinderTracker.f62294a.a(ShadeFinderTrackingUiModelKt.a(ShadeFinderTrackingUiModel.OnStartClickedEvent.f62306a));
                function0.mo47invoke();
                break;
            case 1:
                shadeFinderTracker.f62294a.a(ShadeFinderTrackingUiModelKt.a(ShadeFinderTrackingUiModel.OnCloseIntroClickedEvent.f62302a));
                function0.mo47invoke();
                break;
            case 2:
                shadeFinderTracker.f62294a.a(ShadeFinderTrackingUiModelKt.a(ShadeFinderTrackingUiModel.OnCloseRecommendationsEvent.f62303a));
                function0.mo47invoke();
                break;
            default:
                shadeFinderTracker.f62294a.a(ShadeFinderTrackingUiModelKt.a(ShadeFinderTrackingUiModel.OnCloseScanClickedEvent.f62304a));
                function0.mo47invoke();
                break;
        }
        return Unit.f71739a;
    }
}
