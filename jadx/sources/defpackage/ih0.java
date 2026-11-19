package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.onboarding.components.OnboardingPreferencesComposableKt;
import com.vuitton.android.presentation.screen.onboarding.components.OnboardingStartNowComposableKt;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingViewState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ih0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69974b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OnboardingViewState f69975c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f69976e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function1 f69977f;

    public /* synthetic */ ih0(OnboardingViewState onboardingViewState, Function0 function0, Function0 function1, Function1 function2, int i2, int i3) {
        this.f69974b = i3;
        this.f69975c = onboardingViewState;
        this.d = function0;
        this.f69976e = function1;
        this.f69977f = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f69974b) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                OnboardingPreferencesComposableKt.d(this.f69975c, this.d, this.f69976e, this.f69977f, (Composer) obj, iA);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                OnboardingPreferencesComposableKt.b(this.f69975c, this.d, this.f69976e, this.f69977f, (Composer) obj, iA2);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(1);
                OnboardingStartNowComposableKt.a(this.f69975c, this.d, this.f69976e, this.f69977f, (Composer) obj, iA3);
                break;
        }
        return Unit.f71739a;
    }
}
