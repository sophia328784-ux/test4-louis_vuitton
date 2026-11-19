package defpackage;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.Indication;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.LinkInteractionListener;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVDisclaimerKt;
import com.vuitton.android.designkit.ui.theme.templates.LVEmptyViewKt;
import com.vuitton.android.presentation.compose.components.LVNotificationKt;
import com.vuitton.android.presentation.screen.account.addressbook.models.EmptyAddressBookAction;
import com.vuitton.android.presentation.screen.certificates.components.TransferCertificateCardKt;
import com.vuitton.android.presentation.screen.certificates.components.list.CertificateEmptyScreenKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentBffScreenKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentScreenKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormScreenKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.formsections.DistantRepairEligibilityCardComponentKt;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeReasonScreenKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoRoutes;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderEmptyComposableKt;
import com.vuitton.android.presentation.screen.privacy.components.PrivacyConfirmationBottomSheetKt;
import com.vuitton.android.presentation.screen.repairs.list.components.CareServicePromotionCardKt;
import com.vuitton.android.presentation.screen.storemode.components.StoreModeInvalidKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.internal.Constants;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a3 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f380b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f381c;

    public /* synthetic */ a3(Function0 function0, int i2) {
        this.f380b = i2;
        this.f381c = function0;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        AnnotatedString annotatedStringI;
        MutableInteractionSource mutableInteractionSource;
        AnnotatedString annotatedStringI2;
        String strB;
        AnnotatedString annotatedStringI3;
        int i2 = this.f380b;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Function0 function0 = this.f381c;
        switch (i2) {
            case 0:
                FormFieldGenericUiModel formFieldGenericUiModel = (FormFieldGenericUiModel) obj;
                Composer composer = (Composer) obj2;
                ((Integer) obj3).getClass();
                formFieldGenericUiModel.getClass();
                composer.L(-535028245);
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                if (formFieldGenericUiModel.getD() == FormSectionTypeUiModel.PRIVACY_POLICY_CONSENT) {
                    composer.L(-402682687);
                    String strC = StringResources_androidKt.c(composer, R.string.mylv_settings_gcm_description_2);
                    String strB2 = StringResources_androidKt.b(R.string.mylv_privacy_policy_consent, new Object[]{strC}, composer);
                    int iV = StringsKt.v(strB2, strC, 0, false, 6);
                    if (iV < 0) {
                        iV = 0;
                    }
                    int length = strC.length() + iV;
                    AnnotatedString.Builder builder = new AnnotatedString.Builder(0, 1, null);
                    builder.e(strB2);
                    TextDecoration.f10965b.getClass();
                    builder.c(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61439, (DefaultConstructorMarker) null), iV, length);
                    TextLinkStyles textLinkStyles = new TextLinkStyles(new SpanStyle(LVAppDesignKitTheme.c(composer).f48361b.m, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, Constants.CallType.HOST, (DefaultConstructorMarker) null), null, null, null, 14, null);
                    boolean zK = composer.K(function0);
                    Object objX = composer.x();
                    if (zK || objX == composer$Companion$Empty$1) {
                        objX = new c3(function0, 0);
                        composer.q(objX);
                    }
                    builder.a(new LinkAnnotation.Clickable("privacy_policy_link", textLinkStyles, (LinkInteractionListener) objX), iV, length);
                    annotatedStringI = builder.i();
                    composer.F();
                } else {
                    composer.L(-401608909);
                    composer.F();
                    annotatedStringI = null;
                }
                composer.F();
                return annotatedStringI;
            case 1:
                FormFieldGenericUiModel formFieldGenericUiModel2 = (FormFieldGenericUiModel) obj;
                Composer composer2 = (Composer) obj2;
                ((Integer) obj3).getClass();
                formFieldGenericUiModel2.getClass();
                composer2.L(32278681);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                Function0 function1 = formFieldGenericUiModel2.getD() == FormSectionTypeUiModel.PRIVACY_POLICY_CONSENT ? function0 : null;
                composer2.F();
                return function1;
            case 2:
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer3 = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= composer3.K(paddingValues) ? 4 : 2;
                }
                if (composer3.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    LVEmptyViewKt.d(ModifierExtKt.e(PaddingKt.h(new DTFunctionNameModifier("AddressEmptyScreen$lambda$0"), paddingValues), "addressBook_empty_view"), LVAppDesignKitTheme.g(composer3).g, null, StringResources_androidKt.c(composer3, R.string.mylv_no_addresses), null, null, false, null, StringResources_androidKt.c(composer3, R.string.mylv_myprofile_addressbookbrick_addanaddress), this.f381c, EmptyAddressBookAction.f52202a, null, composer3, 0, 6, 2292);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 3:
                ((Integer) obj3).intValue();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                AssessmentBffScreenKt.b(function0, (Composer) obj2, 0);
                return Unit.f71739a;
            case 4:
                ((Integer) obj3).intValue();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                AssessmentScreenKt.b(function0, (Composer) obj2, 0);
                return Unit.f71739a;
            case 5:
                Composer composer4 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ((BeautyVtoRoutes.ShadeFinderResultEmpty) obj).getClass();
                if (composer4.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    ShadeFinderEmptyComposableKt.a(function0, composer4, 0);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 6:
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer5 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                paddingValues2.getClass();
                if ((iIntValue3 & 6) == 0) {
                    iIntValue3 |= composer5.K(paddingValues2) ? 4 : 2;
                }
                if (composer5.p(iIntValue3 & 1, (iIntValue3 & 19) != 18)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    Modifier modifierB = BackgroundKt.b(o60.e("CertificateEmptyScreen$lambda$0", paddingValues2).o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer5).f48361b.f48375b, rectangleShapeKt$RectangleShape$1);
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer5, 0);
                    int iHashCode = Long.hashCode(composer5.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer5.n();
                    Modifier modifierC = ComposedModifierKt.c(composer5, modifierB);
                    ComposeUiNode.b0.getClass();
                    Function0 function2 = ComposeUiNode.Companion.f9641b;
                    if (composer5.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer5.B();
                    if (composer5.getS()) {
                        composer5.C(function2);
                    } else {
                        composer5.o();
                    }
                    Updater.c(composer5, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer5, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer5, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer5, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer5, modifierC, ComposeUiNode.Companion.d);
                    LVEmptyViewKt.d(ColumnScopeInstance.f4944a.a(new DTFunctionNameModifier("CertificateEmptyScreen$lambda$0"), 1.0f, true), LVAppDesignKitTheme.g(composer5).J0, null, StringResources_androidKt.c(composer5, R.string.my_certificate_empty), null, null, false, null, null, null, null, null, composer5, 0, 0, 4084);
                    CertificateEmptyScreenKt.b(StringResources_androidKt.c(composer5, R.string.my_certificate_help_contact1), function0, composer5, 0);
                    composer5.r();
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 7:
                PaddingValues paddingValues3 = (PaddingValues) obj;
                Composer composer6 = (Composer) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                paddingValues3.getClass();
                if ((iIntValue4 & 6) == 0) {
                    iIntValue4 |= composer6.K(paddingValues3) ? 4 : 2;
                }
                if (composer6.p(iIntValue4 & 1, (iIntValue4 & 19) != 18)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    LVEmptyViewKt.e(o60.e("CertificateErrorScreen$lambda$0", paddingValues3), null, StringResources_androidKt.c(composer6, R.string.error_generic), null, null, StringResources_androidKt.c(composer6, R.string.button_try_again), this.f381c, composer6, 0, 122);
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 8:
                Composer composer7 = (Composer) obj2;
                int iIntValue5 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer7.p(iIntValue5 & 1, (iIntValue5 & 17) != 16)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    TransferCertificateCardKt.a(0, 0, composer7, ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("CertificateList$lambda$0$0$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer7).f48417f, 7), "certificateList_add_button"), function0);
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 9:
                Modifier modifier = (Modifier) obj;
                Composer composer8 = (Composer) obj2;
                ((Integer) obj3).getClass();
                if (modifier != null) {
                    modifier.o(new DTFunctionNameModifier("clickable_XHw0xAI$lambda$1"));
                }
                composer8.L(-756081143);
                OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                Indication indication = (Indication) composer8.k(IndicationKt.f4231a);
                if (indication instanceof IndicationNodeFactory) {
                    composer8.L(-1604682242);
                    composer8.F();
                    mutableInteractionSource = null;
                } else {
                    composer8.L(-1604549624);
                    Object objX2 = composer8.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = InteractionSourceKt.a();
                        composer8.q(objX2);
                    }
                    composer8.F();
                    mutableInteractionSource = (MutableInteractionSource) objX2;
                }
                Modifier modifierA = ClickableKt.a(new DTFunctionNameModifier("clickable_XHw0xAI$lambda$1"), mutableInteractionSource, indication, true, null, null, this.f381c);
                composer8.F();
                return modifierA;
            case 10:
                Composer composer9 = (Composer) obj2;
                int iIntValue6 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer9.p(iIntValue6 & 1, (iIntValue6 & 17) != 16)) {
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    DistantRepairEligibilityCardComponentKt.a(0, composer9, null, function0);
                    SpacerKt.a(composer9, SizeKt.f(new DTFunctionNameModifier("DistantRepairFormComponent$lambda$0$0$0"), LVAppDesignKitTheme.l(composer9).f48417f));
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
            case 11:
                ((Integer) obj3).intValue();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                DistantRepairFormScreenKt.a(function0, (Composer) obj2, 0);
                return Unit.f71739a;
            case 12:
                PaddingValues paddingValues4 = (PaddingValues) obj;
                Composer composer10 = (Composer) obj2;
                int iIntValue7 = ((Integer) obj3).intValue();
                paddingValues4.getClass();
                if ((iIntValue7 & 6) == 0) {
                    iIntValue7 |= composer10.K(paddingValues4) ? 4 : 2;
                }
                if (composer10.p(iIntValue7 & 1, (iIntValue7 & 19) != 18)) {
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                    LVEmptyViewKt.e(o60.e("EditMyInfoErrorScreen$lambda$1", paddingValues4), null, StringResources_androidKt.c(composer10, R.string.mylv_error_ws_generic_label_title), null, null, StringResources_androidKt.c(composer10, R.string.button_try_again), this.f381c, composer10, 0, 122);
                } else {
                    composer10.D();
                }
                return Unit.f71739a;
            case 13:
                Composer composer11 = (Composer) obj2;
                int iIntValue8 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer11.p(iIntValue8 & 1, (iIntValue8 & 17) != 16)) {
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                    LVDisclaimerKt.a(PaddingKt.k(new DTFunctionNameModifier("ExpirationBottomSheetContent$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer11).f48416e, 1), StringResources_androidKt.c(composer11, R.string.booking_prebooking_expired_description), null, 0L, null, null, composer11, 0, 60);
                    LVButtonKt.b(0, 504, composer11, PaddingKt.m(tr.d("ExpirationBottomSheetContent$lambda$0", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer11).f48416e, 7), LVAppDesignKitTheme.b(composer11).f48446a, null, null, StringResources_androidKt.c(composer11, R.string.booking_prebooking_expired_cta), this.f381c, false, false, false);
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
            case 14:
                PaddingValues paddingValues5 = (PaddingValues) obj;
                Composer composer12 = (Composer) obj2;
                int iIntValue9 = ((Integer) obj3).intValue();
                paddingValues5.getClass();
                if ((iIntValue9 & 6) == 0) {
                    iIntValue9 |= composer12.K(paddingValues5) ? 4 : 2;
                }
                if (composer12.p(iIntValue9 & 1, (iIntValue9 & 19) != 18)) {
                    OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                    LVEmptyViewKt.e(o60.e("InboxErrorScreen$lambda$0", paddingValues5), null, StringResources_androidKt.c(composer12, R.string.mylv_error_ws_generic_label_title), null, null, StringResources_androidKt.c(composer12, R.string.button_try_again), this.f381c, composer12, 0, 122);
                } else {
                    composer12.D();
                }
                return Unit.f71739a;
            case 15:
                Composer composer13 = (Composer) obj2;
                ((Integer) obj3).getClass();
                float f2 = LVNotificationKt.f50993a;
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                Modifier modifierB2 = BackgroundKt.b(new DTFunctionNameModifier("DismissibleNotification$lambda$6").o(SizeKt.f5052c), Color.b(LVAppDesignKitTheme.h(composer13).d, LVAppDesignKitTheme.c(composer13).f48361b.u), rectangleShapeKt$RectangleShape$1);
                boolean zK2 = composer13.K(function0);
                Object objX3 = composer13.x();
                if (zK2 || objX3 == composer$Companion$Empty$1) {
                    objX3 = new py(function0, 17);
                    composer13.q(objX3);
                }
                BoxKt.a(ModifierExtKt.c(modifierB2, false, null, null, (Function0) objX3, 27), composer13, 0);
                return Unit.f71739a;
            case 16:
                FormFieldGenericUiModel formFieldGenericUiModel3 = (FormFieldGenericUiModel) obj;
                Composer composer14 = (Composer) obj2;
                ((Integer) obj3).getClass();
                formFieldGenericUiModel3.getClass();
                composer14.L(138766387);
                OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                if (formFieldGenericUiModel3.getD() == FormSectionTypeUiModel.TARGETED_ADVERTISING_CONSENT) {
                    composer14.L(-2063918130);
                    String strC2 = StringResources_androidKt.c(composer14, R.string.mylv_settings_gcm_subtitle_2);
                    String strB3 = StringResources_androidKt.b(R.string.mylv_native_register_online_platforms, new Object[]{strC2}, composer14);
                    int iV2 = StringsKt.v(strB3, strC2, 0, false, 6);
                    if (iV2 < 0) {
                        iV2 = 0;
                    }
                    int length2 = strC2.length() + iV2;
                    AnnotatedString.Builder builder2 = new AnnotatedString.Builder(0, 1, null);
                    builder2.e(strB3);
                    TextDecoration.f10965b.getClass();
                    builder2.c(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61439, (DefaultConstructorMarker) null), iV2, length2);
                    TextLinkStyles textLinkStyles2 = new TextLinkStyles(new SpanStyle(LVAppDesignKitTheme.c(composer14).f48361b.m, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, Constants.CallType.HOST, (DefaultConstructorMarker) null), null, null, null, 14, null);
                    boolean zK3 = composer14.K(function0);
                    Object objX4 = composer14.x();
                    if (zK3 || objX4 == composer$Companion$Empty$1) {
                        objX4 = new c3(function0, 3);
                        composer14.q(objX4);
                    }
                    builder2.a(new LinkAnnotation.Clickable("partners_link", textLinkStyles2, (LinkInteractionListener) objX4), iV2, length2);
                    annotatedStringI2 = builder2.i();
                    composer14.F();
                } else {
                    composer14.L(-2062525765);
                    composer14.F();
                    annotatedStringI2 = null;
                }
                composer14.F();
                return annotatedStringI2;
            case 17:
                FormFieldGenericUiModel formFieldGenericUiModel4 = (FormFieldGenericUiModel) obj;
                Composer composer15 = (Composer) obj2;
                ((Integer) obj3).getClass();
                formFieldGenericUiModel4.getClass();
                composer15.L(-133839606);
                OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                Function0 function3 = (formFieldGenericUiModel4.getD() == FormSectionTypeUiModel.PRIVACY_POLICY_CONSENT || formFieldGenericUiModel4.getD() == FormSectionTypeUiModel.LEGACY_CONSENTS) ? function0 : null;
                composer15.F();
                return function3;
            case 18:
                FormFieldGenericUiModel formFieldGenericUiModel5 = (FormFieldGenericUiModel) obj;
                Composer composer16 = (Composer) obj2;
                ((Integer) obj3).getClass();
                formFieldGenericUiModel5.getClass();
                composer16.L(-750558111);
                OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                Function0 function4 = formFieldGenericUiModel5.getD() == FormSectionTypeUiModel.TARGETED_ADVERTISING_CONSENT ? function0 : null;
                composer16.F();
                return function4;
            case 19:
                FormFieldGenericUiModel formFieldGenericUiModel6 = (FormFieldGenericUiModel) obj;
                Composer composer17 = (Composer) obj2;
                ((Integer) obj3).getClass();
                formFieldGenericUiModel6.getClass();
                composer17.L(-1344455588);
                OpaqueKey opaqueKey20 = ComposerKt.f7940a;
                FormSectionTypeUiModel d = formFieldGenericUiModel6.getD();
                FormSectionTypeUiModel formSectionTypeUiModel = FormSectionTypeUiModel.PRIVACY_POLICY_CONSENT;
                if (d == formSectionTypeUiModel || formFieldGenericUiModel6.getD() == FormSectionTypeUiModel.LEGACY_CONSENTS) {
                    composer17.L(-2106118911);
                    String strC3 = StringResources_androidKt.c(composer17, R.string.mylv_settings_gcm_description_2);
                    if (formFieldGenericUiModel6.getD() == formSectionTypeUiModel) {
                        composer17.L(-2105963508);
                        strB = StringResources_androidKt.b(R.string.mylv_native_register_consent_privacy_policy, new Object[]{strC3}, composer17);
                        composer17.F();
                    } else {
                        composer17.L(-2105836966);
                        strB = StringResources_androidKt.b(R.string.mylv_native_register_consents, new Object[]{strC3}, composer17);
                        composer17.F();
                    }
                    int iV3 = StringsKt.v(strB, strC3, 0, false, 6);
                    if (iV3 < 0) {
                        iV3 = 0;
                    }
                    int length3 = strC3.length() + iV3;
                    AnnotatedString.Builder builder3 = new AnnotatedString.Builder(0, 1, null);
                    builder3.e(strB);
                    TextDecoration.f10965b.getClass();
                    builder3.c(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61439, (DefaultConstructorMarker) null), iV3, length3);
                    TextLinkStyles textLinkStyles3 = new TextLinkStyles(new SpanStyle(LVAppDesignKitTheme.c(composer17).f48361b.m, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, Constants.CallType.HOST, (DefaultConstructorMarker) null), null, null, null, 14, null);
                    boolean zK4 = composer17.K(function0);
                    Object objX5 = composer17.x();
                    if (zK4 || objX5 == composer$Companion$Empty$1) {
                        objX5 = new c3(function0, 2);
                        composer17.q(objX5);
                    }
                    builder3.a(new LinkAnnotation.Clickable("privacy_policy_link", textLinkStyles3, (LinkInteractionListener) objX5), iV3, length3);
                    annotatedStringI3 = builder3.i();
                    composer17.F();
                } else {
                    composer17.L(-2104753950);
                    composer17.F();
                    annotatedStringI3 = null;
                }
                composer17.F();
                return annotatedStringI3;
            case 20:
                Composer composer18 = (Composer) obj2;
                int iIntValue10 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer18.p(iIntValue10 & 1, (iIntValue10 & 17) != 16)) {
                    OpaqueKey opaqueKey21 = ComposerKt.f7940a;
                    LVDisclaimerKt.a(PaddingKt.k(tr.d("OrderExchangeVariantSelectionScreen$lambda$3$0$0$2", 1.0f), LVAppDesignKitTheme.l(composer18).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), StringResources_androidKt.c(composer18, R.string.exchange_help_banner_description), null, 0L, StringResources_androidKt.c(composer18, R.string.exchange_help_banner_link), this.f381c, composer18, 0, 12);
                } else {
                    composer18.D();
                }
                return Unit.f71739a;
            case 21:
                Composer composer19 = (Composer) obj2;
                int iIntValue11 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer19.p(iIntValue11 & 1, (iIntValue11 & 17) != 16)) {
                    OpaqueKey opaqueKey22 = ComposerKt.f7940a;
                    OrderReturnOrExchangeReasonScreenKt.b(function0, composer19, 0);
                } else {
                    composer19.D();
                }
                return Unit.f71739a;
            case 22:
                PaddingValues paddingValues6 = (PaddingValues) obj;
                Composer composer20 = (Composer) obj2;
                int iIntValue12 = ((Integer) obj3).intValue();
                paddingValues6.getClass();
                if ((iIntValue12 & 6) == 0) {
                    iIntValue12 |= composer20.K(paddingValues6) ? 4 : 2;
                }
                if (composer20.p(iIntValue12 & 1, (iIntValue12 & 19) != 18)) {
                    OpaqueKey opaqueKey23 = ComposerKt.f7940a;
                    String strC4 = StringResources_androidKt.c(composer20, R.string.error_generic);
                    Modifier modifierE = o60.e("PdpErrorScreen$lambda$1", paddingValues6);
                    boolean zK5 = composer20.K(strC4);
                    Object objX6 = composer20.x();
                    if (zK5 || objX6 == composer$Companion$Empty$1) {
                        objX6 = new nj0(strC4, 7);
                        composer20.q(objX6);
                    }
                    LVEmptyViewKt.e(SemanticsModifierKt.b(modifierE, false, (Function1) objX6), null, strC4, null, null, StringResources_androidKt.c(composer20, R.string.button_try_again), this.f381c, composer20, 0, 122);
                } else {
                    composer20.D();
                }
                return Unit.f71739a;
            case 23:
                Composer composer21 = (Composer) obj2;
                ((Integer) obj3).getClass();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey24 = ComposerKt.f7940a;
                Modifier modifierO = new DTFunctionNameModifier("PdpScreen$lambda$7$4").o(SizeKt.f5052c);
                Color.f8866b.getClass();
                Modifier modifierB3 = BackgroundKt.b(modifierO, Color.b(0.85f, Color.f8867c), rectangleShapeKt$RectangleShape$1);
                Object objX7 = composer21.x();
                if (objX7 == composer$Companion$Empty$1) {
                    objX7 = new ul0(6);
                    composer21.q(objX7);
                }
                StoreModeInvalidKt.a(0, composer21, ModifierExtKt.c(modifierB3, false, null, null, (Function0) objX7, 27), function0);
                return Unit.f71739a;
            case 24:
                PaddingValues paddingValues7 = (PaddingValues) obj;
                Composer composer22 = (Composer) obj2;
                int iIntValue13 = ((Integer) obj3).intValue();
                paddingValues7.getClass();
                if ((iIntValue13 & 6) == 0) {
                    iIntValue13 |= composer22.K(paddingValues7) ? 4 : 2;
                }
                if (composer22.p(iIntValue13 & 1, (iIntValue13 & 19) != 18)) {
                    OpaqueKey opaqueKey25 = ComposerKt.f7940a;
                    LVEmptyViewKt.e(ModifierExtKt.e(WindowInsetsPadding_androidKt.b(BackgroundKt.b(o60.e("PersonalSelectionsInStoreErrorScreen$lambda$0", paddingValues7), LVAppDesignKitTheme.c(composer22).f48361b.f48375b, rectangleShapeKt$RectangleShape$1)), "personalSelectionsDetail_error_view"), null, StringResources_androidKt.c(composer22, R.string.loader_error_message_title), StringResources_androidKt.c(composer22, R.string.loader_error_message), null, StringResources_androidKt.c(composer22, R.string.button_try_again), this.f381c, composer22, 0, 114);
                } else {
                    composer22.D();
                }
                return Unit.f71739a;
            case 25:
                PaddingValues paddingValues8 = (PaddingValues) obj;
                Composer composer23 = (Composer) obj2;
                int iIntValue14 = ((Integer) obj3).intValue();
                paddingValues8.getClass();
                if ((iIntValue14 & 6) == 0) {
                    iIntValue14 |= composer23.K(paddingValues8) ? 4 : 2;
                }
                if (composer23.p(iIntValue14 & 1, (iIntValue14 & 19) != 18)) {
                    OpaqueKey opaqueKey26 = ComposerKt.f7940a;
                    LVEmptyViewKt.e(ModifierExtKt.e(WindowInsetsPadding_androidKt.b(BackgroundKt.b(o60.e("PersonalSelectionsErrorScreen$lambda$0", paddingValues8), LVAppDesignKitTheme.c(composer23).f48361b.f48375b, rectangleShapeKt$RectangleShape$1)), "personalSelections_error_view"), null, StringResources_androidKt.c(composer23, R.string.loader_error_message_title), StringResources_androidKt.c(composer23, R.string.loader_error_message), null, StringResources_androidKt.c(composer23, R.string.button_try_again), this.f381c, composer23, 0, 114);
                } else {
                    composer23.D();
                }
                return Unit.f71739a;
            case 26:
                Composer composer24 = (Composer) obj2;
                int iIntValue15 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer24.p(iIntValue15 & 1, (iIntValue15 & 17) != 16)) {
                    OpaqueKey opaqueKey27 = ComposerKt.f7940a;
                    PrivacyConfirmationBottomSheetKt.a(function0, composer24, 0);
                } else {
                    composer24.D();
                }
                return Unit.f71739a;
            case 27:
                Composer composer25 = (Composer) obj2;
                int iIntValue16 = ((Integer) obj3).intValue();
                ((PaddingValues) obj).getClass();
                if (composer25.p(iIntValue16 & 1, (iIntValue16 & 17) != 16)) {
                    OpaqueKey opaqueKey28 = ComposerKt.f7940a;
                    LVEmptyViewKt.e(null, null, StringResources_androidKt.c(composer25, R.string.store_mode_error_generating_personal_qr_code), null, null, StringResources_androidKt.c(composer25, R.string.button_try_again), this.f381c, composer25, 0, 123);
                } else {
                    composer25.D();
                }
                return Unit.f71739a;
            case 28:
                Composer composer26 = (Composer) obj2;
                int iIntValue17 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer26.p(iIntValue17 & 1, (iIntValue17 & 17) != 16)) {
                    OpaqueKey opaqueKey29 = ComposerKt.f7940a;
                    CareServicePromotionCardKt.a(0, composer26, PaddingKt.m(new DTFunctionNameModifier("RepairListBffScreen$lambda$2$0$0$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer26).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), function0);
                } else {
                    composer26.D();
                }
                return Unit.f71739a;
            default:
                Composer composer27 = (Composer) obj2;
                int iIntValue18 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer27.p(iIntValue18 & 1, (iIntValue18 & 17) != 16)) {
                    OpaqueKey opaqueKey30 = ComposerKt.f7940a;
                    CareServicePromotionCardKt.a(0, composer27, PaddingKt.m(new DTFunctionNameModifier("RepairListScreen$lambda$2$0$0$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer27).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), function0);
                } else {
                    composer27.D();
                }
                return Unit.f71739a;
        }
    }
}
