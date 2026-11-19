package defpackage;

import android.content.Context;
import androidx.compose.foundation.layout.CrossAxisAlignment;
import androidx.compose.foundation.layout.RowColumnParentData;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.semantics.CollectionItemInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.LayoutDirection;
import com.vuitton.android.R;
import com.vuitton.android.presentation.common.editorial.models.SlideShowItemUiModel;
import com.vuitton.android.presentation.extensions.SemanticsPropertyReceiverExtKt;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModel;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.components.ModelSizeSliderKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ModelSizeVariationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionPLPProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class af implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f493b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f494c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f495e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f496f;

    public /* synthetic */ af(int i2, PagerState pagerState, BookingUiModel bookingUiModel, String str) {
        this.f494c = i2;
        this.d = pagerState;
        this.f496f = bookingUiModel;
        this.f495e = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f493b;
        int i3 = 0;
        Object obj2 = this.d;
        int i4 = this.f494c;
        Object obj3 = this.f495e;
        Object obj4 = this.f496f;
        switch (i2) {
            case 0:
                BookingUiModel bookingUiModel = (BookingUiModel) obj4;
                String str = (String) obj3;
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                if (i4 == ((PagerState) obj2).k()) {
                    SemanticsPropertiesKt.i(semanticsPropertyReceiver, bookingUiModel.d + ", " + str);
                } else {
                    SemanticsPropertyReceiverExtKt.a(semanticsPropertyReceiver);
                }
                break;
            case 1:
                List list = (List) obj4;
                String str2 = (String) obj3;
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                float f2 = ModelSizeSliderKt.f61508a;
                semanticsPropertyReceiver2.getClass();
                StringBuilder sb = new StringBuilder();
                sb.append(((ModelSizeVariationUiModel) list.get(i4)).d + ", " + ((ModelSizeVariationUiModel) list.get(i4)).f61536f);
                if (((PagerState) obj2).k() == i4) {
                    sb.append(", " + str2);
                }
                SemanticsPropertiesKt.i(semanticsPropertyReceiver2, sb.toString());
                SemanticsPropertiesKt.g(semanticsPropertyReceiver2, new CollectionItemInfo(0, 0, i4, 0));
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver2, 0);
                break;
            case 2:
                Function1 function1 = (Function1) obj4;
                Function1 function2 = (Function1) obj3;
                PlpProductUiModel plpProductUiModel = (PlpProductUiModel) obj;
                plpProductUiModel.getClass();
                boolean z = ((SelectionPLPProductUiModel) ((List) obj2).get(i4)).f62580b;
                MutableState mutableState = plpProductUiModel.f62934a;
                if (z) {
                    function1.invoke(new SkuIdUiModel(((PlpProductUiModel.SkuDataUiModel) mutableState.getF10755b()).f62943a));
                } else {
                    function2.invoke(new SkuIdUiModel(((PlpProductUiModel.SkuDataUiModel) mutableState.getF10755b()).f62943a));
                }
                break;
            case 3:
                Placeable[] placeableArr = (Placeable[]) obj2;
                RowMeasurePolicy rowMeasurePolicy = (RowMeasurePolicy) obj4;
                int[] iArr = (int[]) obj3;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                int length = placeableArr.length;
                int i5 = 0;
                while (i3 < length) {
                    Placeable placeable = placeableArr[i3];
                    int i6 = i5 + 1;
                    placeable.getClass();
                    Object z2 = placeable.getZ();
                    RowColumnParentData rowColumnParentData = z2 instanceof RowColumnParentData ? (RowColumnParentData) z2 : null;
                    CrossAxisAlignment crossAxisAlignment = rowColumnParentData != null ? rowColumnParentData.f5036c : null;
                    placementScope.j(placeable, iArr[i5], crossAxisAlignment != null ? crossAxisAlignment.a(i4, placeable.f9549c, LayoutDirection.Ltr) : rowMeasurePolicy.f5039b.a(placeable.f9549c, i4), Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    i3++;
                    i5 = i6;
                }
                break;
            default:
                SlideShowItemUiModel slideShowItemUiModel = (SlideShowItemUiModel) obj4;
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver3.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver3, slideShowItemUiModel.f50875c + ", " + slideShowItemUiModel.f50874b + ", " + ((Context) obj3).getString(R.string.alt_tab, String.valueOf(i4 + 1), String.valueOf(((PagerState) obj2).o())));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ af(int i2, List list, PagerState pagerState, String str) {
        this.f494c = i2;
        this.f496f = list;
        this.d = pagerState;
        this.f495e = str;
    }

    public /* synthetic */ af(SlideShowItemUiModel slideShowItemUiModel, Context context, int i2, PagerState pagerState) {
        this.f496f = slideShowItemUiModel;
        this.f495e = context;
        this.f494c = i2;
        this.d = pagerState;
    }

    public /* synthetic */ af(List list, int i2, Function1 function1, Function1 function2) {
        this.d = list;
        this.f494c = i2;
        this.f496f = function1;
        this.f495e = function2;
    }

    public /* synthetic */ af(Placeable[] placeableArr, RowMeasurePolicy rowMeasurePolicy, int i2, int[] iArr) {
        this.d = placeableArr;
        this.f496f = rowMeasurePolicy;
        this.f494c = i2;
        this.f495e = iArr;
    }
}
