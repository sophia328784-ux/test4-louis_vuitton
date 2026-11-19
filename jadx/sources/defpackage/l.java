package defpackage;

import com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTracker;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTrackingUiModel;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTrackingUiModelKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class l implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75908b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AICompanionViewModel f75909c;
    public final /* synthetic */ AICompanionTracker d;

    public /* synthetic */ l(AICompanionViewModel aICompanionViewModel, AICompanionTracker aICompanionTracker) {
        this.f75908b = 1;
        this.f75909c = aICompanionViewModel;
        this.d = aICompanionTracker;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f75908b;
        AICompanionViewModel aICompanionViewModel = this.f75909c;
        AICompanionTracker aICompanionTracker = this.d;
        String str = (String) obj;
        switch (i2) {
            case 0:
                str.getClass();
                aICompanionTracker.f52910a.a(AICompanionTrackingUiModelKt.a(AICompanionTrackingUiModel.OnHitEditMessageEvent.f52920a));
                aICompanionViewModel.E1(str);
                break;
            case 1:
                str.getClass();
                aICompanionViewModel.Z7(str);
                aICompanionTracker.f52910a.a(AICompanionTrackingUiModelKt.a(AICompanionTrackingUiModel.OnHitSuggestionCardEvent.f52933a));
                break;
            default:
                str.getClass();
                aICompanionTracker.f52910a.a(AICompanionTrackingUiModelKt.a(AICompanionTrackingUiModel.OnHitDeleteHistoryConversationEvent.f52919a));
                aICompanionViewModel.o5(str);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ l(int i2, AICompanionViewModel aICompanionViewModel, AICompanionTracker aICompanionTracker) {
        this.f75908b = i2;
        this.d = aICompanionTracker;
        this.f75909c = aICompanionViewModel;
    }
}
