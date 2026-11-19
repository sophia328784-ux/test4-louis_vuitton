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
import com.vuitton.android.presentation.screen.repairs.detail.RepairConfirmAddressFragment;
import com.vuitton.android.presentation.screen.repairs.detail.a;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class vr0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80647b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RepairConfirmAddressFragment f80648c;

    public /* synthetic */ vr0(RepairConfirmAddressFragment repairConfirmAddressFragment, int i2) {
        this.f80647b = i2;
        this.f80648c = repairConfirmAddressFragment;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f80647b;
        int i3 = 1;
        RepairConfirmAddressFragment repairConfirmAddressFragment = this.f80648c;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                RepairConfirmAddressFragment.Companion companion = RepairConfirmAddressFragment.M;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(2050120794, new vr0(repairConfirmAddressFragment, i3), composer), composer, 48);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                RepairConfirmAddressFragment.Companion companion2 = RepairConfirmAddressFragment.M;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    PaddingValues paddingValuesE = WindowInsetsKt.e(WindowInsets_androidKt.c(composer2), composer2);
                    LVDistantCareLocalProviderKt.a(ComposableLambdaKt.b(-1376540807, new a(repairConfirmAddressFragment, SnapshotStateKt.l(Integer.valueOf((int) ResourcesExtKt.b(paddingValuesE.getF5031b())), composer2), (int) ResourcesExtKt.b(paddingValuesE.getD()), i3), composer2), composer2, 6);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 2:
                return RepairConfirmAddressFragment.P(repairConfirmAddressFragment, (String) obj, (Bundle) obj2);
            default:
                return RepairConfirmAddressFragment.O(repairConfirmAddressFragment, (String) obj, (Bundle) obj2);
        }
    }
}
