package defpackage;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.cart.components.NativeCartLoadingScreenKt;
import com.vuitton.android.presentation.screen.osa.list.components.OsaListLoadingScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ff0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69132b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SnackbarHostState f69133c;
    public final /* synthetic */ Function2 d;

    public /* synthetic */ ff0(SnackbarHostState snackbarHostState, Function2 function2, int i2, int i3) {
        this.f69132b = i3;
        this.f69133c = snackbarHostState;
        this.d = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f69132b;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                NativeCartLoadingScreenKt.a(this.f69133c, this.d, composer, RecomposeScopeImplKt.a(55));
                break;
            default:
                OsaListLoadingScreenKt.a(this.f69133c, this.d, composer, RecomposeScopeImplKt.a(55));
                break;
        }
        return Unit.f71739a;
    }
}
