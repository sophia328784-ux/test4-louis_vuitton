package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.certificates.components.capucine.CertificateCapucineScreenKt;
import com.vuitton.android.presentation.screen.certificates.model.CertificateCapucineUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class yk implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81378b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CertificateCapucineUiModel f81379c;

    public /* synthetic */ yk(CertificateCapucineUiModel certificateCapucineUiModel, int i2, int i3) {
        this.f81378b = i3;
        this.f81379c = certificateCapucineUiModel;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f81378b;
        CertificateCapucineUiModel certificateCapucineUiModel = this.f81379c;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                CertificateCapucineScreenKt.a(certificateCapucineUiModel, composer, RecomposeScopeImplKt.a(1));
                break;
            case 1:
                CertificateCapucineScreenKt.b(certificateCapucineUiModel, composer, RecomposeScopeImplKt.a(1));
                break;
            default:
                CertificateCapucineScreenKt.c(certificateCapucineUiModel, composer, RecomposeScopeImplKt.a(1));
                break;
        }
        return Unit.f71739a;
    }
}
