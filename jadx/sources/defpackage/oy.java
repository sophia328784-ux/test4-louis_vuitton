package defpackage;

import android.content.Context;
import androidx.compose.foundation.lazy.grid.LazyGridItemScope;
import androidx.compose.foundation.lazy.grid.LazyGridScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.CollectionItemInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.pdp.components.variations.GridVariationKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuAvailabilityUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.VariationUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFiltersCategoryUiModel;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class oy implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78685b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f78686c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f78687e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f78688f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function f78689h;

    public /* synthetic */ oy(VariationUiModel variationUiModel, String str, boolean z, String str2, int i2, Function0 function0) {
        this.f78687e = variationUiModel;
        this.f78688f = str;
        this.f78686c = z;
        this.g = str2;
        this.d = i2;
        this.f78689h = function0;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f78685b;
        int i3 = this.d;
        boolean z = this.f78686c;
        boolean z2 = false;
        int i4 = 0;
        z2 = false;
        Function function = this.f78689h;
        Object obj2 = this.g;
        Object obj3 = this.f78688f;
        Object obj4 = this.f78687e;
        switch (i2) {
            case 0:
                ProductFiltersCategoryUiModel productFiltersCategoryUiModel = (ProductFiltersCategoryUiModel) obj4;
                ProductFiltersCategoryUiModel productFiltersCategoryUiModel2 = (ProductFiltersCategoryUiModel) obj3;
                Context context = (Context) obj2;
                Function0 function0 = (Function0) function;
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver, productFiltersCategoryUiModel.f62971b);
                SemanticsPropertiesKt.g(semanticsPropertyReceiver, new CollectionItemInfo(i3, 0, 0, 0));
                String str = productFiltersCategoryUiModel.f62970a;
                if (Intrinsics.c(str, productFiltersCategoryUiModel2 != null ? productFiltersCategoryUiModel2.f62970a : null)) {
                    String string = context.getResources().getString(R.string.alt_selected);
                    string.getClass();
                    SemanticsPropertiesKt.r(semanticsPropertyReceiver, string);
                } else {
                    Role.f10289b.getClass();
                    SemanticsPropertiesKt.o(semanticsPropertyReceiver, 0);
                }
                if (z) {
                    if (Intrinsics.c(str, productFiltersCategoryUiModel2 != null ? productFiltersCategoryUiModel2.f62970a : null)) {
                        z2 = true;
                    }
                }
                SemanticsPropertiesKt.k(semanticsPropertyReceiver, z2);
                SemanticsPropertiesKt.e(semanticsPropertyReceiver, null, new py(function0, 1));
                return Unit.f71739a;
            case 1:
                final String str2 = (String) obj3;
                final String str3 = (String) obj2;
                final Function1 function1 = (Function1) function;
                LazyGridScope lazyGridScope = (LazyGridScope) obj;
                lazyGridScope.getClass();
                for (Object obj5 : (List) obj4) {
                    int i5 = i4 + 1;
                    if (i4 < 0) {
                        CollectionsKt.t0();
                        throw null;
                    }
                    final VariationUiModel variationUiModel = (VariationUiModel) obj5;
                    String str4 = variationUiModel.f61767b + i4;
                    final boolean z3 = this.f78686c;
                    final int i6 = this.d;
                    final int i7 = i4;
                    LazyGridScope.c(lazyGridScope, str4, null, new ComposableLambdaImpl(1132004384, true, new Function3() { // from class: d10
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj6, Object obj7, Object obj8) {
                            String strK;
                            Composer composer = (Composer) obj7;
                            int iIntValue = ((Integer) obj8).intValue();
                            ((LazyGridItemScope) obj6).getClass();
                            if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                                OpaqueKey opaqueKey = ComposerKt.f7940a;
                                VariationUiModel variationUiModel2 = variationUiModel;
                                SkuAvailabilityUiModel skuAvailabilityUiModel = variationUiModel2.f61769e;
                                boolean z4 = z3;
                                if (skuAvailabilityUiModel == null || skuAvailabilityUiModel.f61761e || !z4) {
                                    composer.L(-540384904);
                                    composer.F();
                                    strK = "";
                                } else {
                                    strK = o60.k(composer, -540473843, R.string.alt_out_of_stock, composer);
                                }
                                String str5 = strK;
                                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("GridVariation_MXasgaU$lambda$1$0$0$0");
                                boolean zK = composer.K(variationUiModel2) | composer.K(str5);
                                String str6 = str2;
                                boolean zK2 = zK | composer.K(str6);
                                String str7 = str3;
                                boolean zK3 = zK2 | composer.K(str7);
                                Function1 function2 = function1;
                                boolean zK4 = zK3 | composer.K(function2);
                                int i8 = i7;
                                boolean zD = zK4 | composer.d(i8);
                                Object objX = composer.x();
                                if (zD || objX == Composer.Companion.f7939a) {
                                    sy syVar = new sy(variationUiModel2, str5, str6, str7, i8, function2);
                                    composer.q(syVar);
                                    objX = syVar;
                                }
                                Modifier modifierB = SemanticsModifierKt.b(dTFunctionNameModifier, true, (Function1) objX);
                                String str8 = variationUiModel2.f61767b;
                                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                                GridVariationKt.a(modifierB, variationUiModel2, function2, z4, Intrinsics.c(str8, str6), i6, composer, 0);
                            } else {
                                composer.D();
                            }
                            return Unit.f71739a;
                        }
                    }), 6);
                    i4 = i5;
                }
                return Unit.f71739a;
            default:
                String str5 = (String) obj2;
                Function0 function2 = (Function0) function;
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver2, ((VariationUiModel) obj4).f61768c + ", " + ((String) obj3));
                if (z) {
                    SemanticsPropertiesKt.r(semanticsPropertyReceiver2, str5);
                } else {
                    SemanticsPropertiesKt.e(semanticsPropertyReceiver2, null, new ee0(function2, 19));
                    Role.f10289b.getClass();
                    SemanticsPropertiesKt.o(semanticsPropertyReceiver2, 0);
                }
                SemanticsPropertiesKt.g(semanticsPropertyReceiver2, new CollectionItemInfo(0, 0, i3, 0));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ oy(ProductFiltersCategoryUiModel productFiltersCategoryUiModel, int i2, ProductFiltersCategoryUiModel productFiltersCategoryUiModel2, Context context, boolean z, Function0 function0) {
        this.f78687e = productFiltersCategoryUiModel;
        this.d = i2;
        this.f78688f = productFiltersCategoryUiModel2;
        this.g = context;
        this.f78686c = z;
        this.f78689h = function0;
    }

    public /* synthetic */ oy(List list, boolean z, String str, String str2, Function1 function1, int i2) {
        this.f78687e = list;
        this.f78686c = z;
        this.f78688f = str;
        this.g = str2;
        this.f78689h = function1;
        this.d = i2;
    }
}
