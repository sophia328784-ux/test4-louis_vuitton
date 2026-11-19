package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.components.components.LVCheckboxBlockKt;
import com.vuitton.android.presentation.compose.components.LVCalendarKt;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.ListeningQueueTrackItemKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeReasonScreenKt;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpVariationTextListKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.VariationUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFiltersCategoryUiModel;
import com.vuitton.android.presentation.screen.storemode.filters.components.FilterCategoryExpandableRowKt;
import com.vuitton.android.presentation.screen.storemode.filters.components.SortCategoryExpandableRowKt;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ly implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76116b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f76117c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f76118e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f76119f;
    public final /* synthetic */ Object g;

    public /* synthetic */ ly(Modifier modifier, VariationUiModel variationUiModel, boolean z, boolean z2, Function0 function0, int i2) {
        this.f76116b = 5;
        this.f76118e = modifier;
        this.f76119f = variationUiModel;
        this.f76117c = z;
        this.d = z2;
        this.g = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76116b;
        Object obj3 = this.g;
        Object obj4 = this.f76119f;
        Object obj5 = this.f76118e;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                FilterCategoryExpandableRowKt.a((ProductFiltersCategoryUiModel) obj5, this.f76117c, this.d, (Function1) obj4, (Function4) obj3, (Composer) obj, iA);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                LVCalendarKt.a((Modifier) obj5, this.f76117c, this.d, (Function0) obj4, (Function0) obj3, (Composer) obj, iA2);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(24577);
                LVCheckboxBlockKt.a((Modifier) obj5, (String) obj3, this.f76117c, this.d, (Function1) obj4, (Composer) obj, iA3);
                break;
            case 3:
                ((Integer) obj2).getClass();
                int iA4 = RecomposeScopeImplKt.a(1);
                ListeningQueueTrackItemKt.b((AudioGuideUiModel.TrackUiModel) obj5, this.f76117c, this.d, (AudioGuideUiModel.AudioGuideColorsUiModel) obj4, (Function0) obj3, (Composer) obj, iA4);
                break;
            case 4:
                ((Integer) obj2).getClass();
                int iA5 = RecomposeScopeImplKt.a(1);
                OrderReturnOrExchangeReasonScreenKt.a(this.f76117c, this.d, (Function0) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, iA5);
                break;
            case 5:
                ((Integer) obj2).getClass();
                int iA6 = RecomposeScopeImplKt.a(1);
                PdpVariationTextListKt.a((Modifier) obj5, (VariationUiModel) obj4, this.f76117c, this.d, (Function0) obj3, (Composer) obj, iA6);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA7 = RecomposeScopeImplKt.a(3073);
                SortCategoryExpandableRowKt.a((List) obj5, this.f76117c, this.d, (Function1) obj4, (Function4) obj3, (Composer) obj, iA7);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ ly(Modifier modifier, String str, boolean z, boolean z2, Function1 function1, int i2) {
        this.f76116b = 2;
        this.f76118e = modifier;
        this.g = str;
        this.f76117c = z;
        this.d = z2;
        this.f76119f = function1;
    }

    public /* synthetic */ ly(Object obj, boolean z, boolean z2, Object obj2, Function function, int i2, int i3) {
        this.f76116b = i3;
        this.f76118e = obj;
        this.f76117c = z;
        this.d = z2;
        this.f76119f = obj2;
        this.g = function;
    }

    public /* synthetic */ ly(boolean z, boolean z2, Function0 function0, Function0 function1, Function0 function2, int i2) {
        this.f76116b = 4;
        this.f76117c = z;
        this.d = z2;
        this.f76118e = function0;
        this.f76119f = function1;
        this.g = function2;
    }
}
