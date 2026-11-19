package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.presentation.screen.osa.OsaActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class cj0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21164b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OsaActivity f21165c;

    public /* synthetic */ cj0(OsaActivity osaActivity, int i2) {
        this.f21164b = i2;
        this.f21165c = osaActivity;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f21164b;
        OsaActivity osaActivity = this.f21165c;
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        switch (i2) {
            case 0:
                OsaActivity.Companion companion = OsaActivity.u;
                int i3 = 1;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(863850062, new cj0(osaActivity, i3), composer), composer, 48);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            default:
                return OsaActivity.H(osaActivity, composer, iIntValue);
        }
    }
}
