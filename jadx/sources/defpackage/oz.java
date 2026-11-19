package defpackage;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.FlowLayoutKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.WishlistAnimationKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class oz implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78695b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f78696c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f78697e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f78698f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f78699h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f78700i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f78701j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Function f78702k;

    public /* synthetic */ oz(Modifier modifier, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, Alignment.Vertical vertical2, int i2, int i3, ComposableLambdaImpl composableLambdaImpl, int i4, int i5) {
        this.f78696c = modifier;
        this.f78699h = horizontal;
        this.f78700i = vertical;
        this.f78701j = vertical2;
        this.d = i2;
        this.f78697e = i3;
        this.f78702k = composableLambdaImpl;
        this.f78698f = i4;
        this.g = i5;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f78695b;
        int i3 = this.f78698f;
        Function function = this.f78702k;
        Object obj3 = this.f78701j;
        Object obj4 = this.f78700i;
        Object obj5 = this.f78699h;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(i3 | 1);
                FlowLayoutKt.a(this.f78696c, (Arrangement.Horizontal) obj5, (Arrangement.Vertical) obj4, (Alignment.Vertical) obj3, this.d, this.f78697e, (ComposableLambdaImpl) function, (Composer) obj, iA, this.g);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(i3 | 1);
                WishlistAnimationKt.b(this.f78696c, (PlpProductUiModel) obj5, (PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel) obj4, this.d, this.f78697e, (Function0) obj3, (Function1) function, (Composer) obj, iA2, this.g);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ oz(Modifier modifier, PlpProductUiModel plpProductUiModel, PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel pLPWishlistStateUiModel, int i2, int i3, Function0 function0, Function1 function1, int i4, int i5) {
        this.f78696c = modifier;
        this.f78699h = plpProductUiModel;
        this.f78700i = pLPWishlistStateUiModel;
        this.d = i2;
        this.f78697e = i3;
        this.f78701j = function0;
        this.f78702k = function1;
        this.f78698f = i4;
        this.g = i5;
    }
}
