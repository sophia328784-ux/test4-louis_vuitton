package defpackage;

import com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModel;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideBottomSheet;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ia implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69926b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AudioGuideViewModel f69927c;

    public /* synthetic */ ia(AudioGuideViewModel audioGuideViewModel, int i2) {
        this.f69926b = i2;
        this.f69927c = audioGuideViewModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f69926b;
        AudioGuideBottomSheet.Leaving leaving = AudioGuideBottomSheet.Leaving.f53157a;
        AudioGuideViewModel audioGuideViewModel = this.f69927c;
        switch (i2) {
            case 0:
                audioGuideViewModel.j7(null);
                break;
            case 1:
                audioGuideViewModel.j7(null);
                break;
            case 2:
                audioGuideViewModel.j7(leaving);
                break;
            default:
                audioGuideViewModel.j7(leaving);
                break;
        }
        return Unit.f71739a;
    }
}
