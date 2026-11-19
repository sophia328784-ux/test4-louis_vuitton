package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.authentication.welcome.components.WelcomeScreenKt;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class q31 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79002b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f79003c;
    public final /* synthetic */ List d;

    public /* synthetic */ q31(Modifier modifier, List list, int i2, int i3) {
        this.f79002b = i3;
        this.f79003c = modifier;
        this.d = list;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f79002b;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                ThankYouScreenKt.b(this.f79003c, this.d, composer, RecomposeScopeImplKt.a(1));
                break;
            default:
                WelcomeScreenKt.a(this.f79003c, this.d, composer, RecomposeScopeImplKt.a(1));
                break;
        }
        return Unit.f71739a;
    }
}
