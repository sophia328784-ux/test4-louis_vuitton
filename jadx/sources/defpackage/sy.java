package defpackage;

import android.content.Context;
import android.content.res.Resources;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.grid.LazyGridMeasureResult;
import androidx.compose.foundation.lazy.grid.LazyGridPrefetchResultScopeImpl;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.ui.semantics.CollectionItemInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.VariationUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductBooleanFilterUiModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class sy implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79903b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f79904c;
    public final /* synthetic */ Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f79905e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f79906f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f79907h;

    public /* synthetic */ sy(VariationUiModel variationUiModel, String str, String str2, String str3, int i2, Function1 function1) {
        this.f79905e = variationUiModel;
        this.f79906f = str;
        this.g = str2;
        this.f79907h = str3;
        this.f79904c = i2;
        this.d = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String string;
        int i2 = this.f79903b;
        Object obj2 = this.f79907h;
        int i3 = this.f79904c;
        Function1 function1 = this.d;
        Object obj3 = this.g;
        Object obj4 = this.f79906f;
        Object obj5 = this.f79905e;
        switch (i2) {
            case 0:
                Context context = (Context) obj4;
                Function1 function2 = (Function1) obj3;
                Function0 function0 = (Function0) obj2;
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                if (obj5 instanceof ProductBooleanFilterUiModel) {
                    ProductBooleanFilterUiModel productBooleanFilterUiModel = (ProductBooleanFilterUiModel) obj5;
                    Resources resources = context.getResources();
                    resources.getClass();
                    boolean z = productBooleanFilterUiModel.d;
                    string = productBooleanFilterUiModel.f62955b;
                    if (z) {
                        string = resources.getString(R.string.alt_remove_filter, string);
                        string.getClass();
                    }
                } else {
                    string = (String) function1.invoke(obj5);
                }
                SemanticsPropertiesKt.i(semanticsPropertyReceiver, string);
                if (((Boolean) function2.invoke(obj5)).booleanValue()) {
                    String string2 = context.getString(R.string.alt_selected);
                    string2.getClass();
                    SemanticsPropertiesKt.r(semanticsPropertyReceiver, string2);
                }
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver, 0);
                SemanticsPropertiesKt.g(semanticsPropertyReceiver, new CollectionItemInfo(0, 0, i3, 0));
                SemanticsPropertiesKt.e(semanticsPropertyReceiver, null, new py(function0, 3));
                break;
            case 1:
                VariationUiModel variationUiModel = (VariationUiModel) obj5;
                String str = (String) obj2;
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver2, variationUiModel.f61768c + ", " + ((String) obj4));
                String str2 = variationUiModel.f61767b;
                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                if (Intrinsics.c(str2, (String) obj3)) {
                    SemanticsPropertiesKt.r(semanticsPropertyReceiver2, str);
                } else {
                    SemanticsPropertiesKt.e(semanticsPropertyReceiver2, null, new g10(function1, variationUiModel, 0));
                    Role.f10289b.getClass();
                    SemanticsPropertiesKt.o(semanticsPropertyReceiver2, 0);
                }
                SemanticsPropertiesKt.g(semanticsPropertyReceiver2, new CollectionItemInfo(0, 0, i3, 0));
                break;
            default:
                List list = (List) obj5;
                Ref$IntRef ref$IntRef = (Ref$IntRef) obj4;
                List list2 = (List) obj3;
                LazyGridMeasureResult lazyGridMeasureResult = (LazyGridMeasureResult) obj2;
                LazyLayoutPrefetchState.PrefetchResultScope prefetchResultScope = (LazyLayoutPrefetchState.PrefetchResultScope) obj;
                int iB = prefetchResultScope.b();
                int iA = 0;
                for (int i4 = 0; i4 < iB; i4++) {
                    iA += (int) (lazyGridMeasureResult.r == Orientation.Vertical ? prefetchResultScope.a(i4) & BodyPartID.bodyIdMax : prefetchResultScope.a(i4) >> 32);
                }
                if (list != null) {
                    list.add(Integer.valueOf(iA));
                }
                if (ref$IntRef.f71919b != list2.size()) {
                    ref$IntRef.f71919b++;
                } else if (function1 != null && list != null) {
                    function1.invoke(new LazyGridPrefetchResultScopeImpl(i3, list));
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ sy(Object obj, Context context, Function1 function1, Function1 function2, int i2, Function0 function0) {
        this.f79905e = obj;
        this.f79906f = context;
        this.d = function1;
        this.g = function2;
        this.f79904c = i2;
        this.f79907h = function0;
    }

    public /* synthetic */ sy(ArrayList arrayList, Ref$IntRef ref$IntRef, List list, Function1 function1, int i2, LazyGridMeasureResult lazyGridMeasureResult) {
        this.f79905e = arrayList;
        this.f79906f = ref$IntRef;
        this.g = list;
        this.d = function1;
        this.f79904c = i2;
        this.f79907h = lazyGridMeasureResult;
    }
}
