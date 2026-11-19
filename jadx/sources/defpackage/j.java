package defpackage;

import com.vuitton.android.presentation.common.ScreenOrigin;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTracker;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTrackingUiModel;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTrackingUiModelKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class j implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71241b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f71242c;
    public final /* synthetic */ AICompanionTracker d;

    public /* synthetic */ j(AICompanionTracker aICompanionTracker, Function0 function0, int i2) {
        this.f71241b = i2;
        this.d = aICompanionTracker;
        this.f71242c = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f71241b;
        Function0 function0 = this.f71242c;
        AICompanionTracker aICompanionTracker = this.d;
        switch (i2) {
            case 0:
                function0.mo47invoke();
                aICompanionTracker.f52910a.a(AICompanionTrackingUiModelKt.a(AICompanionTrackingUiModel.OnHitMicrophoneButtonEvent.f52927a));
                break;
            case 1:
                function0.mo47invoke();
                aICompanionTracker.f52910a.a(AICompanionTrackingUiModelKt.a(AICompanionTrackingUiModel.OnHitHistoryButtonEvent.f52923a));
                break;
            case 2:
                aICompanionTracker.f52910a.a(AICompanionTrackingUiModelKt.a(AICompanionTrackingUiModel.OnHitExitOnboardingEvent.f52922a));
                function0.mo47invoke();
                break;
            case 3:
                aICompanionTracker.f52910a.a(AICompanionTrackingUiModelKt.a(AICompanionTrackingUiModel.OnHitSkipOnboardingEvent.f52931a));
                function0.mo47invoke();
                break;
            case 4:
                aICompanionTracker.b(ScreenOrigin.PDP);
                function0.mo47invoke();
                break;
            case 5:
                aICompanionTracker.a(ScreenOrigin.PDP, "ai_companion");
                function0.mo47invoke();
                break;
            default:
                aICompanionTracker.a(ScreenOrigin.SEARCH, "ai_companion");
                function0.mo47invoke();
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ j(Function0 function0, AICompanionTracker aICompanionTracker, int i2) {
        this.f71241b = i2;
        this.f71242c = function0;
        this.d = aICompanionTracker;
    }
}
