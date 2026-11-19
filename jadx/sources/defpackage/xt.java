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
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentFragment;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.a;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class xt implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81193b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DistantRepairAssessmentFragment f81194c;

    public /* synthetic */ xt(DistantRepairAssessmentFragment distantRepairAssessmentFragment, int i2) {
        this.f81193b = i2;
        this.f81194c = distantRepairAssessmentFragment;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f81193b;
        DistantRepairAssessmentFragment distantRepairAssessmentFragment = this.f81194c;
        int i3 = 1;
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        switch (i2) {
            case 0:
                DistantRepairAssessmentFragment.Companion companion = DistantRepairAssessmentFragment.M;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-625070776, new xt(distantRepairAssessmentFragment, i3), composer), composer, 48);
                } else {
                    composer.D();
                }
                break;
            default:
                DistantRepairAssessmentFragment.Companion companion2 = DistantRepairAssessmentFragment.M;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    LVDistantCareLocalProviderKt.a(ComposableLambdaKt.b(201761801, new a(distantRepairAssessmentFragment, ResourcesExtKt.b(WindowInsetsKt.e(WindowInsets_androidKt.c(composer), composer).getF5031b()), ResourcesExtKt.b(WindowInsetsKt.e(WindowInsets_androidKt.c(composer), composer).getD()), i3), composer), composer, 6);
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
