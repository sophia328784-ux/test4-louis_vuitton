package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.certificates.components.capucine.CertificateCapucineComposableKt;
import com.vuitton.android.presentation.screen.certificates.components.capucine.CertificateCapucineScreenKt;
import com.vuitton.android.presentation.screen.certificates.model.CertificateCapucineUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class xk implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81146b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CertificateCapucineUiModel f81147c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ xk(CertificateCapucineUiModel certificateCapucineUiModel, Function0 function0, int i2, int i3) {
        this.f81146b = i3;
        this.f81147c = certificateCapucineUiModel;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f81146b;
        Function0 function0 = this.d;
        CertificateCapucineUiModel certificateCapucineUiModel = this.f81147c;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                CertificateCapucineComposableKt.a(certificateCapucineUiModel, function0, composer, RecomposeScopeImplKt.a(1));
                break;
            default:
                CertificateCapucineScreenKt.d(certificateCapucineUiModel, function0, composer, RecomposeScopeImplKt.a(1));
                break;
        }
        return Unit.f71739a;
    }
}
