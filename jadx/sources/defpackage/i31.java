package defpackage;

import androidx.compose.animation.core.Transition;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextStyle;
import com.vuitton.android.presentation.compose.VideoLoaderKt;
import com.vuitton.android.presentation.loading.LoadingMode;
import com.vuitton.android.presentation.screen.search.components.TrendingComposableKt;
import com.vuitton.android.presentation.screen.search.models.TrendingItemUiModel;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import com.vuitton.android.presentation.screen.thankyou.models.CheckoutConfirmationDetailUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class i31 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69862b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f69863c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f69864e;

    public /* synthetic */ i31(Modifier modifier, Object obj, int i2, int i3, int i4) {
        this.f69862b = i4;
        this.d = modifier;
        this.f69864e = obj;
        this.f69863c = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f69862b) {
            case 0:
                ((Integer) obj2).getClass();
                TextKt.a((TextStyle) this.d, (Function2) this.f69864e, (Composer) obj, RecomposeScopeImplKt.a(this.f69863c | 1));
                break;
            case 1:
                ((Integer) obj2).getClass();
                ThankYouScreenKt.e((Modifier) this.d, (CheckoutConfirmationDetailUiModel) this.f69864e, (Composer) obj, RecomposeScopeImplKt.a(this.f69863c | 1));
                break;
            case 2:
                ((Integer) obj2).intValue();
                int iA = RecomposeScopeImplKt.a(this.f69863c | 1);
                ((Transition) this.d).a(this.f69864e, (Composer) obj, iA);
                break;
            case 3:
                ((Integer) obj2).getClass();
                TrendingComposableKt.b((Modifier) this.d, (TrendingItemUiModel) this.f69864e, (Composer) obj, RecomposeScopeImplKt.a(1), this.f69863c);
                break;
            default:
                ((Integer) obj2).getClass();
                VideoLoaderKt.a((Modifier) this.d, (LoadingMode) this.f69864e, (Composer) obj, RecomposeScopeImplKt.a(1), this.f69863c);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ i31(Object obj, Object obj2, int i2, int i3) {
        this.f69862b = i3;
        this.d = obj;
        this.f69864e = obj2;
        this.f69863c = i2;
    }
}
