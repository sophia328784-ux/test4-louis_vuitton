package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVDropdownKt;
import com.vuitton.android.presentation.screen.osa.list.components.OsaListDataScreenKt;
import com.vuitton.android.presentation.screen.osa.models.OsaItemUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class u50 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80228b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f80229c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f80230e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f80231f;
    public final /* synthetic */ Function1 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f80232h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f80233i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f80234j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f80235k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;

    public /* synthetic */ u50(Modifier modifier, LVColorScheme lVColorScheme, String str, List list, Integer num, boolean z, boolean z2, String str2, Function1 function1, boolean z3, int i2, int i3) {
        this.f80229c = modifier;
        this.f80234j = lVColorScheme;
        this.f80235k = str;
        this.m = list;
        this.n = num;
        this.d = z;
        this.f80230e = z2;
        this.l = str2;
        this.g = function1;
        this.f80231f = z3;
        this.f80232h = i2;
        this.f80233i = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f80228b) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(this.f80232h | 1);
                LVDropdownKt.a(this.f80229c, (LVColorScheme) this.f80234j, (String) this.f80235k, (List) this.m, (Integer) this.n, this.d, this.f80230e, (String) this.l, this.g, this.f80231f, (Composer) obj, iA, this.f80233i);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(this.f80232h | 1);
                OsaListDataScreenKt.a(this.f80229c, (InAppDispatch) this.f80234j, (OsaItemUiModel) this.f80235k, this.d, this.f80230e, this.f80231f, (Function0) this.l, (Function2) this.m, this.g, (Function1) this.n, (Composer) obj, iA2, this.f80233i);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ u50(Modifier modifier, InAppDispatch inAppDispatch, OsaItemUiModel osaItemUiModel, boolean z, boolean z2, boolean z3, Function0 function0, Function2 function2, Function1 function1, Function1 function3, int i2, int i3) {
        this.f80229c = modifier;
        this.f80234j = inAppDispatch;
        this.f80235k = osaItemUiModel;
        this.d = z;
        this.f80230e = z2;
        this.f80231f = z3;
        this.l = function0;
        this.m = function2;
        this.g = function1;
        this.n = function3;
        this.f80232h = i2;
        this.f80233i = i3;
    }
}
