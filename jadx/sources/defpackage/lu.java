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
import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffFragment;
import com.vuitton.android.presentation.screen.distantrepairs.form.a;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class lu implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76090b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DistantRepairFormBffFragment f76091c;

    public /* synthetic */ lu(DistantRepairFormBffFragment distantRepairFormBffFragment, int i2) {
        this.f76090b = i2;
        this.f76091c = distantRepairFormBffFragment;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76090b;
        DistantRepairFormBffFragment distantRepairFormBffFragment = this.f76091c;
        int i3 = 1;
        Object[] objArr = 0;
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        switch (i2) {
            case 0:
                DistantRepairFormBffFragment.Companion companion = DistantRepairFormBffFragment.M;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-917128310, new lu(distantRepairFormBffFragment, i3), composer), composer, 48);
                } else {
                    composer.D();
                }
                break;
            default:
                DistantRepairFormBffFragment.Companion companion2 = DistantRepairFormBffFragment.M;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    PaddingValues paddingValuesE = WindowInsetsKt.e(WindowInsets_androidKt.c(composer), composer);
                    LVDistantCareLocalProviderKt.a(ComposableLambdaKt.b(-158233653, new a(distantRepairFormBffFragment, SnapshotStateKt.l(Integer.valueOf((int) ResourcesExtKt.b(paddingValuesE.getF5031b())), composer), (int) ResourcesExtKt.b(paddingValuesE.getD()), objArr == true ? 1 : 0), composer), composer, 6);
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
