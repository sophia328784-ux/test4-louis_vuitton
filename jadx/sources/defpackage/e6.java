package defpackage;

import androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.compose.LVPlayPauseButtonKt;
import com.vuitton.android.presentation.screen.main.components.MainNavBarKt;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpWishListTopBarButtonKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class e6 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68771b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f68772c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f68773e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f68774f;

    public /* synthetic */ e6(Modifier modifier, int i2, boolean z, Function0 function0, int i3) {
        this.f68772c = modifier;
        this.f68774f = i2;
        this.d = z;
        this.f68773e = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f68771b) {
            case 0:
                ((Integer) obj2).getClass();
                AndroidSelectionHandles_androidKt.c(RecomposeScopeImplKt.a(this.f68774f | 1), (Composer) obj, this.f68772c, this.f68773e, this.d);
                break;
            case 1:
                ((Integer) obj2).getClass();
                LVPlayPauseButtonKt.a(RecomposeScopeImplKt.a(this.f68774f | 1), (Composer) obj, this.f68772c, this.f68773e, this.d);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                MainNavBarKt.b(this.f68774f, iA, (Composer) obj, this.f68772c, this.f68773e, this.d);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                PdpWishListTopBarButtonKt.a(this.f68774f, iA2, (Composer) obj, this.f68772c, this.f68773e, this.d);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ e6(Modifier modifier, Function0 function0, boolean z, int i2) {
        this.f68772c = modifier;
        this.f68773e = function0;
        this.d = z;
        this.f68774f = i2;
    }

    public /* synthetic */ e6(Modifier modifier, boolean z, int i2, Function0 function0, int i3) {
        this.f68772c = modifier;
        this.d = z;
        this.f68774f = i2;
        this.f68773e = function0;
    }

    public /* synthetic */ e6(Modifier modifier, boolean z, Function0 function0, int i2) {
        this.f68772c = modifier;
        this.d = z;
        this.f68773e = function0;
        this.f68774f = i2;
    }
}
