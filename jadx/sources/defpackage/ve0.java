package defpackage;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.cart.components.NativeCartErrorScreenKt;
import com.vuitton.android.presentation.screen.osa.list.components.OsaListEmptyScreenKt;
import com.vuitton.android.presentation.screen.osa.list.components.OsaListErrorScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ve0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80562b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SnackbarHostState f80563c;
    public final /* synthetic */ Function2 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f80564e;

    public /* synthetic */ ve0(SnackbarHostState snackbarHostState, Function2 function2, Function0 function0, int i2, int i3) {
        this.f80562b = i3;
        this.f80563c = snackbarHostState;
        this.d = function2;
        this.f80564e = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f80562b;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                NativeCartErrorScreenKt.a(this.f80563c, this.d, this.f80564e, composer, RecomposeScopeImplKt.a(55));
                break;
            case 1:
                OsaListEmptyScreenKt.a(this.f80563c, this.d, this.f80564e, composer, RecomposeScopeImplKt.a(55));
                break;
            default:
                OsaListErrorScreenKt.a(this.f80563c, this.d, this.f80564e, composer, RecomposeScopeImplKt.a(55));
                break;
        }
        return Unit.f71739a;
    }
}
