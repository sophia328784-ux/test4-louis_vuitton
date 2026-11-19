package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVCatalogLocalProviderKt;
import com.vuitton.android.presentation.screen.plp.activities.SkusPLPActivity;
import com.vuitton.android.presentation.screen.plp.activities.c;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class jz0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71503b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SkusPLPActivity f71504c;

    public /* synthetic */ jz0(SkusPLPActivity skusPLPActivity, int i2) {
        this.f71503b = i2;
        this.f71504c = skusPLPActivity;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f71503b;
        SkusPLPActivity skusPLPActivity = this.f71504c;
        int i3 = 1;
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        switch (i2) {
            case 0:
                SkusPLPActivity.Companion companion = SkusPLPActivity.p;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(2090078382, new jz0(skusPLPActivity, i3), composer), composer, 48);
                } else {
                    composer.D();
                }
                break;
            default:
                SkusPLPActivity.Companion companion2 = SkusPLPActivity.p;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    LVCatalogLocalProviderKt.a(ComposableLambdaKt.b(525163636, new c(skusPLPActivity, i3), composer), composer, 6);
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
