package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.sections.AssessmentPreliminaryBffComponentKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.components.ModelSizeBottomBarKt;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components.PersonalSelectionsCurationAdvisorLookListKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.NoSearchResultsKt;
import com.vuitton.android.presentation.screen.repairs.detail.components.CareExpertNoteComposableKt;
import com.vuitton.android.presentation.screen.storemode.components.catalog.CatalogRowKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class o9 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76729b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f76730c;
    public final /* synthetic */ Modifier d;

    public /* synthetic */ o9(Modifier modifier, String str, int i2, int i3) {
        this.f76729b = i3;
        this.d = modifier;
        this.f76730c = str;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76729b;
        String str = this.f76730c;
        Modifier modifier = this.d;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                AssessmentPreliminaryBffComponentKt.b(RecomposeScopeImplKt.a(1), composer, modifier, str);
                break;
            case 1:
                CareExpertNoteComposableKt.a(RecomposeScopeImplKt.a(1), composer, modifier, str);
                break;
            case 2:
                CatalogRowKt.a(RecomposeScopeImplKt.a(1), composer, modifier, str);
                break;
            case 3:
                ModelSizeBottomBarKt.a(RecomposeScopeImplKt.a(1), composer, modifier, str);
                break;
            case 4:
                NoSearchResultsKt.a(RecomposeScopeImplKt.a(1), composer, modifier, str);
                break;
            default:
                PersonalSelectionsCurationAdvisorLookListKt.b(RecomposeScopeImplKt.a(1), composer, modifier, str);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ o9(String str, Modifier modifier, int i2, int i3) {
        this.f76729b = i3;
        this.f76730c = str;
        this.d = modifier;
    }
}
