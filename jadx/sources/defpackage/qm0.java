package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpPriceKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderResultScreenKt;
import com.vuitton.android.presentation.screen.storemode.filters.components.TextFilterComponentKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class qm0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79116b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f79117c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f79118e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f79119f;
    public final /* synthetic */ Object g;

    public /* synthetic */ qm0(Modifier modifier, String str, boolean z, boolean z2, boolean z3, int i2) {
        this.f79119f = modifier;
        this.g = str;
        this.f79117c = z;
        this.d = z2;
        this.f79118e = z3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f79116b) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(385);
                PdpPriceKt.a((Modifier) this.f79119f, (String) this.g, this.f79117c, this.d, this.f79118e, (Composer) obj, iA);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                ShadeFinderResultScreenKt.c(this.f79117c, this.d, this.f79118e, (Function0) this.f79119f, (Function0) this.g, (Composer) obj, iA2);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(1);
                TextFilterComponentKt.a(this.f79117c, (String) this.g, this.d, this.f79118e, (Function2) this.f79119f, (Composer) obj, iA3);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ qm0(boolean z, String str, boolean z2, boolean z3, Function2 function2, int i2) {
        this.f79117c = z;
        this.g = str;
        this.d = z2;
        this.f79118e = z3;
        this.f79119f = function2;
    }

    public /* synthetic */ qm0(boolean z, boolean z2, boolean z3, Function0 function0, Function0 function1, int i2) {
        this.f79117c = z;
        this.d = z2;
        this.f79118e = z3;
        this.f79119f = function0;
        this.g = function1;
    }
}
