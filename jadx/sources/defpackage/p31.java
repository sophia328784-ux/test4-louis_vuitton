package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.certificates.components.TransferCertificateCardKt;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class p31 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78746b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f78747c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f78748e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f78749f;

    public /* synthetic */ p31(Modifier modifier, Function0 function0, int i2, int i3, int i4) {
        this.f78746b = i4;
        this.f78747c = modifier;
        this.d = function0;
        this.f78748e = i2;
        this.f78749f = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f78746b;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                ThankYouScreenKt.a(RecomposeScopeImplKt.a(this.f78748e | 1), this.f78749f, composer, this.f78747c, this.d);
                break;
            default:
                TransferCertificateCardKt.a(RecomposeScopeImplKt.a(this.f78748e | 1), this.f78749f, composer, this.f78747c, this.d);
                break;
        }
        return Unit.f71739a;
    }
}
