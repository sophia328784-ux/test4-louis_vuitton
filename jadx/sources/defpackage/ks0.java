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
import com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment;
import com.vuitton.android.presentation.screen.repairs.detail.a;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ks0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75864b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RepairDetailsFragment f75865c;

    public /* synthetic */ ks0(RepairDetailsFragment repairDetailsFragment, int i2) {
        this.f75864b = i2;
        this.f75865c = repairDetailsFragment;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f75864b;
        RepairDetailsFragment repairDetailsFragment = this.f75865c;
        int i3 = 1;
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        switch (i2) {
            case 0:
                RepairDetailsFragment.Companion companion = RepairDetailsFragment.P;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(1771935556, new ks0(repairDetailsFragment, i3), composer), composer, 48);
                } else {
                    composer.D();
                }
                break;
            default:
                RepairDetailsFragment.Companion companion2 = RepairDetailsFragment.P;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    PaddingValues paddingValuesE = WindowInsetsKt.e(WindowInsets_androidKt.c(composer), composer);
                    LVDistantCareLocalProviderKt.a(ComposableLambdaKt.b(-871811933, new a(repairDetailsFragment, SnapshotStateKt.l(Integer.valueOf((int) ResourcesExtKt.b(paddingValuesE.getF5031b())), composer), (int) ResourcesExtKt.b(paddingValuesE.getD()), 3), composer), composer, 6);
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
