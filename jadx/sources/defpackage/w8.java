package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.NavHostKt;
import androidx.paging.compose.LazyPagingItems;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentRoutes;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentBffViewState;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PSPViewState;
import com.vuitton.android.presentation.screen.storemode.components.plp.PLPStoreModeKt;
import com.vuitton.android.presentation.screen.storemode.filters.model.ProductFilterViewState;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function5;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class w8 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80785b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f80786c;
    public final /* synthetic */ Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f80787e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function1 f80788f;
    public final /* synthetic */ Function0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function0 f80789h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function0 f80790i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f80791j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f80792k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Function m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Function o;
    public final /* synthetic */ Object p;

    public /* synthetic */ w8(NavHostController navHostController, AssessmentBffViewState assessmentBffViewState, CoroutineScope coroutineScope, Function1 function1, Function1 function2, Function1 function3, Function1 function4, Function1 function5, Function0 function0, Function0 function6, Function0 function7, LVModalBottomSheetState lVModalBottomSheetState, Function0 function8, Function0 function9) {
        this.f80791j = navHostController;
        this.f80792k = assessmentBffViewState;
        this.l = coroutineScope;
        this.f80786c = function1;
        this.d = function2;
        this.f80787e = function3;
        this.f80788f = function4;
        this.m = function5;
        this.g = function0;
        this.f80789h = function6;
        this.f80790i = function7;
        this.p = lVModalBottomSheetState;
        this.n = function8;
        this.o = function9;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f80785b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object obj4 = this.p;
        Function function = this.o;
        Object obj5 = this.n;
        Function function2 = this.m;
        Object obj6 = this.l;
        Object obj7 = this.f80792k;
        Object obj8 = this.f80791j;
        switch (i2) {
            case 0:
                NavHostController navHostController = (NavHostController) obj8;
                AssessmentBffViewState assessmentBffViewState = (AssessmentBffViewState) obj7;
                CoroutineScope coroutineScope = (CoroutineScope) obj6;
                Function1 function1 = (Function1) function2;
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj4;
                Function0 function0 = (Function0) obj5;
                Function0 function3 = (Function0) function;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= composer.K(paddingValues) ? 4 : 2;
                }
                if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierH = PaddingKt.h(WindowInsetsPadding_androidKt.b(BackgroundKt.b(new DTFunctionNameModifier("AssessmentBffScreen$lambda$4").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer).f48361b.f48375b, RectangleShapeKt.f8913a)), paddingValues);
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer, 0);
                    int iHashCode = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                    Modifier modifierC = ComposedModifierKt.c(composer, modifierH);
                    ComposeUiNode.b0.getClass();
                    Function0 function4 = ComposeUiNode.Companion.f9641b;
                    if (composer.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer.B();
                    if (composer.getS()) {
                        composer.C(function4);
                    } else {
                        composer.o();
                    }
                    Updater.c(composer, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
                    AssessmentRoutes.Form form = AssessmentRoutes.Form.INSTANCE;
                    boolean zY = composer.y(assessmentBffViewState) | composer.y(coroutineScope);
                    Function1 function5 = this.f80786c;
                    boolean zK = zY | composer.K(function5);
                    Function1 function6 = this.d;
                    boolean zK2 = zK | composer.K(function6);
                    Function1 function7 = this.f80787e;
                    boolean zK3 = zK2 | composer.K(function7);
                    Function1 function8 = this.f80788f;
                    boolean zK4 = zK3 | composer.K(function8) | composer.K(function1);
                    Function0 function9 = this.g;
                    boolean zK5 = zK4 | composer.K(function9);
                    Function0 function10 = this.f80789h;
                    boolean zK6 = zK5 | composer.K(function10);
                    Function0 function11 = this.f80790i;
                    boolean zK7 = zK6 | composer.K(function11) | composer.y(lVModalBottomSheetState) | composer.K(function0) | composer.K(function3);
                    Object objX = composer.x();
                    if (zK7 || objX == composer$Companion$Empty$1) {
                        z8 z8Var = new z8(assessmentBffViewState, coroutineScope, function5, function6, function7, function8, function1, function9, function10, function11, lVModalBottomSheetState, function0, function3);
                        composer.q(z8Var);
                        objX = z8Var;
                    }
                    NavHostKt.b(navHostController, form, null, null, null, null, null, null, null, (Function1) objX, composer, 48, 2044);
                    composer.r();
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            default:
                LazyPagingItems lazyPagingItems = (LazyPagingItems) obj8;
                PSPViewState pSPViewState = (PSPViewState) obj7;
                String str = (String) obj6;
                Function2 function12 = (Function2) function2;
                ProductFilterViewState productFilterViewState = (ProductFilterViewState) obj5;
                Function2 function13 = (Function2) function;
                Function5 function14 = (Function5) obj4;
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                paddingValues2.getClass();
                if ((iIntValue2 & 6) == 0) {
                    iIntValue2 |= composer2.K(paddingValues2) ? 4 : 2;
                }
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 19) != 18)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Modifier modifierE = o60.e("PSPStoreModeScreen$lambda$3", paddingValues2);
                    boolean z = pSPViewState.f63014a != null;
                    boolean zK8 = composer2.K(str);
                    Object objX2 = composer2.x();
                    if (zK8 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new nj0(str, 6);
                        composer2.q(objX2);
                    }
                    PLPStoreModeKt.a(modifierE, lazyPagingItems, z, (Function1) objX2, this.f80786c, this.d, this.f80787e, function12, composer2, 64, 0);
                    if (!pSPViewState.f63017e || productFilterViewState == null) {
                        composer2.L(-2146293326);
                        composer2.F();
                    } else {
                        composer2.L(-2147161419);
                        LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, composer2, null);
                        String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                        Function1 function15 = this.f80788f;
                        boolean zK9 = composer2.K(function15);
                        Function0 function16 = this.g;
                        boolean zK10 = zK9 | composer2.K(function16);
                        Object objX3 = composer2.x();
                        if (zK10 || objX3 == composer$Companion$Empty$1) {
                            objX3 = new wz(function15, function16, 6);
                            composer2.q(objX3);
                        }
                        LVModalBottomSheetKt.b(null, strC, (Function0) objX3, lVModalBottomSheetStateF, null, 0L, false, null, ComposableLambdaKt.b(1992146879, new p0((Object) productFilterViewState, (Object) this.f80789h, function15, (Object) this.f80790i, (Object) function13, (Function) function14, 16), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663296, 241);
                        composer2.F();
                    }
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ w8(LazyPagingItems lazyPagingItems, PSPViewState pSPViewState, String str, Function1 function1, Function1 function2, Function1 function3, Function2 function4, ProductFilterViewState productFilterViewState, Function1 function5, Function0 function0, Function0 function6, Function0 function7, Function2 function8, Function5 function9) {
        this.f80791j = lazyPagingItems;
        this.f80792k = pSPViewState;
        this.l = str;
        this.f80786c = function1;
        this.d = function2;
        this.f80787e = function3;
        this.m = function4;
        this.n = productFilterViewState;
        this.f80788f = function5;
        this.g = function0;
        this.f80789h = function6;
        this.f80790i = function7;
        this.o = function8;
        this.p = function9;
    }
}
