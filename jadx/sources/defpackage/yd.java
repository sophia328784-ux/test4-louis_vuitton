package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.atoms.LVColorDotIconKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationColorDot;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyDualSeparatorKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class yd implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81344b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f81345c;
    public final /* synthetic */ float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f81346e;

    public /* synthetic */ yd(Modifier modifier, float f2, Function1 function1, int i2) {
        this.f81345c = modifier;
        this.d = f2;
        this.f81346e = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f81344b) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                BeautyDualSeparatorKt.a(this.f81345c, this.d, (Function1) this.f81346e, (Composer) obj, iA);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                LVColorDotIconKt.a((ConfigurationColorDot) this.f81346e, this.f81345c, this.d, (Composer) obj, iA2);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ yd(ConfigurationColorDot configurationColorDot, Modifier modifier, float f2, int i2) {
        this.f81346e = configurationColorDot;
        this.f81345c = modifier;
        this.d = f2;
    }
}
