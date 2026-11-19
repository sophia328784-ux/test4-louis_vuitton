package defpackage;

import androidx.activity.compose.PredictiveBackHandlerKt;
import androidx.compose.material3.internal.BackHandler_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.cart.components.NativeCartComponentsKt;
import com.vuitton.android.presentation.screen.cart.models.CartPriceInformationUiModel;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ic implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f69941c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f69942e;

    public /* synthetic */ ic(CartPriceInformationUiModel cartPriceInformationUiModel, boolean z, int i2) {
        this.f69940b = 1;
        this.f69942e = cartPriceInformationUiModel;
        this.f69941c = z;
        this.d = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f69940b) {
            case 0:
                Function0 function0 = (Function0) this.f69942e;
                ((Integer) obj2).getClass();
                BackHandler_androidKt.a(RecomposeScopeImplKt.a(this.d | 1), (Composer) obj, function0, this.f69941c);
                break;
            case 1:
                ((Integer) obj2).intValue();
                int iA = RecomposeScopeImplKt.a(this.d | 1);
                NativeCartComponentsKt.b((CartPriceInformationUiModel) this.f69942e, this.f69941c, (Composer) obj, iA);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(this.d | 1);
                PredictiveBackHandlerKt.a(this.f69941c, (Function2) this.f69942e, (Composer) obj, iA2);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ ic(boolean z, Function function, int i2, int i3) {
        this.f69940b = i3;
        this.f69941c = z;
        this.f69942e = function;
        this.d = i2;
    }
}
