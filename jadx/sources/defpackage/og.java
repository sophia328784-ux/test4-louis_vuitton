package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationIconButton;
import com.vuitton.android.presentation.compose.components.LVTextButtonKt;
import com.vuitton.android.presentation.screen.booking.summary.components.BookingSummaryCardKt;
import com.vuitton.android.presentation.screen.booking.summary.models.PreBookUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components.PersonalSelectionsCurationAdvisorLookScreenKt;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionAssetUiModel;
import com.vuitton.android.presentation.screen.search.SearchViewModel;
import com.vuitton.android.presentation.screen.search.components.StoreModeSearchScreenComposableKt;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class og implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76774b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f76775c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function f76776e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f76777f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f76778h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f76779i;

    public /* synthetic */ og(Modifier modifier, ConfigurationIconButton configurationIconButton, String str, String str2, String str3, boolean z, Function0 function0, int i2) {
        this.f76774b = 1;
        this.f76775c = modifier;
        this.f76777f = configurationIconButton;
        this.g = str;
        this.f76778h = str2;
        this.f76779i = str3;
        this.d = z;
        this.f76776e = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76774b;
        Object obj3 = this.f76779i;
        Function function = this.f76776e;
        Object obj4 = this.f76778h;
        Object obj5 = this.g;
        Object obj6 = this.f76777f;
        Object obj7 = this.f76775c;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(196609);
                BookingSummaryCardKt.a((Modifier) obj7, (PreBookUiModel) obj6, this.d, (Function2) obj5, (Function0) function, (Function0) obj3, (Function2) obj4, (Composer) obj, iA);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                LVTextButtonKt.a((Modifier) obj7, (ConfigurationIconButton) obj6, (String) obj5, (String) obj4, (String) obj3, this.d, (Function0) function, (Composer) obj, iA2);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(1);
                PersonalSelectionsCurationAdvisorLookScreenKt.a((String) obj7, (SelectionAssetUiModel) obj6, (List) obj5, this.d, (Function1) obj4, (Function1) function, (Function1) obj3, (Composer) obj, iA3);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA4 = RecomposeScopeImplKt.a(7);
                StoreModeSearchScreenComposableKt.a((Modifier) obj7, (SearchViewModel) obj6, (String) obj5, this.d, (String) obj4, (Function1) function, (Function1) obj3, (Composer) obj, iA4);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ og(Modifier modifier, PreBookUiModel preBookUiModel, boolean z, Function2 function2, Function0 function0, Function0 function1, Function2 function3, int i2) {
        this.f76774b = 0;
        this.f76775c = modifier;
        this.f76777f = preBookUiModel;
        this.d = z;
        this.g = function2;
        this.f76776e = function0;
        this.f76779i = function1;
        this.f76778h = function3;
    }

    public /* synthetic */ og(Object obj, Object obj2, Object obj3, boolean z, Object obj4, Function1 function1, Function1 function2, int i2, int i3) {
        this.f76774b = i3;
        this.f76775c = obj;
        this.f76777f = obj2;
        this.g = obj3;
        this.d = z;
        this.f76778h = obj4;
        this.f76776e = function1;
        this.f76779i = function2;
    }
}
