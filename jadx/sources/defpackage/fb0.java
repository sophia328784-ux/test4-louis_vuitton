package defpackage;

import androidx.compose.material3.SwitchColors;
import androidx.compose.material3.SwitchKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.screen.orders.components.list.OrderListScreenKt;
import com.vuitton.android.presentation.screen.orders.models.OrderPageUiModel;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class fb0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69099b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f69100c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f69101e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f69102f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f69103h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f69104i;

    public /* synthetic */ fb0(Modifier modifier, int i2, int i3, String str, boolean z, boolean z2, Function0 function0, int i4) {
        this.f69100c = modifier;
        this.f69102f = i2;
        this.g = i3;
        this.f69103h = str;
        this.d = z;
        this.f69101e = z2;
        this.f69104i = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f69099b) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1794055);
                LvVideoPlayerKt.a(this.f69100c, this.f69102f, this.g, (String) this.f69103h, this.d, this.f69101e, (Function0) this.f69104i, (Composer) obj, iA);
                break;
            case 1:
                ((Integer) obj2).getClass();
                OrderListScreenKt.a(this.f69100c, (OrderPageUiModel) this.f69103h, this.d, this.f69101e, (Function3) this.f69104i, (Composer) obj, RecomposeScopeImplKt.a(this.f69102f | 1), this.g);
                break;
            case 2:
                ((Integer) obj2).getClass();
                SwitchKt.a(this.d, (Function1) this.f69103h, this.f69100c, this.f69101e, (SwitchColors) this.f69104i, (Composer) obj, RecomposeScopeImplKt.a(this.f69102f | 1), this.g);
                break;
            default:
                ((Integer) obj2).getClass();
                ThankYouScreenKt.h(this.f69100c, (String) this.f69103h, (String) this.f69104i, this.d, this.f69101e, (Composer) obj, RecomposeScopeImplKt.a(this.f69102f | 1), this.g);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ fb0(Modifier modifier, OrderPageUiModel orderPageUiModel, boolean z, boolean z2, Function3 function3, int i2, int i3) {
        this.f69100c = modifier;
        this.f69103h = orderPageUiModel;
        this.d = z;
        this.f69101e = z2;
        this.f69104i = function3;
        this.f69102f = i2;
        this.g = i3;
    }

    public /* synthetic */ fb0(Modifier modifier, String str, String str2, boolean z, boolean z2, int i2, int i3) {
        this.f69100c = modifier;
        this.f69103h = str;
        this.f69104i = str2;
        this.d = z;
        this.f69101e = z2;
        this.f69102f = i2;
        this.g = i3;
    }

    public /* synthetic */ fb0(boolean z, Function1 function1, Modifier modifier, boolean z2, SwitchColors switchColors, int i2, int i3) {
        this.d = z;
        this.f69103h = function1;
        this.f69100c = modifier;
        this.f69101e = z2;
        this.f69104i = switchColors;
        this.f69102f = i2;
        this.g = i3;
    }
}
