package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import com.vuitton.android.presentation.screen.certificates.components.list.CertificateEmptyScreenKt;
import com.vuitton.android.presentation.screen.certificates.components.list.CertificateErrorScreenKt;
import com.vuitton.android.presentation.screen.personalselections.detail.instore.components.PersonalSelectionsInStoreErrorScreenKt;
import com.vuitton.android.presentation.screen.personalselections.list.components.PersonalSelectionsListErrorScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class jl implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71420b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ComposableLambdaImpl f71421c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f71422e;

    public /* synthetic */ jl(ComposableLambdaImpl composableLambdaImpl, Function0 function0, int i2, int i3) {
        this.f71420b = i3;
        this.f71421c = composableLambdaImpl;
        this.d = function0;
        this.f71422e = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f71420b;
        int i3 = this.f71422e;
        Function0 function0 = this.d;
        ComposableLambdaImpl composableLambdaImpl = this.f71421c;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                CertificateEmptyScreenKt.a(composableLambdaImpl, function0, composer, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 1:
                CertificateErrorScreenKt.a(composableLambdaImpl, function0, composer, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 2:
                PersonalSelectionsInStoreErrorScreenKt.a(composableLambdaImpl, function0, composer, RecomposeScopeImplKt.a(i3 | 1));
                break;
            default:
                PersonalSelectionsListErrorScreenKt.a(composableLambdaImpl, function0, composer, RecomposeScopeImplKt.a(i3 | 1));
                break;
        }
        return Unit.f71739a;
    }
}
