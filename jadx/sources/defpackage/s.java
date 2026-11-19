package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionChatHeaderKt;
import com.vuitton.android.presentation.screen.authentication.base.WebViewTopBarKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.formsections.DistantRepairEligibilityCardComponentKt;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpFindAStoreButtonKt;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpFindInStoreButtonKt;
import com.vuitton.android.presentation.screen.repairs.list.components.CareServicePromotionCardKt;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListBffScreenKt;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListScreenKt;
import com.vuitton.android.presentation.screen.storemode.components.StoreModeInvalidKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class s implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79660b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f79661c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ s(Function0 function0, Modifier modifier, int i2) {
        this.f79660b = 8;
        this.d = function0;
        this.f79661c = modifier;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f79660b;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                AICompanionChatHeaderKt.a(RecomposeScopeImplKt.a(1), composer, this.f79661c, this.d);
                break;
            case 1:
                CareServicePromotionCardKt.a(RecomposeScopeImplKt.a(1), composer, this.f79661c, this.d);
                break;
            case 2:
                DistantRepairEligibilityCardComponentKt.a(RecomposeScopeImplKt.a(1), composer, this.f79661c, this.d);
                break;
            case 3:
                PdpFindAStoreButtonKt.a(RecomposeScopeImplKt.a(1), composer, this.f79661c, this.d);
                break;
            case 4:
                PdpFindInStoreButtonKt.a(RecomposeScopeImplKt.a(1), composer, this.f79661c, this.d);
                break;
            case 5:
                RepairListBffScreenKt.c(RecomposeScopeImplKt.a(1), composer, this.f79661c, this.d);
                break;
            case 6:
                RepairListScreenKt.b(RecomposeScopeImplKt.a(1), composer, this.f79661c, this.d);
                break;
            case 7:
                StoreModeInvalidKt.a(RecomposeScopeImplKt.a(1), composer, this.f79661c, this.d);
                break;
            default:
                WebViewTopBarKt.a(RecomposeScopeImplKt.a(1), composer, this.f79661c, this.d);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ s(Modifier modifier, Function0 function0, int i2, int i3) {
        this.f79660b = i3;
        this.f79661c = modifier;
        this.d = function0;
    }
}
