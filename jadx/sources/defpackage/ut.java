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
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentBffFragment;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.a;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ut implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80390b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DistantRepairAssessmentBffFragment f80391c;

    public /* synthetic */ ut(DistantRepairAssessmentBffFragment distantRepairAssessmentBffFragment, int i2) {
        this.f80390b = i2;
        this.f80391c = distantRepairAssessmentBffFragment;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f80390b;
        DistantRepairAssessmentBffFragment distantRepairAssessmentBffFragment = this.f80391c;
        int i3 = 1;
        Object[] objArr = 0;
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        switch (i2) {
            case 0:
                DistantRepairAssessmentBffFragment.Companion companion = DistantRepairAssessmentBffFragment.N;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(1685624072, new ut(distantRepairAssessmentBffFragment, i3), composer), composer, 48);
                } else {
                    composer.D();
                }
                break;
            default:
                DistantRepairAssessmentBffFragment.Companion companion2 = DistantRepairAssessmentBffFragment.N;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    LVDistantCareLocalProviderKt.a(ComposableLambdaKt.b(-2136787191, new a(distantRepairAssessmentBffFragment, ResourcesExtKt.b(WindowInsetsKt.e(WindowInsets_androidKt.c(composer), composer).getF5031b()), ResourcesExtKt.b(WindowInsetsKt.e(WindowInsets_androidKt.c(composer), composer).getD()), objArr == true ? 1 : 0), composer), composer, 6);
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
