package defpackage;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import com.vuitton.android.presentation.screen.account.myinformation.components.edition.EditMyInfoErrorScreenKt;
import com.vuitton.android.presentation.screen.wishlist.components.WishlistErrorScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class qv implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79170b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SnackbarHostState f79171c;
    public final /* synthetic */ ComposableLambdaImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f79172e;

    public /* synthetic */ qv(SnackbarHostState snackbarHostState, ComposableLambdaImpl composableLambdaImpl, Function0 function0, int i2, int i3) {
        this.f79170b = i3;
        this.f79171c = snackbarHostState;
        this.d = composableLambdaImpl;
        this.f79172e = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f79170b;
        Function0 function0 = this.f79172e;
        ComposableLambdaImpl composableLambdaImpl = this.d;
        SnackbarHostState snackbarHostState = this.f79171c;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                EditMyInfoErrorScreenKt.a(snackbarHostState, composableLambdaImpl, function0, composer, RecomposeScopeImplKt.a(55));
                break;
            default:
                WishlistErrorScreenKt.a(snackbarHostState, composableLambdaImpl, function0, composer, RecomposeScopeImplKt.a(55));
                break;
        }
        return Unit.f71739a;
    }
}
