package defpackage;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import com.vuitton.android.presentation.screen.account.addresseditor.components.AddressEditorErrorScreenKt;
import com.vuitton.android.presentation.screen.orders.components.list.OrderListErrorScreenKt;
import com.vuitton.android.presentation.screen.orders.components.list.OrderListLoadingScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class v4 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80492b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SnackbarHostState f80493c;
    public final /* synthetic */ ComposableLambdaImpl d;

    public /* synthetic */ v4(SnackbarHostState snackbarHostState, ComposableLambdaImpl composableLambdaImpl, int i2, int i3) {
        this.f80492b = i3;
        this.f80493c = snackbarHostState;
        this.d = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f80492b;
        ComposableLambdaImpl composableLambdaImpl = this.d;
        SnackbarHostState snackbarHostState = this.f80493c;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                AddressEditorErrorScreenKt.a(snackbarHostState, composableLambdaImpl, composer, RecomposeScopeImplKt.a(55));
                break;
            case 1:
                OrderListErrorScreenKt.a(snackbarHostState, composableLambdaImpl, composer, RecomposeScopeImplKt.a(55));
                break;
            default:
                OrderListLoadingScreenKt.a(snackbarHostState, composableLambdaImpl, composer, RecomposeScopeImplKt.a(55));
                break;
        }
        return Unit.f71739a;
    }
}
