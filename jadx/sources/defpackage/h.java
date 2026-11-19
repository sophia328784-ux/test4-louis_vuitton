package defpackage;

import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnableItemKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnedItemList;
import androidx.compose.material3.SnackbarHostKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVTagKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationTag;
import com.vuitton.android.presentation.common.hotcontent.components.HotContentCareServiceItemKt;
import com.vuitton.android.presentation.screen.aicompanion.components.entrypoint.AICompanionButtonKt;
import com.vuitton.android.presentation.screen.aicompanion.components.entrypoint.AICompanionButtonVariant;
import com.vuitton.android.presentation.screen.orders.components.detail.OrderDetailScreenKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeComponentsKt;
import com.vuitton.android.presentation.screen.orders.models.AutomationTagsOrders$OrderHeaderType;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpCareAndSustainabilityKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyColorSliderKt;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceHotContentUiModel;
import com.vuitton.android.presentation.screen.search.components.HistoryComposableKt;
import com.vuitton.android.presentation.screen.search.models.HistoryItemUiModel;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class h implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69523b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f69524c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f69525e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f69526f;
    public final /* synthetic */ Object g;

    public /* synthetic */ h(SnackbarHostState snackbarHostState, Modifier modifier, Function3 function3, int i2, int i3) {
        this.f69523b = 10;
        this.f69526f = snackbarHostState;
        this.f69525e = modifier;
        this.g = function3;
        this.f69524c = i2;
        this.d = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f69523b;
        int i3 = this.d;
        int i4 = this.f69524c;
        Object obj3 = this.f69525e;
        Object obj4 = this.g;
        Object obj5 = this.f69526f;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                AICompanionButtonKt.a((Modifier) obj3, (AICompanionButtonVariant) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(i4 | 1), this.d);
                break;
            case 1:
                ((Integer) obj2).intValue();
                BeautyColorSliderKt.a((List) obj3, this.f69524c, (LazyListState) obj5, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 2:
                ((Integer) obj2).getClass();
                HistoryComposableKt.b((Modifier) obj3, (HistoryItemUiModel.HistoryProductUiModel) obj5, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(i4 | 1), this.d);
                break;
            case 3:
                ((Integer) obj2).getClass();
                HistoryComposableKt.c((Modifier) obj3, (HistoryItemUiModel.HistoryResearchUiModel) obj5, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(i4 | 1), this.d);
                break;
            case 4:
                ((Integer) obj2).getClass();
                HotContentCareServiceItemKt.c((Modifier) obj3, (CareServiceHotContentUiModel) obj5, (LVColorScheme) obj4, (Composer) obj, RecomposeScopeImplKt.a(i4 | 1), this.d);
                break;
            case 5:
                ((Integer) obj2).getClass();
                LVTagKt.a((Modifier) obj3, (ConfigurationTag) obj5, (String) obj4, (Composer) obj, RecomposeScopeImplKt.a(i4 | 1), this.d);
                break;
            case 6:
                ((Integer) obj2).getClass();
                LazyLayoutPinnableItemKt.a(this.f69525e, this.f69524c, (LazyLayoutPinnedItemList) obj5, (ComposableLambdaImpl) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 7:
                ((Integer) obj2).getClass();
                OrderDetailScreenKt.k((String) obj3, (String) obj5, (AutomationTagsOrders$OrderHeaderType) obj4, (Composer) obj, RecomposeScopeImplKt.a(i4 | 1), this.d);
                break;
            case 8:
                ((Integer) obj2).getClass();
                OrderReturnOrExchangeComponentsKt.b((String) obj3, (String) obj5, (String) obj4, (Composer) obj, RecomposeScopeImplKt.a(i4 | 1), this.d);
                break;
            case 9:
                ((Integer) obj2).getClass();
                PdpCareAndSustainabilityKt.a((Modifier) obj3, (List) obj5, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(i4 | 1), this.d);
                break;
            default:
                ((Integer) obj2).getClass();
                SnackbarHostKt.b((SnackbarHostState) obj5, (Modifier) obj3, (Function3) obj4, (Composer) obj, RecomposeScopeImplKt.a(i4 | 1), this.d);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ h(Object obj, int i2, Object obj2, Function function, int i3, int i4) {
        this.f69523b = i4;
        this.f69525e = obj;
        this.f69524c = i2;
        this.f69526f = obj2;
        this.g = function;
        this.d = i3;
    }

    public /* synthetic */ h(Object obj, Object obj2, Object obj3, int i2, int i3, int i4) {
        this.f69523b = i4;
        this.f69525e = obj;
        this.f69526f = obj2;
        this.g = obj3;
        this.f69524c = i2;
        this.d = i3;
    }
}
