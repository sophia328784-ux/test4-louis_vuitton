package defpackage;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.components.StoreModeWelcomeComposableKt;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeTrackingUiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class m11 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76147b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f76148c;
    public final /* synthetic */ StoreModeViewModel d;

    public /* synthetic */ m11(MutableState mutableState, StoreModeViewModel storeModeViewModel) {
        this.f76148c = mutableState;
        this.d = storeModeViewModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f76147b;
        StoreModeViewModel storeModeViewModel = this.d;
        MutableState mutableState = this.f76148c;
        switch (i2) {
            case 0:
                String str = ((StoreModeViewState) mutableState.getF10755b()).f65086h;
                if (str != null) {
                    storeModeViewModel.S6(new StoreModeTrackingUiModel.CancelExitClickedEvent(str));
                }
                storeModeViewModel.C6();
                break;
            default:
                float f2 = StoreModeWelcomeComposableKt.f64839a;
                String str2 = ((StoreModeViewState) mutableState.getF10755b()).f65086h;
                if (str2 != null) {
                    storeModeViewModel.S6(new StoreModeTrackingUiModel.ActivationClickedEvent(str2));
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ m11(StoreModeViewModel storeModeViewModel, MutableState mutableState) {
        this.d = storeModeViewModel;
        this.f76148c = mutableState;
    }
}
