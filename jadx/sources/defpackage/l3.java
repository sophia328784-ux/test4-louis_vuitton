package defpackage;

import androidx.compose.animation.ExitTransition;
import androidx.compose.foundation.lazy.LazyListPrefetchResultScope;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.layout.LayoutCoordinates;
import com.vuitton.android.presentation.screen.filter.model.FilterType;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.ActiveFiltersSliderKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.VariationUiModel;
import com.vuitton.foundation.model.domain.model.product.universal.VariationType;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class l3 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75929b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function2 f75930c;

    public /* synthetic */ l3(int i2, Function2 function2) {
        this.f75929b = i2;
        this.f75930c = function2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f75929b;
        Function2 function2 = this.f75930c;
        switch (i2) {
            case 0:
                ExitTransition exitTransition = ActiveFiltersSliderKt.f58051a;
                ((String) obj).getClass();
                function2.invoke("", FilterType.SORT);
                break;
            case 1:
                String str = (String) obj;
                ExitTransition exitTransition2 = ActiveFiltersSliderKt.f58051a;
                str.getClass();
                function2.invoke(str, FilterType.BOOLEAN);
                break;
            case 2:
                String str2 = (String) obj;
                ExitTransition exitTransition3 = ActiveFiltersSliderKt.f58051a;
                str2.getClass();
                function2.invoke(str2, FilterType.SIMPLE);
                break;
            case 3:
                PointerInputChange pointerInputChange = (PointerInputChange) obj;
                function2.invoke(pointerInputChange, Float.valueOf(Float.intBitsToFloat((int) (PointerEventKt.f(pointerInputChange, false) >> 32))));
                pointerInputChange.a();
                break;
            case 4:
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) obj;
                layoutCoordinates.getClass();
                if (function2 != null) {
                    function2.invoke(Float.valueOf((int) (layoutCoordinates.a() >> 32)), Float.valueOf((int) (layoutCoordinates.a() & BodyPartID.bodyIdMax)));
                }
                break;
            case 5:
                LazyListPrefetchResultScope lazyListPrefetchResultScope = (LazyListPrefetchResultScope) obj;
                function2.invoke(Integer.valueOf(lazyListPrefetchResultScope.getF5223a()), Integer.valueOf(lazyListPrefetchResultScope.getF5224b()));
                break;
            case 6:
                String str3 = (String) obj;
                str3.getClass();
                function2.invoke(str3, FilterType.SIMPLE);
                break;
            case 7:
                String str4 = (String) obj;
                str4.getClass();
                function2.invoke(str4, FilterType.SIMPLE);
                break;
            case 8:
                VariationUiModel variationUiModel = (VariationUiModel) obj;
                variationUiModel.getClass();
                function2.invoke(new SkuIdUiModel(variationUiModel.f61767b), VariationType.FINISH);
                break;
            case 9:
                VariationUiModel variationUiModel2 = (VariationUiModel) obj;
                variationUiModel2.getClass();
                function2.invoke(new SkuIdUiModel(variationUiModel2.f61767b), VariationType.COLOR);
                break;
            case 10:
                VariationUiModel variationUiModel3 = (VariationUiModel) obj;
                variationUiModel3.getClass();
                function2.invoke(new SkuIdUiModel(variationUiModel3.f61767b), VariationType.MATERIAL);
                break;
            case 11:
                VariationUiModel variationUiModel4 = (VariationUiModel) obj;
                variationUiModel4.getClass();
                function2.invoke(new SkuIdUiModel(variationUiModel4.f61767b), VariationType.CARAT);
                break;
            case 12:
                VariationUiModel variationUiModel5 = (VariationUiModel) obj;
                variationUiModel5.getClass();
                function2.invoke(new SkuIdUiModel(variationUiModel5.f61767b), VariationType.LANGUAGE);
                break;
            case 13:
                VariationUiModel variationUiModel6 = (VariationUiModel) obj;
                variationUiModel6.getClass();
                function2.invoke(new SkuIdUiModel(variationUiModel6.f61767b), VariationType.SIZE);
                break;
            default:
                VariationUiModel variationUiModel7 = (VariationUiModel) obj;
                variationUiModel7.getClass();
                function2.invoke(new SkuIdUiModel(variationUiModel7.f61767b), VariationType.MODEL_SIZE);
                break;
        }
        return Unit.f71739a;
    }
}
