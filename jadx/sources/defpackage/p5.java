package defpackage;

import androidx.compose.foundation.text.AndroidCursorHandle_androidKt;
import androidx.compose.foundation.text.selection.OffsetProvider;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.orders.components.detail.OrderDetailScreenKt;
import com.vuitton.android.presentation.screen.orders.models.AutomationTagsOrders$ProductDetailRowType;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class p5 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78756b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f78757c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f78758e;

    public /* synthetic */ p5(String str, long j2, AutomationTagsOrders$ProductDetailRowType automationTagsOrders$ProductDetailRowType, int i2) {
        this.f78756b = 2;
        this.d = str;
        this.f78757c = j2;
        this.f78758e = automationTagsOrders$ProductDetailRowType;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f78756b;
        Object obj3 = this.f78758e;
        Object obj4 = this.d;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                AndroidCursorHandle_androidKt.a((OffsetProvider) obj4, (Modifier) obj3, this.f78757c, (Composer) obj, iA);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                OrderDetailScreenKt.l((String) obj4, (String) obj3, this.f78757c, (Composer) obj, iA2);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(385);
                OrderDetailScreenKt.o((String) obj4, this.f78757c, (AutomationTagsOrders$ProductDetailRowType) obj3, (Composer) obj, iA3);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ p5(Object obj, Object obj2, long j2, int i2, int i3) {
        this.f78756b = i3;
        this.d = obj;
        this.f78758e = obj2;
        this.f78757c = j2;
    }
}
