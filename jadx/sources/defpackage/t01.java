package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.certificates.components.transfer.TransferCertificateConfirmationComposableKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightBottomStepperKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class t01 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79929b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f79930c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f79931e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f79932f;

    public /* synthetic */ t01(Modifier modifier, int i2, String str, int i3) {
        this.f79930c = modifier;
        this.d = i2;
        this.f79931e = str;
        this.f79932f = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f79929b;
        int i3 = this.f79932f;
        String str = this.f79931e;
        int i4 = this.d;
        Modifier modifier = this.f79930c;
        Composer composer = (Composer) obj;
        Integer num = (Integer) obj2;
        switch (i2) {
            case 0:
                num.getClass();
                SpotlightBottomStepperKt.c(RecomposeScopeImplKt.a(i4 | 1), i3, composer, modifier, str);
                break;
            default:
                num.intValue();
                TransferCertificateConfirmationComposableKt.b(i4, RecomposeScopeImplKt.a(i3 | 1), composer, modifier, str);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ t01(Modifier modifier, String str, int i2, int i3) {
        this.f79930c = modifier;
        this.f79931e = str;
        this.d = i2;
        this.f79932f = i3;
    }
}
