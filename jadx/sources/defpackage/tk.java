package defpackage;

import android.content.Context;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSegmentedControlKt;
import com.vuitton.android.designkit.ui.theme.molecules.SegmentedControlState;
import com.vuitton.android.presentation.compose.components.LVNotificationData;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitle;
import com.vuitton.android.presentation.screen.cart.CommercialNotification;
import com.vuitton.android.presentation.screen.cart.GenericNotification;
import com.vuitton.android.presentation.screen.cart.components.sections.NativeCartNotificationKt;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.components.StoreModeHomeSlideshowKt;
import com.vuitton.android.presentation.screen.storemode.components.StoreModeHomeTopBarKt;
import com.vuitton.android.presentation.screen.storemode.components.catalog.CatalogStoreModeKt;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class tk implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80083b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ float f80084c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f80085e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f80086f;

    public /* synthetic */ tk(float f2, Object obj, Object obj2, Object obj3, int i2) {
        this.f80083b = i2;
        this.f80084c = f2;
        this.d = obj;
        this.f80085e = obj2;
        this.f80086f = obj3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        CommercialNotification commercialNotification;
        String str;
        String str2;
        int i2 = this.f80083b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        float f2 = this.f80084c;
        Object obj4 = this.f80086f;
        Object obj5 = this.f80085e;
        Object obj6 = this.d;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        switch (i2) {
            case 0:
                StoreModeViewState storeModeViewState = (StoreModeViewState) obj6;
                StoreModeViewModel storeModeViewModel = (StoreModeViewModel) obj5;
                MutableFloatState mutableFloatState = (MutableFloatState) obj4;
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                float f3 = CatalogStoreModeKt.f64850a;
                ((PaddingValues) obj).getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    StoreModeHomeSlideshowKt.a(null, this.f80084c, storeModeViewState.f65081a.d, mutableFloatState.a(), composer, 0);
                    String str3 = storeModeViewState.f65081a.f65078b;
                    boolean zY = composer.y(storeModeViewState) | composer.y(storeModeViewModel);
                    Object objX = composer.x();
                    if (zY || objX == composer$Companion$Empty$1) {
                        objX = new tf(storeModeViewState, storeModeViewModel, 13);
                        composer.q(objX);
                    }
                    StoreModeHomeTopBarKt.a(null, str3, (Function0) objX, composer, 0);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                List list = (List) obj6;
                Context context = (Context) obj5;
                TextStyle textStyle = (TextStyle) obj4;
                int iIntValue2 = ((Integer) obj).intValue();
                Composer composer2 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                if ((iIntValue3 & 6) == 0) {
                    iIntValue3 |= composer2.d(iIntValue2) ? 4 : 2;
                }
                if (composer2.p(iIntValue3 & 1, (iIntValue3 & 19) != 18)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Modifier modifierD = tr.d("HeaderTitle$lambda$0$2", 1.0f);
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, composer2, 48);
                    int iHashCode = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierD);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function0);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                    Modifier modifierE = ModifierExtKt.e(a.f(composer2, modifierC, ComposeUiNode.Companion.d, "HeaderTitle$lambda$0$2"), ((NativeAuthenticationTitle) list.get(iIntValue2)).f53484c);
                    String strA = StringResourceUiModelKt.a(((NativeAuthenticationTitle) list.get(iIntValue2)).f53482a, context);
                    TextStyle textStyle2 = LVAppDesignKitTheme.n(composer2).f48426f;
                    long j2 = LVAppDesignKitTheme.c(composer2).f48361b.m;
                    TextAlign.f10959b.getClass();
                    int i3 = TextAlign.f10961e;
                    TextKt.c(strA, modifierE, j2, 0L, null, 0L, null, new TextAlign(i3), 0L, 0, false, 0, 0, null, textStyle2, composer2, 0, 0, 130040);
                    TextKt.c(StringResourceUiModelKt.a(((NativeAuthenticationTitle) list.get(iIntValue2)).f53483b, context), SizeKt.f(ModifierExtKt.e(PaddingKt.k(new DTFunctionNameModifier("HeaderTitle$lambda$0$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48415c, 1), ((NativeAuthenticationTitle) list.get(iIntValue2)).d), f2), LVAppDesignKitTheme.c(composer2).f48361b.n, 0L, null, 0L, null, new TextAlign(i3), 0L, 0, false, 0, 0, null, textStyle, composer2, 0, 0, 130040);
                    composer2.r();
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 2:
                GenericNotification genericNotification = (GenericNotification) obj6;
                Context context2 = (Context) obj5;
                Function3 function3 = (Function3) obj4;
                Composer composer3 = (Composer) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer3.p(iIntValue4 & 1, (iIntValue4 & 17) != 16)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    NativeCartNotificationKt.a(com.vuitton.android.designkit.components.ModifierExtKt.b(PaddingKt.k(new DTFunctionNameModifier("NativeCartMainView$lambda$2$0$0$0"), f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), (genericNotification instanceof CommercialNotification) && (str = (commercialNotification = (CommercialNotification) genericNotification).f54837b) != null && (StringsKt.w(str) ^ true) && (str2 = commercialNotification.f54838c) != null && (StringsKt.w(str2) ^ true), new ye0(function3, objArr == true ? 1 : 0), composer3, 0), new LVNotificationData(R.drawable.ic_fa_notification, genericNotification.a(context2), 0L, false, 12, null), composer3, 0);
                    SpacerKt.a(composer3, SizeKt.f(new DTFunctionNameModifier("NativeCartMainView$lambda$2$0$0$0"), LVAppDesignKitTheme.l(composer3).f48417f));
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            default:
                j1 j1Var = (j1) obj6;
                SegmentedControlState segmentedControlState = (SegmentedControlState) obj5;
                rh0 rh0Var = (rh0) obj4;
                Composer composer4 = (Composer) obj2;
                int iIntValue5 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer4.p(iIntValue5 & 1, (iIntValue5 & 17) != 16)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    float f4 = LVAppDesignKitTheme.l(composer4).f48416e;
                    Modifier modifierD2 = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("plpStoreModeSwitch_TDGSqEk$lambda$0"), f4, Call.Parameters.DEFAULT_CAMERA_ZOOM, f4, f4, 2), 1.0f);
                    boolean zC = composer4.c(f2);
                    Object objX2 = composer4.x();
                    if (zC || objX2 == composer$Companion$Empty$1) {
                        objX2 = new td(f2, 7);
                        composer4.q(objX2);
                    }
                    Modifier modifierA = LayoutModifierKt.a(modifierD2, (Function3) objX2);
                    boolean zK = composer4.K(j1Var);
                    Object objX3 = composer4.x();
                    if (zK || objX3 == composer$Companion$Empty$1) {
                        objX3 = new p11(j1Var, objArr2 == true ? 1 : 0);
                        composer4.q(objX3);
                    }
                    LVSegmentedControlKt.a(OnRemeasuredModifierKt.a(modifierA, (Function1) objX3), segmentedControlState, false, null, false, rh0Var, composer4, 0, 28);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ tk(Object obj, Context context, float f2, Object obj2, int i2) {
        this.f80083b = i2;
        this.d = obj;
        this.f80085e = context;
        this.f80084c = f2;
        this.f80086f = obj2;
    }
}
