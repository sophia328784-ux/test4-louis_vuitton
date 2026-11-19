package defpackage;

import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.components.components.LVFlowerLoaderKt;
import com.vuitton.android.designkit.components.components.LVFlowerLoaderStyle;
import com.vuitton.android.presentation.compose.components.ShowOnDragPageNumberIndicatorKt;
import com.vuitton.android.presentation.screen.account.inbox.components.InboxComposableKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyDualColorComparatorKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class wd implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80838b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f80839c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f80840e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f80841f;
    public final /* synthetic */ Object g;

    public /* synthetic */ wd(boolean z, Function0 function0, Function0 function1, int i2, int i3) {
        this.f80838b = 1;
        this.f80839c = z;
        this.f80841f = function0;
        this.g = function1;
        this.d = i2;
        this.f80840e = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f80838b) {
            case 0:
                ((Integer) obj2).getClass();
                BeautyDualColorComparatorKt.e((Modifier) this.f80841f, (TryOnProductUiModel) this.g, this.f80839c, (Composer) obj, RecomposeScopeImplKt.a(this.d | 1), this.f80840e);
                break;
            case 1:
                ((Integer) obj2).getClass();
                InboxComposableKt.b(this.f80839c, (Function0) this.f80841f, (Function0) this.g, (Composer) obj, RecomposeScopeImplKt.a(this.d | 1), this.f80840e);
                break;
            case 2:
                ((Integer) obj2).getClass();
                LVFlowerLoaderKt.a((Modifier) this.f80841f, (LVFlowerLoaderStyle) this.g, this.f80839c, (Composer) obj, RecomposeScopeImplKt.a(this.d | 1), this.f80840e);
                break;
            default:
                ((Integer) obj2).getClass();
                ShowOnDragPageNumberIndicatorKt.a((Modifier) this.f80841f, (PagerState) this.g, this.f80839c, (Composer) obj, RecomposeScopeImplKt.a(this.d | 1), this.f80840e);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ wd(Modifier modifier, Object obj, boolean z, int i2, int i3, int i4) {
        this.f80838b = i4;
        this.f80841f = modifier;
        this.g = obj;
        this.f80839c = z;
        this.d = i2;
        this.f80840e = i3;
    }
}
