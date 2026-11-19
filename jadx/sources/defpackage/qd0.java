package defpackage;

import android.graphics.PathMeasure;
import androidx.compose.runtime.MutableState;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.model.onboarding.IconLauncherType;
import com.vuitton.android.presentation.screen.onboarding.components.OnboardingIconComposableKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class qd0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79073b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LVModalBottomSheetState f79074c;
    public final /* synthetic */ Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f79075e;

    public /* synthetic */ qd0(Function1 function1, LVModalBottomSheetState lVModalBottomSheetState, MutableState mutableState) {
        this.f79073b = 0;
        this.d = function1;
        this.f79074c = lVModalBottomSheetState;
        this.f79075e = mutableState;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f79073b;
        MutableState mutableState = this.f79075e;
        Function1 function1 = this.d;
        LVModalBottomSheetState lVModalBottomSheetState = this.f79074c;
        switch (i2) {
            case 0:
                function1.invoke(((IconLauncherType) mutableState.getF10755b()).getIconId());
                lVModalBottomSheetState.e();
                break;
            case 1:
                lVModalBottomSheetState.d();
                function1.invoke((IconLauncherType) mutableState.getF10755b());
                break;
            default:
                PathMeasure pathMeasure = OnboardingIconComposableKt.f59551a;
                LVModalBottomSheetState.Companion companion = LVModalBottomSheetState.d;
                lVModalBottomSheetState.b(new k40(28));
                function1.invoke((IconLauncherType) mutableState.getF10755b());
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ qd0(LVModalBottomSheetState lVModalBottomSheetState, Function1 function1, MutableState mutableState, int i2) {
        this.f79073b = i2;
        this.f79074c = lVModalBottomSheetState;
        this.d = function1;
        this.f79075e = mutableState;
    }
}
