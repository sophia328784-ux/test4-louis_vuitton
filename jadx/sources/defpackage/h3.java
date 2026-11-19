package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.ActiveFiltersBackGradientKt;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouFeedbackBottomSheetKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class h3 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69570b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f69571c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f69572e;

    public /* synthetic */ h3(Modifier modifier, int i2, boolean z, int i3) {
        this.f69571c = modifier;
        this.d = i2;
        this.f69572e = z;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f69570b;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                ActiveFiltersBackGradientKt.a(RecomposeScopeImplKt.a(this.d | 1), composer, this.f69571c, this.f69572e);
                break;
            default:
                ThankYouFeedbackBottomSheetKt.a(this.f69571c, this.d, this.f69572e, composer, RecomposeScopeImplKt.a(1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ h3(Modifier modifier, boolean z, int i2) {
        this.f69571c = modifier;
        this.f69572e = z;
        this.d = i2;
    }
}
