package defpackage;

import com.vuitton.android.presentation.screen.audioguide.AudioGuideTracker;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.AudioGuideTrackDetailBottomSheetKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideTrackingUiModel;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideTrackingUiModelKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ga implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69356b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AudioGuideTracker f69357c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ ga(AudioGuideTracker audioGuideTracker, Function0 function0, int i2) {
        this.f69356b = i2;
        this.f69357c = audioGuideTracker;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f69356b;
        Function0 function0 = this.d;
        AudioGuideTracker audioGuideTracker = this.f69357c;
        switch (i2) {
            case 0:
                audioGuideTracker.f52976a.a(AudioGuideTrackingUiModelKt.a(AudioGuideTrackingUiModel.OnHitStartEvent.f53187a));
                function0.mo47invoke();
                break;
            case 1:
                audioGuideTracker.f52976a.a(AudioGuideTrackingUiModelKt.a(AudioGuideTrackingUiModel.OnHitLeaveEvent.f53169a));
                function0.mo47invoke();
                break;
            case 2:
                audioGuideTracker.f52976a.a(AudioGuideTrackingUiModelKt.a(AudioGuideTrackingUiModel.OnHitContinueEvent.f53166a));
                function0.mo47invoke();
                break;
            case 3:
                audioGuideTracker.f52976a.a(AudioGuideTrackingUiModelKt.a(AudioGuideTrackingUiModel.OnHitNarratorCardEvent.f53173a));
                function0.mo47invoke();
                break;
            case 4:
                audioGuideTracker.f52976a.a(AudioGuideTrackingUiModelKt.a(AudioGuideTrackingUiModel.OnHitNextMiniPlayerMainScreenEvent.f53176a));
                function0.mo47invoke();
                break;
            case 5:
                audioGuideTracker.f52976a.a(AudioGuideTrackingUiModelKt.a(AudioGuideTrackingUiModel.OnHitExitEvent.f53167a));
                function0.mo47invoke();
                break;
            case 6:
                float f2 = AudioGuideTrackDetailBottomSheetKt.f53032a;
                audioGuideTracker.f52976a.a(AudioGuideTrackingUiModelKt.a(AudioGuideTrackingUiModel.OnHitNextContentEvent.f53174a));
                function0.mo47invoke();
                break;
            case 7:
                float f3 = AudioGuideTrackDetailBottomSheetKt.f53032a;
                audioGuideTracker.f52976a.a(AudioGuideTrackingUiModelKt.a(AudioGuideTrackingUiModel.OnHitNextMiniPlayerTrackDetailEvent.f53177a));
                function0.mo47invoke();
                break;
            case 8:
                float f4 = AudioGuideTrackDetailBottomSheetKt.f53032a;
                audioGuideTracker.f52976a.a(AudioGuideTrackingUiModelKt.a(AudioGuideTrackingUiModel.OnHitNextCoverEvent.f53175a));
                function0.mo47invoke();
                break;
            default:
                float f5 = AudioGuideTrackDetailBottomSheetKt.f53032a;
                audioGuideTracker.f52976a.a(AudioGuideTrackingUiModelKt.a(AudioGuideTrackingUiModel.OnHitPreviousCoverEvent.f53185a));
                function0.mo47invoke();
                break;
        }
        return Unit.f71739a;
    }
}
