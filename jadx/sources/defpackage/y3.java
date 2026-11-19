package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.presentation.screen.certificates.components.add.AddCertificateComposableKt;
import com.vuitton.android.presentation.screen.repairs.components.RepairConfirmAddressComposableKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class y3 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81272b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f81273c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ y3(Function0 function0, boolean z, int i2) {
        this.d = function0;
        this.f81273c = z;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f81272b;
        Function0 function0 = this.d;
        boolean z = this.f81273c;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                AddCertificateComposableKt.a(RecomposeScopeImplKt.a(1), (Composer) obj, function0, z);
                break;
            case 1:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    if (z) {
                        composer.L(-1769402143);
                        composer.F();
                    } else {
                        composer.L(-1769699092);
                        LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer, R.string.mylv_myprofile_settingsbrick_title), null, null, this.d, null, null, null, null, composer, 0, 0, 4023);
                        composer.F();
                    }
                } else {
                    composer.D();
                }
                break;
            default:
                ((Integer) obj2).getClass();
                RepairConfirmAddressComposableKt.b(RecomposeScopeImplKt.a(1), (Composer) obj, function0, z);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ y3(boolean z, Function0 function0) {
        this.f81273c = z;
        this.d = function0;
    }

    public /* synthetic */ y3(boolean z, Function0 function0, int i2) {
        this.f81273c = z;
        this.d = function0;
    }
}
