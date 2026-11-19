package defpackage;

import com.vuitton.android.presentation.screen.audioguide.AudioGuideTracker;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.AudioGuideTrackDetailBottomSheetKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideTrackingUiModel;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideTrackingUiModelKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideViewState;
import com.vuitton.foundation.model.domain.model.audioplayer.PlayerState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ra implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79296b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AudioGuideTracker f79297c;
    public final /* synthetic */ AudioGuideViewState.Success d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f79298e;

    public /* synthetic */ ra(AudioGuideTracker audioGuideTracker, AudioGuideViewState.Success success, Function0 function0) {
        this.f79296b = 1;
        this.f79297c = audioGuideTracker;
        this.d = success;
        this.f79298e = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f79296b;
        Function0 function0 = this.f79298e;
        AudioGuideTracker audioGuideTracker = this.f79297c;
        AudioGuideViewState.Success success = this.d;
        switch (i2) {
            case 0:
                if (success.f53227c == PlayerState.PLAYING) {
                    audioGuideTracker.f52976a.a(AudioGuideTrackingUiModelKt.a(AudioGuideTrackingUiModel.OnHitPauseMiniPlayerMainScreenEvent.f53179a));
                } else {
                    audioGuideTracker.f52976a.a(AudioGuideTrackingUiModelKt.a(AudioGuideTrackingUiModel.OnHitPlayMiniPlayerMainScreenEvent.f53182a));
                }
                function0.mo47invoke();
                break;
            case 1:
                float f2 = AudioGuideTrackDetailBottomSheetKt.f53032a;
                String displayName = success.f53228e.getDisplayName();
                audioGuideTracker.getClass();
                displayName.getClass();
                audioGuideTracker.f52976a.a(AudioGuideTrackingUiModelKt.a(new AudioGuideTrackingUiModel.OnHitSpeedEvent(displayName)));
                function0.mo47invoke();
                break;
            default:
                float f3 = AudioGuideTrackDetailBottomSheetKt.f53032a;
                if (success.f53227c == PlayerState.PLAYING) {
                    audioGuideTracker.f52976a.a(AudioGuideTrackingUiModelKt.a(AudioGuideTrackingUiModel.OnHitPauseMiniPlayerTrackDetailEvent.f53180a));
                } else {
                    audioGuideTracker.f52976a.a(AudioGuideTrackingUiModelKt.a(AudioGuideTrackingUiModel.OnHitPlayMiniPlayerTrackDetailEvent.f53183a));
                }
                function0.mo47invoke();
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ ra(AudioGuideViewState.Success success, AudioGuideTracker audioGuideTracker, Function0 function0, int i2) {
        this.f79296b = i2;
        this.d = success;
        this.f79297c = audioGuideTracker;
        this.f79298e = function0;
    }
}
