package defpackage;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import com.vuitton.android.presentation.screen.orders.components.list.OrderListEmptyScreenKt;
import com.vuitton.android.presentation.screen.wishlist.components.WishlistEmptyScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class li0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76034b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SnackbarHostState f76035c;
    public final /* synthetic */ ComposableLambdaImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f76036e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f76037f;

    public /* synthetic */ li0(SnackbarHostState snackbarHostState, ComposableLambdaImpl composableLambdaImpl, Function0 function0, int i2, int i3) {
        this.f76034b = i3;
        this.f76035c = snackbarHostState;
        this.d = composableLambdaImpl;
        this.f76036e = function0;
        this.f76037f = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76034b;
        int i3 = this.f76037f;
        Function0 function0 = this.f76036e;
        ComposableLambdaImpl composableLambdaImpl = this.d;
        SnackbarHostState snackbarHostState = this.f76035c;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                OrderListEmptyScreenKt.a(snackbarHostState, composableLambdaImpl, function0, composer, RecomposeScopeImplKt.a(i3 | 1));
                break;
            default:
                WishlistEmptyScreenKt.a(snackbarHostState, composableLambdaImpl, function0, composer, RecomposeScopeImplKt.a(i3 | 1));
                break;
        }
        return Unit.f71739a;
    }
}
