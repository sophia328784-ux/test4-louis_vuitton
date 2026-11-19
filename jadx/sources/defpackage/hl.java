package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.certificates.components.add.CertificateConfirmationScreenKt;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.components.OptOutOthersScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class hl implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69736b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f69737c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f69738e;

    public /* synthetic */ hl(Function0 function0, Function0 function1, Function0 function2, int i2, int i3) {
        this.f69736b = i3;
        this.f69737c = function0;
        this.d = function1;
        this.f69738e = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f69736b;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                CertificateConfirmationScreenKt.a(this.f69737c, this.d, this.f69738e, composer, RecomposeScopeImplKt.a(1));
                break;
            default:
                OptOutOthersScreenKt.a(this.f69737c, this.d, this.f69738e, composer, RecomposeScopeImplKt.a(1));
                break;
        }
        return Unit.f71739a;
    }
}
