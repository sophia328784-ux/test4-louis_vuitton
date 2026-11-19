package defpackage;

import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVDistantCareLocalProviderKt;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import com.vuitton.android.presentation.screen.repairs.list.RepairListFragment;
import com.vuitton.android.presentation.screen.repairs.list.a;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class us0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80388b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RepairListFragment f80389c;

    public /* synthetic */ us0(RepairListFragment repairListFragment, int i2) {
        this.f80388b = i2;
        this.f80389c = repairListFragment;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f80388b;
        RepairListFragment repairListFragment = this.f80389c;
        int i3 = 1;
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        switch (i2) {
            case 0:
                RepairListFragment.Companion companion = RepairListFragment.L;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(1759148461, new us0(repairListFragment, i3), composer), composer, 48);
                } else {
                    composer.D();
                }
                break;
            default:
                RepairListFragment.Companion companion2 = RepairListFragment.L;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    LVDistantCareLocalProviderKt.a(ComposableLambdaKt.b(957146636, new a(repairListFragment, ResourcesExtKt.b(WindowInsetsKt.e(WindowInsets_androidKt.c(composer), composer).getF5031b()), ResourcesExtKt.b(WindowInsetsKt.e(WindowInsets_androidKt.c(composer), composer).getD()), i3), composer), composer, 6);
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
