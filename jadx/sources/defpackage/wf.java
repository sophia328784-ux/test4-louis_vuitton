package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.sightcall.graphik.composent.DividersKt;
import com.vuitton.android.presentation.screen.booking.form.components.module.BookingModuleGridKt;
import com.vuitton.android.presentation.screen.onboarding.components.OnboardingPreferencesComposableKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class wf implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80853b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f80854c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f80855e;

    public /* synthetic */ wf(Modifier modifier, int i2, int i3, int i4) {
        this.f80853b = 2;
        this.f80854c = modifier;
        this.d = i2;
        this.f80855e = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Composer composer = (Composer) obj;
        Integer num = (Integer) obj2;
        switch (this.f80853b) {
            case 0:
                num.getClass();
                BookingModuleGridKt.b(this.f80854c, composer, RecomposeScopeImplKt.a(this.d | 1), this.f80855e);
                return Unit.f71739a;
            case 1:
                return DividersKt.VisionDivider$lambda$0(this.f80854c, this.d, this.f80855e, composer, num.intValue());
            default:
                num.getClass();
                OnboardingPreferencesComposableKt.c(this.f80854c, this.d, this.f80855e, composer, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ wf(Modifier modifier, int i2, int i3, int i4, byte b2) {
        this.f80853b = i4;
        this.f80854c = modifier;
        this.d = i2;
        this.f80855e = i3;
    }
}
