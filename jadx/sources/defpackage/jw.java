package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVCatalogLocalProviderKt;
import com.vuitton.android.presentation.screen.plp.activities.ExclusivePLPActivity;
import com.vuitton.android.presentation.screen.plp.activities.c;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class jw implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71482b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ExclusivePLPActivity f71483c;

    public /* synthetic */ jw(ExclusivePLPActivity exclusivePLPActivity, int i2) {
        this.f71482b = i2;
        this.f71483c = exclusivePLPActivity;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f71482b;
        ExclusivePLPActivity exclusivePLPActivity = this.f71483c;
        Object[] objArr = 0;
        int i3 = 1;
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        switch (i2) {
            case 0:
                ExclusivePLPActivity.Companion companion = ExclusivePLPActivity.p;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-38278728, new jw(exclusivePLPActivity, i3), composer), composer, 48);
                } else {
                    composer.D();
                }
                break;
            default:
                ExclusivePLPActivity.Companion companion2 = ExclusivePLPActivity.p;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    LVCatalogLocalProviderKt.a(ComposableLambdaKt.b(1987163646, new c(exclusivePLPActivity, objArr == true ? 1 : 0), composer), composer, 6);
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
