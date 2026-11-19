package defpackage;

import com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTracker;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTrackingUiModel;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTrackingUiModelKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class n implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76404b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AICompanionViewModel f76405c;
    public final /* synthetic */ AICompanionTracker d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f76406e;

    public /* synthetic */ n(AICompanionViewModel aICompanionViewModel, AICompanionTracker aICompanionTracker, Function0 function0) {
        this.f76405c = aICompanionViewModel;
        this.d = aICompanionTracker;
        this.f76406e = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f76404b;
        Function0 function0 = this.f76406e;
        AICompanionTracker aICompanionTracker = this.d;
        AICompanionViewModel aICompanionViewModel = this.f76405c;
        switch (i2) {
            case 0:
                aICompanionTracker.f52910a.a(AICompanionTrackingUiModelKt.a(AICompanionTrackingUiModel.OnHitLeaveConfirmationButtonEvent.f52926a));
                aICompanionViewModel.T4(null);
                function0.mo47invoke();
                break;
            default:
                aICompanionViewModel.e3();
                aICompanionTracker.f52910a.a(AICompanionTrackingUiModelKt.a(AICompanionTrackingUiModel.OnHitHistoryNewConversationEvent.f52925a));
                function0.mo47invoke();
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ n(AICompanionTracker aICompanionTracker, AICompanionViewModel aICompanionViewModel, Function0 function0) {
        this.d = aICompanionTracker;
        this.f76405c = aICompanionViewModel;
        this.f76406e = function0;
    }
}
