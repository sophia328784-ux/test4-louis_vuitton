package defpackage;

import com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel;
import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionBottomSheet;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTracker;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTrackingUiModel;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTrackingUiModelKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class i implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69818b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AICompanionTracker f69819c;
    public final /* synthetic */ AICompanionViewModel d;

    public /* synthetic */ i(AICompanionViewModel aICompanionViewModel, AICompanionTracker aICompanionTracker) {
        this.f69818b = 1;
        this.f69819c = aICompanionTracker;
        this.d = aICompanionViewModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f69818b;
        AICompanionTracker aICompanionTracker = this.f69819c;
        AICompanionViewModel aICompanionViewModel = this.d;
        switch (i2) {
            case 0:
                aICompanionViewModel.T4(AICompanionBottomSheet.LegalMention.f52888a);
                aICompanionTracker.f52910a.a(AICompanionTrackingUiModelKt.a(AICompanionTrackingUiModel.OnHitVersionLabelEvent.f52934a));
                break;
            case 1:
                aICompanionTracker.f52910a.a(AICompanionTrackingUiModelKt.a(AICompanionTrackingUiModel.OnHitStayButtonEvent.f52932a));
                aICompanionViewModel.T4(null);
                break;
            case 2:
                aICompanionViewModel.T4(AICompanionBottomSheet.Exit.f52887a);
                aICompanionTracker.f52910a.a(AICompanionTrackingUiModelKt.a(AICompanionTrackingUiModel.OnHitExitCompanionButtonEvent.f52921a));
                break;
            case 3:
                aICompanionViewModel.v2();
                aICompanionTracker.f52910a.a(AICompanionTrackingUiModelKt.a(AICompanionTrackingUiModel.OnHitSendButtonEvent.f52930a));
                break;
            default:
                aICompanionViewModel.e3();
                aICompanionTracker.f52910a.a(AICompanionTrackingUiModelKt.a(AICompanionTrackingUiModel.OnHitNewConversationEvent.f52928a));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ i(int i2, AICompanionViewModel aICompanionViewModel, AICompanionTracker aICompanionTracker) {
        this.f69818b = i2;
        this.d = aICompanionViewModel;
        this.f69819c = aICompanionTracker;
    }
}
