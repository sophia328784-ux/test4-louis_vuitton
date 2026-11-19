package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.ListeningQueueTrackItemKt;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.TrackDetailNextContentKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class y90 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81329b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AudioGuideUiModel.TrackUiModel f81330c;
    public final /* synthetic */ AudioGuideUiModel.AudioGuideColorsUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f81331e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f81332f;

    public /* synthetic */ y90(AudioGuideUiModel.TrackUiModel trackUiModel, AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel, Function0 function0, int i2, int i3) {
        this.f81329b = i3;
        this.f81330c = trackUiModel;
        this.d = audioGuideColorsUiModel;
        this.f81331e = function0;
        this.f81332f = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f81329b;
        int i3 = this.f81332f;
        Function0 function0 = this.f81331e;
        AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel = this.d;
        AudioGuideUiModel.TrackUiModel trackUiModel = this.f81330c;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                ListeningQueueTrackItemKt.a(trackUiModel, audioGuideColorsUiModel, function0, composer, RecomposeScopeImplKt.a(i3 | 1));
                break;
            default:
                TrackDetailNextContentKt.a(trackUiModel, audioGuideColorsUiModel, function0, composer, RecomposeScopeImplKt.a(i3 | 1));
                break;
        }
        return Unit.f71739a;
    }
}
