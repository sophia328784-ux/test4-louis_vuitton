package defpackage;

import android.os.Bundle;
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
import com.vuitton.android.presentation.screen.repairs.detail.RepairDetailBffFragment;
import com.vuitton.android.presentation.screen.repairs.detail.a;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class xr0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81188b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RepairDetailBffFragment f81189c;

    public /* synthetic */ xr0(RepairDetailBffFragment repairDetailBffFragment, int i2) {
        this.f81188b = i2;
        this.f81189c = repairDetailBffFragment;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f81188b;
        int i3 = 2;
        int i4 = 1;
        RepairDetailBffFragment repairDetailBffFragment = this.f81189c;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                RepairDetailBffFragment.Companion companion = RepairDetailBffFragment.P;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-1950946650, new xr0(repairDetailBffFragment, i4), composer), composer, 48);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                RepairDetailBffFragment.Companion companion2 = RepairDetailBffFragment.P;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    PaddingValues paddingValuesE = WindowInsetsKt.e(WindowInsets_androidKt.c(composer2), composer2);
                    LVDistantCareLocalProviderKt.a(ComposableLambdaKt.b(1783021701, new a(repairDetailBffFragment, SnapshotStateKt.l(Integer.valueOf((int) ResourcesExtKt.b(paddingValuesE.getF5031b())), composer2), (int) ResourcesExtKt.b(paddingValuesE.getD()), i3), composer2), composer2, 6);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            default:
                return RepairDetailBffFragment.P(repairDetailBffFragment, (String) obj, (Bundle) obj2);
        }
    }
}
