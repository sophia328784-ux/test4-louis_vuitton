package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.compose.components.CircularRevealOverlayKt;
import com.vuitton.android.presentation.screen.orders.components.list.OrderShippingGroupStatusKt;
import com.vuitton.android.presentation.screen.orders.models.OrderStatusUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class lm implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76052b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f76053c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f76054e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f76055f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f76056h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f76057i;

    public /* synthetic */ lm(Modifier modifier, OrderStatusUiModel orderStatusUiModel, LVColorScheme lVColorScheme, boolean z, long j2, int i2, int i3) {
        this.f76053c = modifier;
        this.f76056h = orderStatusUiModel;
        this.f76057i = lVColorScheme;
        this.d = z;
        this.f76054e = j2;
        this.f76055f = i2;
        this.g = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76052b;
        Object obj3 = this.f76057i;
        Object obj4 = this.f76056h;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                CircularRevealOverlayKt.a(this.d, (Rect) obj4, this.f76053c, this.f76054e, this.f76055f, (Function0) obj3, (Composer) obj, iA, this.g);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(this.f76055f | 1);
                Modifier modifier = this.f76053c;
                OrderShippingGroupStatusKt.a(modifier, (OrderStatusUiModel) obj4, (LVColorScheme) obj3, this.d, this.f76054e, (Composer) obj, iA2, this.g);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ lm(boolean z, Rect rect, Modifier modifier, long j2, int i2, Function0 function0, int i3, int i4) {
        this.d = z;
        this.f76056h = rect;
        this.f76053c = modifier;
        this.f76054e = j2;
        this.f76055f = i2;
        this.f76057i = function0;
        this.g = i4;
    }
}
