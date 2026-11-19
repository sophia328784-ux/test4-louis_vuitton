package defpackage;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.material3.SliderState;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.internal.AccessibilityUtilKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.BlurKt;
import androidx.compose.ui.draw.BlurredEdgeTreatment;
import androidx.compose.ui.draw.ScaleKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.account.addressbook.components.AddressBookContentKt;
import com.vuitton.android.presentation.screen.account.addressbook.components.ComposableSingletons$AddressBookContentKt;
import com.vuitton.android.presentation.screen.account.addressbook.components.ComposableSingletons$AddressLoadingScreenKt;
import com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionChatMessagesKt;
import com.vuitton.android.presentation.screen.aicompanion.components.chat.ComposableSingletons$AICompanionChatMessagesKt;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.ComposableSingletons$AudioPlayerControlsKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentDisclaimerKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentFormBffComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentFormComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.ComposableSingletons$AssessmentDisclaimerKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.ComposableSingletons$AssessmentFormBffComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.ComposableSingletons$AssessmentFormComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.ComposableSingletons$AssessmentLoadingScreenKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.sections.ComposableSingletons$AssessmentSendComponentKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.ActiveFiltersBackGradientKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.ComposableSingletons$ActiveFiltersBackGradientKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class l2 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75922b;

    public /* synthetic */ l2(int i2) {
        this.f75922b = i2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f75922b;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
        final int i3 = 1;
        boolean z = false;
        switch (i2) {
            case 0:
                MeasureScope measureScope = (MeasureScope) obj;
                final int iB0 = measureScope.B0(AccessibilityUtilKt.f7485a);
                int i4 = iB0 * 2;
                final Placeable placeableT = ((Measurable) obj2).T(ConstraintsKt.i(i4, 0, ((Constraints) obj3).f10999a));
                return measureScope.V0(placeableT.f9548b - i4, placeableT.f9549c, MapsKt.c(), new Function1() { // from class: m2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj4) {
                        int i5 = i3;
                        int i6 = iB0;
                        Placeable placeable = placeableT;
                        Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj4;
                        switch (i5) {
                            case 0:
                                float f2 = AccessibilityUtilKt.f7485a;
                                placementScope.j(placeable, 0, -i6, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                break;
                            default:
                                float f3 = AccessibilityUtilKt.f7485a;
                                placementScope.j(placeable, -i6, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                break;
                        }
                        return Unit.f71739a;
                    }
                });
            case 1:
                MeasureScope measureScope2 = (MeasureScope) obj;
                final int iB1 = measureScope2.B0(AccessibilityUtilKt.f7486b);
                int i5 = iB1 * 2;
                final Placeable placeableT2 = ((Measurable) obj2).T(ConstraintsKt.i(0, i5, ((Constraints) obj3).f10999a));
                int i6 = placeableT2.f9549c - i5;
                int i7 = placeableT2.f9548b;
                final int i8 = z ? 1 : 0;
                return measureScope2.V0(i7, i6, MapsKt.c(), new Function1() { // from class: m2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj4) {
                        int i9 = i8;
                        int i10 = iB1;
                        Placeable placeable = placeableT2;
                        Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj4;
                        switch (i9) {
                            case 0:
                                float f2 = AccessibilityUtilKt.f7485a;
                                placementScope.j(placeable, 0, -i10, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                break;
                            default:
                                float f3 = AccessibilityUtilKt.f7485a;
                                placementScope.j(placeable, -i10, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                break;
                        }
                        return Unit.f71739a;
                    }
                });
            case 2:
                String str = (String) obj;
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                str.getClass();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= composer.K(str) ? 4 : 2;
                }
                if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierA = ScaleKt.a(BoxScopeInstance.f4938a.j(new DTFunctionNameModifier("BookingCarouselBackground$lambda$0")), 2.0f, 2.0f);
                    Dp.Companion companion = Dp.f11004c;
                    BlurredEdgeTreatment.f8702a.getClass();
                    Modifier modifierA2 = BlurKt.a(modifierA, 58.0f, 58.0f, null);
                    ContentScale.f9447a.getClass();
                    ImageLoaderKt.b(modifierA2, str, ContentScale.Companion.f9451e, null, null, 0, false, null, null, null, composer, KyberEngine.KyberPolyBytes, 2040);
                    BoxKt.a(BackgroundKt.b(new DTFunctionNameModifier("BookingCarouselBackground$lambda$0").o(SizeKt.f5052c), Color.b(0.4f, LVAppDesignKitTheme.c(composer).f48361b.f48376c), rectangleShapeKt$RectangleShape$1), composer, 0);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 3:
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ComposableSingletons$AICompanionChatMessagesKt composableSingletons$AICompanionChatMessagesKt = ComposableSingletons$AICompanionChatMessagesKt.f52817a;
                ((LazyItemScope) obj).getClass();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    SpacerKt.a(composer2, SizeKt.f(new DTFunctionNameModifier("lambda__740450832$lambda$0"), LVAppDesignKitTheme.d(composer2).C));
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 4:
                Composer composer3 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                ComposableSingletons$AICompanionChatMessagesKt composableSingletons$AICompanionChatMessagesKt2 = ComposableSingletons$AICompanionChatMessagesKt.f52817a;
                ((LazyItemScope) obj).getClass();
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 17) != 16)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    TextKt.c(StringResources_androidKt.c(composer3, R.string.companion_legal_chat), PaddingKt.k(new DTFunctionNameModifier("lambda_1887427353$lambda$0"), LVAppDesignKitTheme.l(composer3).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer3).f48429j, composer3, 0, 0, 131068);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 5:
                Composer composer4 = (Composer) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                ComposableSingletons$AICompanionChatMessagesKt composableSingletons$AICompanionChatMessagesKt3 = ComposableSingletons$AICompanionChatMessagesKt.f52817a;
                ((LazyItemScope) obj).getClass();
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 17) != 16)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    AICompanionChatMessagesKt.a(composer4, 0);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 6:
                Composer composer5 = (Composer) obj2;
                ((Integer) obj3).getClass();
                ComposableSingletons$ActiveFiltersBackGradientKt composableSingletons$ActiveFiltersBackGradientKt = ComposableSingletons$ActiveFiltersBackGradientKt.f58067a;
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                Modifier modifierF = SizeKt.f(tr.d("lambda_1257281167$lambda$0", 1.0f), ActiveFiltersBackGradientKt.f58048a);
                Brush.Companion companion2 = Brush.f8862a;
                Color.f8866b.getClass();
                BoxKt.a(BackgroundKt.a(modifierF, Brush.Companion.b(companion2, CollectionsKt.P(new Color(Color.f8870h), new Color(Color.b(0.16f, LVAppDesignKitTheme.c(composer5).f48361b.g))), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14)), composer5, 0);
                return Unit.f71739a;
            case 7:
                Composer composer6 = (Composer) obj2;
                int iIntValue5 = ((Integer) obj3).intValue();
                ComposableSingletons$AddressBookContentKt composableSingletons$AddressBookContentKt = ComposableSingletons$AddressBookContentKt.f52176a;
                ((LazyItemScope) obj).getClass();
                if (composer6.p(iIntValue5 & 1, (iIntValue5 & 17) != 16)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    AddressBookContentKt.c(composer6, 0);
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 8:
                Composer composer7 = (Composer) obj2;
                int iIntValue6 = ((Integer) obj3).intValue();
                ComposableSingletons$AddressBookContentKt composableSingletons$AddressBookContentKt2 = ComposableSingletons$AddressBookContentKt.f52176a;
                ((LazyItemScope) obj).getClass();
                if (composer7.p(iIntValue6 & 1, (iIntValue6 & 17) != 16)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    SpacerKt.a(composer7, SizeKt.f(new DTFunctionNameModifier("lambda__669095264$lambda$0"), LVAppDesignKitTheme.l(composer7).f48417f));
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 9:
                Composer composer8 = (Composer) obj2;
                int iIntValue7 = ((Integer) obj3).intValue();
                ComposableSingletons$AddressBookContentKt composableSingletons$AddressBookContentKt3 = ComposableSingletons$AddressBookContentKt.f52176a;
                ((LazyItemScope) obj).getClass();
                if (composer8.p(iIntValue7 & 1, (iIntValue7 & 17) != 16)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    SpacerKt.a(composer8, SizeKt.f(new DTFunctionNameModifier("lambda_550821399$lambda$0"), LVAppDesignKitTheme.l(composer8).f48417f));
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 10:
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer9 = (Composer) obj2;
                int iIntValue8 = ((Integer) obj3).intValue();
                ComposableSingletons$AddressLoadingScreenKt composableSingletons$AddressLoadingScreenKt = ComposableSingletons$AddressLoadingScreenKt.f52179a;
                paddingValues.getClass();
                if ((iIntValue8 & 6) == 0) {
                    iIntValue8 |= composer9.K(paddingValues) ? 4 : 2;
                }
                if (composer9.p(iIntValue8 & 1, (iIntValue8 & 19) != 18)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    Modifier modifierB = BackgroundKt.b(PaddingKt.h(new DTFunctionNameModifier("lambda_1632259041$lambda$0").o(SizeKt.f5052c), paddingValues), LVAppDesignKitTheme.c(composer9).f48361b.f48374a, rectangleShapeKt$RectangleShape$1);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                    int iHashCode = Long.hashCode(composer9.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer9.n();
                    Modifier modifierC = ComposedModifierKt.c(composer9, modifierB);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer9.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer9.B();
                    if (composer9.getS()) {
                        composer9.C(function0);
                    } else {
                        composer9.o();
                    }
                    Updater.c(composer9, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer9, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer9, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer9, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer9, modifierC, ComposeUiNode.Companion.d);
                    ProgressViewKt.a(null, 0L, false, composer9, 0, 7);
                    composer9.r();
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
            case 11:
                Composer composer10 = (Composer) obj2;
                int iIntValue9 = ((Integer) obj3).intValue();
                ComposableSingletons$AssessmentDisclaimerKt composableSingletons$AssessmentDisclaimerKt = ComposableSingletons$AssessmentDisclaimerKt.f57059a;
                ((ColumnScope) obj).getClass();
                if (composer10.p(iIntValue9 & 1, (iIntValue9 & 17) != 16)) {
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                } else {
                    composer10.D();
                }
                return Unit.f71739a;
            case 12:
                Composer composer11 = (Composer) obj2;
                int iIntValue10 = ((Integer) obj3).intValue();
                ComposableSingletons$AssessmentDisclaimerKt composableSingletons$AssessmentDisclaimerKt2 = ComposableSingletons$AssessmentDisclaimerKt.f57059a;
                ((ColumnScope) obj).getClass();
                if (composer11.p(iIntValue10 & 1, (iIntValue10 & 17) != 16)) {
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    TextKt.c("Additional content can go here.", PaddingKt.m(new DTFunctionNameModifier("lambda_231476400$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer11).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(composer11).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer11).f48427h, composer11, 6, 0, 131064);
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
            case 13:
                Composer composer12 = (Composer) obj2;
                int iIntValue11 = ((Integer) obj3).intValue();
                ComposableSingletons$AssessmentFormBffComponentKt composableSingletons$AssessmentFormBffComponentKt = ComposableSingletons$AssessmentFormBffComponentKt.f57062a;
                ((LazyItemScope) obj).getClass();
                if (composer12.p(iIntValue11 & 1, (iIntValue11 & 17) != 16)) {
                    OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                    AssessmentFormBffComponentKt.b(composer12, 0);
                } else {
                    composer12.D();
                }
                return Unit.f71739a;
            case 14:
                Composer composer13 = (Composer) obj2;
                int iIntValue12 = ((Integer) obj3).intValue();
                ComposableSingletons$AssessmentFormBffComponentKt composableSingletons$AssessmentFormBffComponentKt2 = ComposableSingletons$AssessmentFormBffComponentKt.f57062a;
                ((LazyItemScope) obj).getClass();
                if (composer13.p(iIntValue12 & 1, (iIntValue12 & 17) != 16)) {
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                    AssessmentDisclaimerKt.a(PaddingKt.m(new DTFunctionNameModifier("lambda_1807843177$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer13).f48415c, 7), StringResources_androidKt.c(composer13, R.string.dr_prass_payment_banner_description), null, LVAppDesignKitTheme.c(composer13).f48361b.f48374a, null, composer13, 0, 20);
                } else {
                    composer13.D();
                }
                return Unit.f71739a;
            case 15:
                Composer composer14 = (Composer) obj2;
                int iIntValue13 = ((Integer) obj3).intValue();
                ComposableSingletons$AssessmentFormBffComponentKt composableSingletons$AssessmentFormBffComponentKt3 = ComposableSingletons$AssessmentFormBffComponentKt.f57062a;
                ((LazyItemScope) obj).getClass();
                if (composer14.p(iIntValue13 & 1, (iIntValue13 & 17) != 16)) {
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                    AssessmentFormBffComponentKt.b(composer14, 0);
                } else {
                    composer14.D();
                }
                return Unit.f71739a;
            case 16:
                Composer composer15 = (Composer) obj2;
                int iIntValue14 = ((Integer) obj3).intValue();
                ComposableSingletons$AssessmentFormBffComponentKt composableSingletons$AssessmentFormBffComponentKt4 = ComposableSingletons$AssessmentFormBffComponentKt.f57062a;
                ((LazyItemScope) obj).getClass();
                if (composer15.p(iIntValue14 & 1, (iIntValue14 & 17) != 16)) {
                    OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                    AssessmentFormBffComponentKt.b(composer15, 0);
                } else {
                    composer15.D();
                }
                return Unit.f71739a;
            case 17:
                Composer composer16 = (Composer) obj2;
                int iIntValue15 = ((Integer) obj3).intValue();
                ComposableSingletons$AssessmentFormBffComponentKt composableSingletons$AssessmentFormBffComponentKt5 = ComposableSingletons$AssessmentFormBffComponentKt.f57062a;
                ((LazyItemScope) obj).getClass();
                if (composer16.p(iIntValue15 & 1, (iIntValue15 & 17) != 16)) {
                    OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                    AssessmentFormBffComponentKt.b(composer16, 0);
                } else {
                    composer16.D();
                }
                return Unit.f71739a;
            case 18:
                Composer composer17 = (Composer) obj2;
                int iIntValue16 = ((Integer) obj3).intValue();
                ComposableSingletons$AssessmentFormBffComponentKt composableSingletons$AssessmentFormBffComponentKt6 = ComposableSingletons$AssessmentFormBffComponentKt.f57062a;
                ((LazyItemScope) obj).getClass();
                if (composer17.p(iIntValue16 & 1, (iIntValue16 & 17) != 16)) {
                    OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                    SpacerKt.a(composer17, SizeKt.f(new DTFunctionNameModifier("lambda__273347728$lambda$0"), LVAppDesignKitTheme.l(composer17).f48417f));
                } else {
                    composer17.D();
                }
                return Unit.f71739a;
            case 19:
                Composer composer18 = (Composer) obj2;
                int iIntValue17 = ((Integer) obj3).intValue();
                ComposableSingletons$AssessmentFormBffComponentKt composableSingletons$AssessmentFormBffComponentKt7 = ComposableSingletons$AssessmentFormBffComponentKt.f57062a;
                ((LazyItemScope) obj).getClass();
                if (composer18.p(iIntValue17 & 1, (iIntValue17 & 17) != 16)) {
                    OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                    AssessmentFormBffComponentKt.b(composer18, 0);
                } else {
                    composer18.D();
                }
                return Unit.f71739a;
            case 20:
                Composer composer19 = (Composer) obj2;
                int iIntValue18 = ((Integer) obj3).intValue();
                ComposableSingletons$AssessmentFormBffComponentKt composableSingletons$AssessmentFormBffComponentKt8 = ComposableSingletons$AssessmentFormBffComponentKt.f57062a;
                ((LazyItemScope) obj).getClass();
                if (composer19.p(iIntValue18 & 1, (iIntValue18 & 17) != 16)) {
                    OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                    AssessmentFormBffComponentKt.b(composer19, 0);
                } else {
                    composer19.D();
                }
                return Unit.f71739a;
            case 21:
                Composer composer20 = (Composer) obj2;
                int iIntValue19 = ((Integer) obj3).intValue();
                ComposableSingletons$AssessmentFormComponentKt composableSingletons$AssessmentFormComponentKt = ComposableSingletons$AssessmentFormComponentKt.f57069a;
                ((LazyItemScope) obj).getClass();
                if (composer20.p(iIntValue19 & 1, (iIntValue19 & 17) != 16)) {
                    OpaqueKey opaqueKey20 = ComposerKt.f7940a;
                    AssessmentFormComponentKt.b(composer20, 0);
                } else {
                    composer20.D();
                }
                return Unit.f71739a;
            case 22:
                Composer composer21 = (Composer) obj2;
                int iIntValue20 = ((Integer) obj3).intValue();
                ComposableSingletons$AssessmentFormComponentKt composableSingletons$AssessmentFormComponentKt2 = ComposableSingletons$AssessmentFormComponentKt.f57069a;
                ((LazyItemScope) obj).getClass();
                if (composer21.p(iIntValue20 & 1, (iIntValue20 & 17) != 16)) {
                    OpaqueKey opaqueKey21 = ComposerKt.f7940a;
                    AssessmentFormComponentKt.b(composer21, 0);
                } else {
                    composer21.D();
                }
                return Unit.f71739a;
            case 23:
                Composer composer22 = (Composer) obj2;
                int iIntValue21 = ((Integer) obj3).intValue();
                ComposableSingletons$AssessmentFormComponentKt composableSingletons$AssessmentFormComponentKt3 = ComposableSingletons$AssessmentFormComponentKt.f57069a;
                ((LazyItemScope) obj).getClass();
                if (composer22.p(iIntValue21 & 1, (iIntValue21 & 17) != 16)) {
                    OpaqueKey opaqueKey22 = ComposerKt.f7940a;
                    AssessmentFormComponentKt.b(composer22, 0);
                } else {
                    composer22.D();
                }
                return Unit.f71739a;
            case 24:
                Composer composer23 = (Composer) obj2;
                int iIntValue22 = ((Integer) obj3).intValue();
                ComposableSingletons$AssessmentFormComponentKt composableSingletons$AssessmentFormComponentKt4 = ComposableSingletons$AssessmentFormComponentKt.f57069a;
                ((LazyItemScope) obj).getClass();
                if (composer23.p(iIntValue22 & 1, (iIntValue22 & 17) != 16)) {
                    OpaqueKey opaqueKey23 = ComposerKt.f7940a;
                    SpacerKt.a(composer23, SizeKt.f(new DTFunctionNameModifier("lambda__730229315$lambda$0"), LVAppDesignKitTheme.l(composer23).f48417f));
                } else {
                    composer23.D();
                }
                return Unit.f71739a;
            case 25:
                Composer composer24 = (Composer) obj2;
                int iIntValue23 = ((Integer) obj3).intValue();
                ComposableSingletons$AssessmentFormComponentKt composableSingletons$AssessmentFormComponentKt5 = ComposableSingletons$AssessmentFormComponentKt.f57069a;
                ((LazyItemScope) obj).getClass();
                if (composer24.p(iIntValue23 & 1, (iIntValue23 & 17) != 16)) {
                    OpaqueKey opaqueKey24 = ComposerKt.f7940a;
                    AssessmentFormComponentKt.b(composer24, 0);
                } else {
                    composer24.D();
                }
                return Unit.f71739a;
            case 26:
                Composer composer25 = (Composer) obj2;
                int iIntValue24 = ((Integer) obj3).intValue();
                ComposableSingletons$AssessmentFormComponentKt composableSingletons$AssessmentFormComponentKt6 = ComposableSingletons$AssessmentFormComponentKt.f57069a;
                ((LazyItemScope) obj).getClass();
                if (composer25.p(iIntValue24 & 1, (iIntValue24 & 17) != 16)) {
                    OpaqueKey opaqueKey25 = ComposerKt.f7940a;
                    AssessmentFormComponentKt.b(composer25, 0);
                } else {
                    composer25.D();
                }
                return Unit.f71739a;
            case 27:
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer26 = (Composer) obj2;
                int iIntValue25 = ((Integer) obj3).intValue();
                ComposableSingletons$AssessmentLoadingScreenKt composableSingletons$AssessmentLoadingScreenKt = ComposableSingletons$AssessmentLoadingScreenKt.f57074a;
                paddingValues2.getClass();
                if ((iIntValue25 & 6) == 0) {
                    iIntValue25 |= composer26.K(paddingValues2) ? 4 : 2;
                }
                if (composer26.p(iIntValue25 & 1, (iIntValue25 & 19) != 18)) {
                    OpaqueKey opaqueKey26 = ComposerKt.f7940a;
                    ProgressViewKt.a(PaddingKt.h(new DTFunctionNameModifier("lambda_178032413$lambda$0").o(SizeKt.f5052c), paddingValues2), 0L, false, composer26, 0, 6);
                } else {
                    composer26.D();
                }
                return Unit.f71739a;
            case 28:
                Composer composer27 = (Composer) obj2;
                int iIntValue26 = ((Integer) obj3).intValue();
                ComposableSingletons$AssessmentSendComponentKt composableSingletons$AssessmentSendComponentKt = ComposableSingletons$AssessmentSendComponentKt.f57085a;
                ((ColumnScope) obj).getClass();
                if (composer27.p(iIntValue26 & 1, (iIntValue26 & 17) != 16)) {
                    OpaqueKey opaqueKey27 = ComposerKt.f7940a;
                    Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("lambda_915418374$lambda$0"), LVAppDesignKitTheme.l(composer27).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer27, 0);
                    int iHashCode2 = Long.hashCode(composer27.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer27.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer27, modifierM);
                    ComposeUiNode.b0.getClass();
                    Function0 function1 = ComposeUiNode.Companion.f9641b;
                    if (composer27.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer27.B();
                    if (composer27.getS()) {
                        composer27.C(function1);
                    } else {
                        composer27.o();
                    }
                    Updater.c(composer27, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer27, persistentCompositionLocalMapN2, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer27, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                    Updater.b(composer27, ComposeUiNode.Companion.f9645h);
                    TextKt.c(StringResources_androidKt.c(composer27, R.string.dr_prass_card2_subtext1), PaddingKt.m(a.f(composer27, modifierC2, ComposeUiNode.Companion.d, "lambda_915418374$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer27).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer27).f48417f, 5), LVAppDesignKitTheme.c(composer27).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer27).f48427h, composer27, 0, 0, 131064);
                    TextKt.c(StringResources_androidKt.c(composer27, R.string.dr_prass_card2_subtitle2), PaddingKt.m(new DTFunctionNameModifier("lambda_915418374$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer27).f48415c, 7), LVAppDesignKitTheme.c(composer27).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer27).l, composer27, 0, 0, 131064);
                    TextKt.c(StringResources_androidKt.c(composer27, R.string.dr_prass_card2_subtext2), null, LVAppDesignKitTheme.c(composer27).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer27).f48427h, composer27, 0, 0, 131066);
                    composer27.r();
                } else {
                    composer27.D();
                }
                return Unit.f71739a;
            default:
                Composer composer28 = (Composer) obj2;
                int iIntValue27 = ((Integer) obj3).intValue();
                ComposableSingletons$AudioPlayerControlsKt composableSingletons$AudioPlayerControlsKt = ComposableSingletons$AudioPlayerControlsKt.f53102a;
                ((SliderState) obj).getClass();
                if (composer28.p(iIntValue27 & 1, (iIntValue27 & 17) != 16)) {
                    OpaqueKey opaqueKey28 = ComposerKt.f7940a;
                } else {
                    composer28.D();
                }
                return Unit.f71739a;
        }
    }
}
