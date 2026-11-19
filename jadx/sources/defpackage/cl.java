package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.certificates.components.list.CertificateComposableKt;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListComposableKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class cl implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21176b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ContactUsUiModel f21177c;
    public final /* synthetic */ Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f21178e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f21179f;

    public /* synthetic */ cl(ContactUsUiModel contactUsUiModel, Function0 function0, Function1 function1, Function0 function2, int i2) {
        this.f21177c = contactUsUiModel;
        this.f21178e = function0;
        this.d = function1;
        this.f21179f = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f21176b) {
            case 0:
                ((Integer) obj2).getClass();
                CertificateComposableKt.c(RecomposeScopeImplKt.a(1), (Composer) obj, this.f21177c, this.f21178e, this.f21179f, this.d);
                break;
            default:
                ((Integer) obj2).getClass();
                RepairListComposableKt.c(RecomposeScopeImplKt.a(1), (Composer) obj, this.f21177c, this.f21178e, this.f21179f, this.d);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ cl(ContactUsUiModel contactUsUiModel, Function1 function1, Function0 function0, Function0 function2, int i2) {
        this.f21177c = contactUsUiModel;
        this.d = function1;
        this.f21178e = function0;
        this.f21179f = function2;
    }
}
