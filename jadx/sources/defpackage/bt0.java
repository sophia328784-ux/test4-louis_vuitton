package defpackage;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVDistantCareLocalProviderKt;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import com.vuitton.android.presentation.screen.repairs.detail.RepairPaymentFailedFragment;
import com.vuitton.android.presentation.screen.repairs.detail.a;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class bt0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20951b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RepairPaymentFailedFragment f20952c;

    public /* synthetic */ bt0(RepairPaymentFailedFragment repairPaymentFailedFragment, int i2) {
        this.f20951b = i2;
        this.f20952c = repairPaymentFailedFragment;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f20951b;
        RepairPaymentFailedFragment repairPaymentFailedFragment = this.f20952c;
        int i3 = 1;
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        switch (i2) {
            case 0:
                RepairPaymentFailedFragment.Companion companion = RepairPaymentFailedFragment.K;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(1875711874, new bt0(repairPaymentFailedFragment, i3), composer), composer, 48);
                } else {
                    composer.D();
                }
                break;
            default:
                RepairPaymentFailedFragment.Companion companion2 = RepairPaymentFailedFragment.K;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    PaddingValues paddingValuesE = WindowInsetsKt.e(WindowInsets_androidKt.c(composer), composer);
                    LVDistantCareLocalProviderKt.a(ComposableLambdaKt.b(1733598817, new a(repairPaymentFailedFragment, SnapshotStateKt.l(Integer.valueOf((int) ResourcesExtKt.b(paddingValuesE.getF5031b())), composer), (int) ResourcesExtKt.b(paddingValuesE.getD()), 4), composer), composer, 6);
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
