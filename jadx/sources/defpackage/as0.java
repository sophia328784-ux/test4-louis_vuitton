package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBffScreenKt;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class as0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20617b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f20618c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ComposableLambdaImpl f20619e;

    public /* synthetic */ as0(Modifier modifier, String str, ComposableLambdaImpl composableLambdaImpl, int i2, int i3) {
        this.f20617b = i3;
        this.f20618c = modifier;
        this.d = str;
        this.f20619e = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f20617b;
        ComposableLambdaImpl composableLambdaImpl = this.f20619e;
        String str = this.d;
        Modifier modifier = this.f20618c;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                RepairDetailBffScreenKt.k(modifier, str, composableLambdaImpl, composer, RecomposeScopeImplKt.a(385));
                break;
            default:
                ThankYouScreenKt.f(modifier, str, composableLambdaImpl, composer, RecomposeScopeImplKt.a(385));
                break;
        }
        return Unit.f71739a;
    }
}
