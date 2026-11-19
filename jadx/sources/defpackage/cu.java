package defpackage;

import android.content.Context;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.gestures.ScrollableStateKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.text.TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1;
import androidx.compose.foundation.text.TextFieldScrollerPosition;
import androidx.compose.material3.ExposedDropdownMenuKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationPushCardContent;
import com.vuitton.android.designkit.ui.theme.molecules.LVPushCardKt;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.formsections.DistantRepairContactComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.PhoneNumber;
import com.vuitton.android.presentation.screen.distantrepairs.models.Step2StateUIModel;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.orders.models.ExchangeSetupResponseUiModel;
import com.vuitton.android.presentation.screen.orders.models.VariationsResponseUiModel;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class cu implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68330b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f68331c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f68332e;

    public /* synthetic */ cu(ExchangeSetupResponseUiModel exchangeSetupResponseUiModel, VariationsResponseUiModel variationsResponseUiModel, boolean z) {
        this.f68330b = 2;
        this.d = exchangeSetupResponseUiModel;
        this.f68332e = variationsResponseUiModel;
        this.f68331c = z;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        String strE;
        PhoneNumber phoneNumber;
        int i2;
        int i3;
        String strA;
        int i4 = this.f68330b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        int i5 = 4;
        boolean z = false;
        Object obj4 = this.f68332e;
        boolean z2 = this.f68331c;
        Object obj5 = this.d;
        switch (i4) {
            case 0:
                FormUiModel formUiModel = (FormUiModel) obj5;
                Step2StateUIModel step2StateUIModel = (Step2StateUIModel) obj4;
                Composer composer = (Composer) obj2;
                ((Integer) obj3).getClass();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                if (z2) {
                    FormSectionTypeUiModel formSectionTypeUiModel = FormSectionTypeUiModel.POSTAL_CODE;
                    FormUiModel.Companion companion = FormUiModel.f57485b;
                    strE = formUiModel.e(formSectionTypeUiModel, true);
                    if (StringsKt.w(strE)) {
                        strE = null;
                    }
                } else {
                    strE = step2StateUIModel.f57406c;
                }
                if (z2) {
                    FormSectionTypeUiModel formSectionTypeUiModel2 = FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY1;
                    String strG = FormUiModel.g(formUiModel, formSectionTypeUiModel2, null, false, 2);
                    String strG2 = FormUiModel.g(formUiModel, formSectionTypeUiModel2, null, true, 2);
                    String strE2 = formUiModel.e(FormSectionTypeUiModel.PHONE_NUMBER1, true);
                    if (strG == null || StringsKt.w(strG) || strG2 == null || StringsKt.w(strG2) || StringsKt.w(strE2)) {
                        phoneNumber = null;
                    } else {
                        phoneNumber = new PhoneNumber(strG, strG2, strE2, null, 8, null);
                    }
                } else {
                    phoneNumber = step2StateUIModel.f57405b;
                }
                Profile profile = step2StateUIModel.f57404a;
                DistantRepairContactComponentKt.c(profile != null ? profile.g : null, strE, phoneNumber, composer, 0);
                return Unit.f71739a;
            case 1:
                MeasureScope measureScope = (MeasureScope) obj;
                Measurable measurable = (Measurable) obj2;
                Constraints constraints = (Constraints) obj3;
                long j2 = constraints.f10999a;
                int i6 = ExposedDropdownMenuKt.f6925a;
                int iG = ConstraintsKt.g(((MutableIntState) obj5).f(), j2);
                long j3 = constraints.f10999a;
                int iF = ConstraintsKt.f(((MutableIntState) obj4).f(), j3);
                int iJ = z2 ? iG : Constraints.j(j3);
                if (!z2) {
                    iG = Constraints.h(j3);
                }
                Placeable placeableT = measurable.T(Constraints.a(constraints.f10999a, iJ, iG, 0, iF, 4));
                return measureScope.V0(placeableT.f9548b, placeableT.f9549c, MapsKt.c(), new a2(placeableT, i5));
            case 2:
                ExchangeSetupResponseUiModel exchangeSetupResponseUiModel = (ExchangeSetupResponseUiModel) obj5;
                VariationsResponseUiModel variationsResponseUiModel = (VariationsResponseUiModel) obj4;
                RowScope rowScope = (RowScope) obj;
                Composer composer2 = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                rowScope.getClass();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= composer2.K(rowScope) ? 4 : 2;
                }
                if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    ConfigurationPushCardContent configurationPushCardContent = LVAppDesignKitTheme.i(composer2).f48651a;
                    Painter painterA = PainterResources_androidKt.a(R.drawable.order_return_or_exchange_exchange, composer2, 0);
                    String strC = StringResources_androidKt.c(composer2, R.string.exchange_select_action_exchange);
                    if (exchangeSetupResponseUiModel instanceof ExchangeSetupResponseUiModel.Error.OutOfStock) {
                        i2 = 1114397709;
                        i3 = R.string.exchange_out_of_stock_description;
                    } else if (variationsResponseUiModel instanceof VariationsResponseUiModel.Skip) {
                        i2 = 1114404405;
                        i3 = R.string.exchange_select_action_exchange_description_no_attribute;
                    } else if (z2) {
                        i2 = 1114408456;
                        i3 = R.string.exchange_select_action_exchange_description;
                    } else {
                        if (variationsResponseUiModel instanceof VariationsResponseUiModel.Error) {
                            composer2.L(1114414079);
                            strA = StringResourceUiModelKt.a(((VariationsResponseUiModel.Error) variationsResponseUiModel).f60428a, (Context) composer2.k(AndroidCompositionLocals_androidKt.f9936b));
                            composer2.F();
                        } else {
                            i2 = 1114416023;
                            i3 = R.string.exchange_eligibility_error;
                        }
                        LVPushCardKt.b(rowScope, configurationPushCardContent, painterA, null, strC, strA, null, composer2, (iIntValue & 14) | 512, 36);
                    }
                    strA = o60.k(composer2, i2, i3, composer2);
                    LVPushCardKt.b(rowScope, configurationPushCardContent, painterA, null, strC, strA, null, composer2, (iIntValue & 14) | 512, 36);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 3:
                Modifier modifierE = (Modifier) obj5;
                FocusManager focusManager = (FocusManager) obj4;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer3 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "StoreModeSearchScreenComposable$lambda$15");
                }
                paddingValues.getClass();
                if ((iIntValue2 & 6) == 0) {
                    iIntValue2 |= composer3.K(paddingValues) ? 4 : 2;
                }
                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 19) != 18)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    Modifier modifierB = BackgroundKt.b(PaddingKt.h(modifierE, paddingValues), Color.b(z2 ? 0.75f : 0.9f, LVAppDesignKitTheme.c(composer3).f48361b.u), RectangleShapeKt.f8913a);
                    boolean zY = composer3.y(focusManager);
                    Object objX = composer3.x();
                    if (zY || objX == composer$Companion$Empty$1) {
                        objX = new r11(focusManager, 1);
                        composer3.q(objX);
                    }
                    BoxKt.a(ModifierExtKt.c(modifierB, false, null, null, (Function0) objX, 27), composer3, 0);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            default:
                final TextFieldScrollerPosition textFieldScrollerPosition = (TextFieldScrollerPosition) obj5;
                MutableState mutableState = textFieldScrollerPosition.f6004f;
                MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) obj4;
                Modifier modifier = (Modifier) obj;
                Composer composer4 = (Composer) obj2;
                ((Integer) obj3).getClass();
                if (modifier != null) {
                    modifier.o(new DTFunctionNameModifier("textFieldScrollable$lambda$1"));
                }
                composer4.L(-2137546592);
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                boolean z3 = ((Orientation) ((SnapshotMutableStateImpl) mutableState).getF10755b()) == Orientation.Vertical || !(composer4.k(CompositionLocalsKt.n) == LayoutDirection.Rtl);
                boolean zK = composer4.K(textFieldScrollerPosition);
                Object objX2 = composer4.x();
                if (zK || objX2 == composer$Companion$Empty$1) {
                    objX2 = new p11(textFieldScrollerPosition, i5);
                    composer4.q(objX2);
                }
                final ScrollableState scrollableStateB = ScrollableStateKt.b(composer4, (Function1) objX2);
                boolean zK2 = composer4.K(scrollableStateB) | composer4.K(textFieldScrollerPosition);
                Object objX3 = composer4.x();
                if (zK2 || objX3 == composer$Companion$Empty$1) {
                    objX3 = new ScrollableState(textFieldScrollerPosition) { // from class: androidx.compose.foundation.text.TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final State f5997b;

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final State f5998c;

                        {
                            final int i7 = 0;
                            this.f5997b = SnapshotStateKt.e(new Function0() { // from class: c31
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i8 = i7;
                                    TextFieldScrollerPosition textFieldScrollerPosition2 = textFieldScrollerPosition;
                                    switch (i8) {
                                        case 0:
                                            return Boolean.valueOf(((SnapshotMutableFloatStateImpl) textFieldScrollerPosition2.f6000a).a() < ((SnapshotMutableFloatStateImpl) textFieldScrollerPosition2.f6001b).a());
                                        default:
                                            return Boolean.valueOf(((SnapshotMutableFloatStateImpl) textFieldScrollerPosition2.f6000a).a() > Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                    }
                                }
                            });
                            final int i8 = 1;
                            this.f5998c = SnapshotStateKt.e(new Function0() { // from class: c31
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i9 = i8;
                                    TextFieldScrollerPosition textFieldScrollerPosition2 = textFieldScrollerPosition;
                                    switch (i9) {
                                        case 0:
                                            return Boolean.valueOf(((SnapshotMutableFloatStateImpl) textFieldScrollerPosition2.f6000a).a() < ((SnapshotMutableFloatStateImpl) textFieldScrollerPosition2.f6001b).a());
                                        default:
                                            return Boolean.valueOf(((SnapshotMutableFloatStateImpl) textFieldScrollerPosition2.f6000a).a() > Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                    }
                                }
                            });
                        }

                        @Override // androidx.compose.foundation.gestures.ScrollableState
                        public final boolean a() {
                            return this.f5996a.a();
                        }

                        @Override // androidx.compose.foundation.gestures.ScrollableState
                        public final boolean b() {
                            return ((Boolean) this.f5998c.getF10755b()).booleanValue();
                        }

                        @Override // androidx.compose.foundation.gestures.ScrollableState
                        public final Object c(MutatePriority mutatePriority, Function2 function2, Continuation continuation) {
                            return this.f5996a.c(mutatePriority, function2, continuation);
                        }

                        @Override // androidx.compose.foundation.gestures.ScrollableState
                        public final boolean d() {
                            return ((Boolean) this.f5997b.getF10755b()).booleanValue();
                        }

                        @Override // androidx.compose.foundation.gestures.ScrollableState
                        public final float e(float f2) {
                            return this.f5996a.e(f2);
                        }
                    };
                    composer4.q(objX3);
                }
                TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1 textFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1 = (TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1) objX3;
                Orientation orientation = (Orientation) ((SnapshotMutableStateImpl) mutableState).getF10755b();
                if (z2 && ((SnapshotMutableFloatStateImpl) textFieldScrollerPosition.f6001b).a() != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    z = true;
                }
                Modifier modifierB2 = ScrollableKt.b(textFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1, orientation, z, z3, mutableInteractionSource);
                composer4.F();
                return modifierB2;
        }
    }

    public /* synthetic */ cu(Object obj, boolean z, Object obj2, int i2) {
        this.f68330b = i2;
        this.d = obj;
        this.f68331c = z;
        this.f68332e = obj2;
    }

    public /* synthetic */ cu(boolean z, Object obj, Object obj2, int i2) {
        this.f68330b = i2;
        this.f68331c = z;
        this.d = obj;
        this.f68332e = obj2;
    }
}
