package defpackage;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.account.myinformation.components.MyInformationBottomSheetScreen;
import com.vuitton.android.presentation.screen.immersivearticle.models.WallpaperDownloadStateUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyVtoScreenKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightHotspotsKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class na implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76478b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f76479c;
    public final /* synthetic */ MutableState d;

    public /* synthetic */ na(MutableState mutableState, Function0 function0) {
        this.f76478b = 9;
        this.d = mutableState;
        this.f76479c = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f76478b;
        MutableState mutableState = this.d;
        Function0 function0 = this.f76479c;
        switch (i2) {
            case 0:
                function0.mo47invoke();
                mutableState.setValue(Boolean.TRUE);
                break;
            case 1:
                float f2 = BeautyVtoScreenKt.f62031a;
                function0.mo47invoke();
                mutableState.setValue(Boolean.TRUE);
                break;
            case 2:
                float f3 = BeautyVtoScreenKt.f62031a;
                function0.mo47invoke();
                mutableState.setValue(Boolean.TRUE);
                break;
            case 3:
                float f4 = BeautyVtoScreenKt.f62031a;
                mutableState.setValue(Boolean.FALSE);
                function0.mo47invoke();
                break;
            case 4:
                if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                    mutableState.setValue(Boolean.FALSE);
                } else {
                    function0.mo47invoke();
                }
                break;
            case 5:
                if (!((WallpaperDownloadStateUiModel) mutableState.getF10755b()).f58857a) {
                    function0.mo47invoke();
                }
                break;
            case 6:
                if (!((WallpaperDownloadStateUiModel) mutableState.getF10755b()).f58857a) {
                    function0.mo47invoke();
                }
                break;
            case 7:
                function0.mo47invoke();
                mutableState.setValue(Boolean.FALSE);
                break;
            case 8:
                if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                    mutableState.setValue(Boolean.FALSE);
                    function0.mo47invoke();
                }
                break;
            case 9:
                mutableState.setValue(Boolean.TRUE);
                function0.mo47invoke();
                break;
            case 10:
                mutableState.setValue(Boolean.TRUE);
                function0.mo47invoke();
                break;
            case 11:
                if (Intrinsics.c((MyInformationBottomSheetScreen) mutableState.getF10755b(), MyInformationBottomSheetScreen.DeletedAccountConfirmation.f52597a)) {
                    function0.mo47invoke();
                }
                mutableState.setValue(null);
                break;
            case 12:
                float f5 = SpotlightHotspotsKt.f64588a;
                function0.mo47invoke();
                mutableState.setValue(Boolean.TRUE);
                break;
            case 13:
                float f6 = SpotlightScreenKt.f64602a;
                mutableState.setValue(Boolean.TRUE);
                function0.mo47invoke();
                break;
            case 14:
                mutableState.setValue(Boolean.TRUE);
                function0.mo47invoke();
                break;
            default:
                mutableState.setValue(Boolean.TRUE);
                function0.mo47invoke();
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ na(Function0 function0, MutableState mutableState, int i2) {
        this.f76478b = i2;
        this.f76479c = function0;
        this.d = mutableState;
    }
}
