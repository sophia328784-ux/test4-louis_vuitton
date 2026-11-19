package defpackage;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.contextmenu.ComposableSingletons$ContextMenuUiKt;
import androidx.compose.foundation.contextmenu.ContextMenuColors;
import androidx.compose.foundation.contextmenu.ContextMenuSpec;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.FillElement;
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
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ContentScale$Companion$Crop$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonGroupKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVSkeletonKt;
import com.vuitton.android.designkit.ui.theme.templates.LVEmptyViewKt;
import com.vuitton.android.presentation.common.editorial.components.carousels.CarouselSKt;
import com.vuitton.android.presentation.common.editorial.components.carousels.ComposableSingletons$CarouselSKt;
import com.vuitton.android.presentation.common.editorial.models.EditorialMocksKt;
import com.vuitton.android.presentation.compose.components.ComposableSingletons$CollapsingDetailListKt;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.contact.compose.ComposableSingletons$ContactUsBottomSheetKt;
import com.vuitton.android.presentation.contact.compose.TermsAndConditionsBottomSheetKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.screen.booking.confirmation.components.ComposableSingletons$BookingConfirmationScreenKt;
import com.vuitton.android.presentation.screen.booking.form.components.ComposableSingletons$BookingReservationScreenKt;
import com.vuitton.android.presentation.screen.booking.form.components.module.BookingLoadingModuleKt;
import com.vuitton.android.presentation.screen.booking.form.components.module.BookingLoadingModuleType;
import com.vuitton.android.presentation.screen.booking.form.components.module.BookingModuleSkeletonDefaults;
import com.vuitton.android.presentation.screen.booking.form.components.module.ComposableSingletons$BookingModuleGridKt;
import com.vuitton.android.presentation.screen.booking.form.components.module.ComposableSingletons$BookingModuleHeaderKt;
import com.vuitton.android.presentation.screen.booking.summary.components.ComposableSingletons$BookingSummaryScreenKt;
import com.vuitton.android.presentation.screen.catalog.components.ComposableSingletons$CatalogSubcategoryBottomSheetContentKt;
import com.vuitton.android.presentation.screen.certificates.components.list.ComposableSingletons$CertificateLoadingScreenKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.ComposableSingletons$DistantRepairFormBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.ComposableSingletons$DistantRepairFormComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.ComposableSingletons$DistantRepairBottomSheetDatePickerKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.components.ComposableSingletons$ContextualSizingScreenKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PanelInfoHtmlItem;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PanelInfoNativeItem;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PanelInfoSectionsItem;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.ComposableSingletons$BeautyVtoActivityKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyVtoLoadingScreenKt;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.components.ComposableSingletons$CancellationReasonsErrorScreenKt;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.components.ComposableSingletons$CancellationReasonsLoadingScreenKt;
import com.vuitton.android.presentation.screen.storemode.components.CreateWishlistCardKt;
import com.vuitton.android.presentation.screen.storemode.components.catalog.ComposableSingletons$CatalogStoreModeKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class mn implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76326b;

    public /* synthetic */ mn(int i2) {
        this.f76326b = i2;
    }

    private final Object a(Object obj, Object obj2, Object obj3) {
        Function0 function0;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ComposableSingletons$DistantRepairFormBottomSheetScreenKt composableSingletons$DistantRepairFormBottomSheetScreenKt = ComposableSingletons$DistantRepairFormBottomSheetScreenKt.f57210a;
        ((ColumnScope) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("lambda__186397601$lambda$0");
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierD = ScrollKt.d(SizeKt.g(dTFunctionNameModifier, 480.0f, 550.0f), ScrollKt.b(composer), false, 14);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, composer, 0);
            int iHashCode = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
            Modifier modifierC = ComposedModifierKt.c(composer, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (composer.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer.B();
            if (composer.getS()) {
                composer.C(function1);
            } else {
                composer.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(composer, columnMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(composer, persistentCompositionLocalMapN, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(composer, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(composer, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            Modifier modifierI = PaddingKt.i(a.f(composer, modifierC, function6, "lambda__186397601$lambda$0"), LVAppDesignKitTheme.l(composer).f48416e);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, composer, 0);
            int iHashCode2 = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer.n();
            Modifier modifierC2 = ComposedModifierKt.c(composer, modifierI);
            if (composer.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer.B();
            if (composer.getS()) {
                composer.C(function1);
            } else {
                composer.o();
            }
            Updater.c(composer, columnMeasurePolicyA2, function2);
            Updater.c(composer, persistentCompositionLocalMapN2, function3);
            cj.s(iHashCode2, composer, function4, composer, function5);
            TextKt.c(StringResources_androidKt.c(composer, R.string.dr_title_front), PaddingKt.m(a.f(composer, modifierC2, function6, "lambda__186397601$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48415c, 7), LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).f48429j, composer, 0, 0, 131064);
            TextKt.c(StringResources_androidKt.c(composer, R.string.dr_how_picture_front), null, LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).f48427h, composer, 0, 0, 131066);
            composer.r();
            ImageKt.a(PainterResources_androidKt.a(2131230933, composer, 0), StringResources_androidKt.c(composer, R.string.dr_title_front), SizeKt.d(new DTFunctionNameModifier("lambda__186397601$lambda$0"), 1.0f), null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, composer, 392, 120);
            SpacerKt.a(composer, SizeKt.f(new DTFunctionNameModifier("lambda__186397601$lambda$0"), LVAppDesignKitTheme.l(composer).f48417f));
            Modifier modifierI2 = PaddingKt.i(new DTFunctionNameModifier("lambda__186397601$lambda$0"), LVAppDesignKitTheme.l(composer).f48416e);
            ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(arrangement$Top$1, horizontal, composer, 0);
            int iHashCode3 = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer.n();
            Modifier modifierC3 = ComposedModifierKt.c(composer, modifierI2);
            if (composer.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer.B();
            if (composer.getS()) {
                function0 = function1;
                composer.C(function0);
            } else {
                function0 = function1;
                composer.o();
            }
            Updater.c(composer, columnMeasurePolicyA3, function2);
            Updater.c(composer, persistentCompositionLocalMapN3, function3);
            cj.s(iHashCode3, composer, function4, composer, function5);
            Function0 function7 = function0;
            TextKt.c(StringResources_androidKt.c(composer, R.string.dr_title_interior), PaddingKt.m(a.f(composer, modifierC3, function6, "lambda__186397601$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48415c, 7), LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).f48429j, composer, 0, 0, 131064);
            TextKt.c(StringResources_androidKt.c(composer, R.string.dr_text_interior), null, LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).f48427h, composer, 0, 0, 131066);
            composer.r();
            Modifier modifierD2 = SizeKt.d(new DTFunctionNameModifier("lambda__186397601$lambda$0"), 1.0f);
            Painter painterA = PainterResources_androidKt.a(2131230934, composer, 0);
            ContentScale.f9447a.getClass();
            ContentScale$Companion$Crop$1 contentScale$Companion$Crop$1 = ContentScale.Companion.f9449b;
            ImageKt.a(painterA, StringResources_androidKt.c(composer, R.string.dr_title_interior), modifierD2, null, contentScale$Companion$Crop$1, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, composer, 24968, 104);
            SpacerKt.a(composer, SizeKt.f(new DTFunctionNameModifier("lambda__186397601$lambda$0"), LVAppDesignKitTheme.l(composer).f48417f));
            Modifier modifierI3 = PaddingKt.i(new DTFunctionNameModifier("lambda__186397601$lambda$0"), LVAppDesignKitTheme.l(composer).f48416e);
            ColumnMeasurePolicy columnMeasurePolicyA4 = ColumnKt.a(arrangement$Top$1, horizontal, composer, 0);
            int iHashCode4 = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer.n();
            Modifier modifierC4 = ComposedModifierKt.c(composer, modifierI3);
            if (composer.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer.B();
            if (composer.getS()) {
                composer.C(function7);
            } else {
                composer.o();
            }
            Updater.c(composer, columnMeasurePolicyA4, function2);
            Updater.c(composer, persistentCompositionLocalMapN4, function3);
            cj.s(iHashCode4, composer, function4, composer, function5);
            TextKt.c(StringResources_androidKt.c(composer, R.string.dr_title_closeup), PaddingKt.m(a.f(composer, modifierC4, function6, "lambda__186397601$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48415c, 7), LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).f48429j, composer, 0, 0, 131064);
            TextKt.c(StringResources_androidKt.c(composer, R.string.dr_text_closeup), null, LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).f48427h, composer, 0, 0, 131066);
            composer.r();
            ImageKt.a(PainterResources_androidKt.a(2131230932, composer, 0), StringResources_androidKt.c(composer, R.string.dr_title_closeup), SizeKt.d(new DTFunctionNameModifier("lambda__186397601$lambda$0"), 1.0f), null, contentScale$Companion$Crop$1, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, composer, 24968, 104);
            composer.r();
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f76326b;
        int i3 = 3;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        int i4 = 2;
        switch (i2) {
            case 0:
                ((Integer) obj3).intValue();
                ComposableSingletons$BeautyVtoActivityKt composableSingletons$BeautyVtoActivityKt = ComposableSingletons$BeautyVtoActivityKt.f61964a;
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                BeautyVtoLoadingScreenKt.a((Composer) obj2, 0);
                return Unit.f71739a;
            case 1:
                Composer composer = (Composer) obj2;
                ((Integer) obj3).getClass();
                ComposableSingletons$BookingConfirmationScreenKt composableSingletons$BookingConfirmationScreenKt = ComposableSingletons$BookingConfirmationScreenKt.f54387a;
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("lambda_1772482991$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48420j, 5);
                String strC = StringResources_androidKt.c(composer, R.string.booking_confirmation_thank_you_description);
                TextStyle textStyle = LVAppDesignKitTheme.n(composer).g;
                long j2 = LVAppDesignKitTheme.c(composer).f48361b.f48382k;
                TextAlign.f10959b.getClass();
                TextKt.c(strC, modifierM, j2, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle, composer, 0, 0, 130040);
                return Unit.f71739a;
            case 2:
                ((Integer) obj).getClass();
                Composer composer2 = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ComposableSingletons$BookingModuleGridKt composableSingletons$BookingModuleGridKt = ComposableSingletons$BookingModuleGridKt.f54488a;
                if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    LVSkeletonKt.b(SizeKt.f(ClipKt.a(tr.d("lambda_683547454$lambda$0", 1.0f), LVAppDesignKitTheme.j(composer2).f48410b), BookingModuleSkeletonDefaults.f54486a), null, null, composer2, 0, 6);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 3:
                String str = (String) obj;
                Composer composer3 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ComposableSingletons$BookingModuleGridKt composableSingletons$BookingModuleGridKt2 = ComposableSingletons$BookingModuleGridKt.f54488a;
                str.getClass();
                if ((iIntValue2 & 6) == 0) {
                    iIntValue2 |= composer3.K(str) ? 4 : 2;
                }
                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 19) != 18)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    Modifier modifierD = tr.d("lambda__538250134$lambda$0", 1.0f);
                    Object objX = composer3.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new nn(i4);
                        composer3.q(objX);
                    }
                    LVButtonGroupKt.a(modifierD, str, false, true, null, (Function0) objX, composer3, ((iIntValue2 << 3) & 112) | 200070, 16);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 4:
                String str2 = (String) obj;
                Composer composer4 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                ComposableSingletons$BookingModuleHeaderKt composableSingletons$BookingModuleHeaderKt = ComposableSingletons$BookingModuleHeaderKt.f54491a;
                if ((iIntValue3 & 6) == 0) {
                    iIntValue3 |= composer4.K(str2) ? 4 : 2;
                }
                if (composer4.p(iIntValue3 & 1, (iIntValue3 & 19) != 18)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    if (str2 == null) {
                        composer4.L(-1399276468);
                        composer4.F();
                    } else {
                        TextKt.c(str2, PaddingKt.m(pq0.j(-1399276467, composer4, "lambda__1390422071$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer4).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(composer4).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer4).f48428i, composer4, 0, 0, 131064);
                        composer4.F();
                    }
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 5:
                Composer composer5 = (Composer) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt = ComposableSingletons$BookingReservationScreenKt.f54474a;
                ((LazyItemScope) obj).getClass();
                if (composer5.p(iIntValue4 & 1, (iIntValue4 & 17) != 16)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    BookingLoadingModuleKt.a(PaddingKt.k(new DTFunctionNameModifier("lambda_2143189118$lambda$0"), LVAppDesignKitTheme.l(composer5).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), BookingLoadingModuleType.DEFAULT, composer5, 48);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 6:
                Composer composer6 = (Composer) obj2;
                int iIntValue5 = ((Integer) obj3).intValue();
                ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt2 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                ((LazyItemScope) obj).getClass();
                if (composer6.p(iIntValue5 & 1, (iIntValue5 & 17) != 16)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    BookingLoadingModuleKt.a(PaddingKt.k(new DTFunctionNameModifier("lambda_553992359$lambda$0"), LVAppDesignKitTheme.l(composer6).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), BookingLoadingModuleType.CALENDAR, composer6, 48);
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 7:
                Composer composer7 = (Composer) obj2;
                int iIntValue6 = ((Integer) obj3).intValue();
                ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt3 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                ((LazyItemScope) obj).getClass();
                if (composer7.p(iIntValue6 & 1, (iIntValue6 & 17) != 16)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    SpacerKt.a(composer7, PaddingKt.m(new DTFunctionNameModifier("lambda_1771389387$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer7).f48416e, 7));
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 8:
                Composer composer8 = (Composer) obj2;
                int iIntValue7 = ((Integer) obj3).intValue();
                ComposableSingletons$BookingSummaryScreenKt composableSingletons$BookingSummaryScreenKt = ComposableSingletons$BookingSummaryScreenKt.f54796a;
                ((LazyItemScope) obj).getClass();
                if (composer8.p(iIntValue7 & 1, (iIntValue7 & 17) != 16)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    Modifier modifierK = PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("lambda__1890645029$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer8).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer8).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    Object objX2 = composer8.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new km(28);
                        composer8.q(objX2);
                    }
                    TextKt.c(StringResources_androidKt.c(composer8, R.string.booking_extend_your_experience_title), SemanticsModifierKt.b(modifierK, false, (Function1) objX2), LVAppDesignKitTheme.c(composer8).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer8).f48426f, composer8, 0, 0, 131064);
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 9:
                Composer composer9 = (Composer) obj2;
                int iIntValue8 = ((Integer) obj3).intValue();
                ComposableSingletons$BookingSummaryScreenKt composableSingletons$BookingSummaryScreenKt2 = ComposableSingletons$BookingSummaryScreenKt.f54796a;
                ((LazyItemScope) obj).getClass();
                if (composer9.p(iIntValue8 & 1, (iIntValue8 & 17) != 16)) {
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    SpacerKt.a(composer9, SizeKt.f(new DTFunctionNameModifier("lambda__1993672832$lambda$0"), LVAppDesignKitTheme.d(composer9).m));
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
            case 10:
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer10 = (Composer) obj2;
                int iIntValue9 = ((Integer) obj3).intValue();
                ComposableSingletons$CancellationReasonsErrorScreenKt composableSingletons$CancellationReasonsErrorScreenKt = ComposableSingletons$CancellationReasonsErrorScreenKt.f63622a;
                paddingValues.getClass();
                if ((iIntValue9 & 6) == 0) {
                    iIntValue9 |= composer10.K(paddingValues) ? 4 : 2;
                }
                if (composer10.p(iIntValue9 & 1, (iIntValue9 & 19) != 18)) {
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    LVEmptyViewKt.e(o60.e("lambda__650225343$lambda$0", paddingValues), null, StringResources_androidKt.c(composer10, R.string.error_generic), null, null, null, null, composer10, 0, 506);
                } else {
                    composer10.D();
                }
                return Unit.f71739a;
            case 11:
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer11 = (Composer) obj2;
                int iIntValue10 = ((Integer) obj3).intValue();
                ComposableSingletons$CancellationReasonsLoadingScreenKt composableSingletons$CancellationReasonsLoadingScreenKt = ComposableSingletons$CancellationReasonsLoadingScreenKt.f63625a;
                paddingValues2.getClass();
                if ((iIntValue10 & 6) == 0) {
                    iIntValue10 |= composer11.K(paddingValues2) ? 4 : 2;
                }
                if (composer11.p(iIntValue10 & 1, (iIntValue10 & 19) != 18)) {
                    OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                    ProgressViewKt.a(PaddingKt.h(new DTFunctionNameModifier("lambda__735001063$lambda$0").o(SizeKt.f5052c), paddingValues2), 0L, false, composer11, 0, 6);
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
            case 12:
                Composer composer12 = (Composer) obj2;
                int iIntValue11 = ((Integer) obj3).intValue();
                ComposableSingletons$CarouselSKt composableSingletons$CarouselSKt = ComposableSingletons$CarouselSKt.f50753a;
                ((LazyItemScope) obj).getClass();
                if (composer12.p(iIntValue11 & 1, (iIntValue11 & 17) != 16)) {
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                    List list = (List) EditorialMocksKt.f50802b.getF71699b();
                    LVColorScheme lVColorScheme = LVColorScheme.DEFAULT;
                    float f2 = LVAppDesignKitTheme.l(composer12).f48416e;
                    Object objX3 = composer12.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new pn(i3);
                        composer12.q(objX3);
                    }
                    Function2 function2 = (Function2) objX3;
                    Object objX4 = composer12.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new nn(23);
                        composer12.q(objX4);
                    }
                    CarouselSKt.a(null, "Last Viewed Products", null, null, list, false, false, lVColorScheme, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, true, function2, null, (Function0) objX4, null, composer12, 14155824, 25008, 42541);
                } else {
                    composer12.D();
                }
                return Unit.f71739a;
            case 13:
                Composer composer13 = (Composer) obj2;
                int iIntValue12 = ((Integer) obj3).intValue();
                ComposableSingletons$CarouselSKt composableSingletons$CarouselSKt2 = ComposableSingletons$CarouselSKt.f50753a;
                ((LazyItemScope) obj).getClass();
                if (composer13.p(iIntValue12 & 1, (iIntValue12 & 17) != 16)) {
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                    Modifier modifierB = BackgroundKt.b(new DTFunctionNameModifier("lambda__1452516320$lambda$0"), LVAppDesignKitTheme.c(composer13).f48361b.f48382k, rectangleShapeKt$RectangleShape$1);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode = Long.hashCode(composer13.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer13.n();
                    Modifier modifierC = ComposedModifierKt.c(composer13, modifierB);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer13.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer13.B();
                    if (composer13.getS()) {
                        composer13.C(function0);
                    } else {
                        composer13.o();
                    }
                    Updater.c(composer13, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer13, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer13, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer13, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer13, modifierC, ComposeUiNode.Companion.d);
                    List list2 = (List) EditorialMocksKt.f50802b.getF71699b();
                    LVColorScheme lVColorScheme2 = LVColorScheme.INVERT;
                    float f3 = LVAppDesignKitTheme.l(composer13).f48416e;
                    Object objX5 = composer13.x();
                    if (objX5 == composer$Companion$Empty$1) {
                        objX5 = new pn(6);
                        composer13.q(objX5);
                    }
                    Function2 function3 = (Function2) objX5;
                    Object objX6 = composer13.x();
                    if (objX6 == composer$Companion$Empty$1) {
                        objX6 = new nn(21);
                        composer13.q(objX6);
                    }
                    Function0 function1 = (Function0) objX6;
                    Object objX7 = composer13.x();
                    if (objX7 == composer$Companion$Empty$1) {
                        objX7 = new nn(22);
                        composer13.q(objX7);
                    }
                    CarouselSKt.a(null, "Last Viewed Products", null, null, list2, false, true, lVColorScheme2, f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, true, function3, function1, (Function0) objX7, null, composer13, 14155824, 28080, 34349);
                    composer13.r();
                } else {
                    composer13.D();
                }
                return Unit.f71739a;
            case 14:
                Composer composer14 = (Composer) obj2;
                int iIntValue13 = ((Integer) obj3).intValue();
                ComposableSingletons$CarouselSKt composableSingletons$CarouselSKt3 = ComposableSingletons$CarouselSKt.f50753a;
                ((LazyItemScope) obj).getClass();
                if (composer14.p(iIntValue13 & 1, (iIntValue13 & 17) != 16)) {
                    OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                    AssetImageUiModel assetImageUiModel = new AssetImageUiModel("image.jpg", null, null, 6, null);
                    List list3 = (List) EditorialMocksKt.f50802b.getF71699b();
                    LVColorScheme lVColorScheme3 = LVColorScheme.DEFAULT;
                    float f4 = LVAppDesignKitTheme.l(composer14).f48416e;
                    Object objX8 = composer14.x();
                    if (objX8 == composer$Companion$Empty$1) {
                        objX8 = new pn(5);
                        composer14.q(objX8);
                    }
                    Function2 function4 = (Function2) objX8;
                    Object objX9 = composer14.x();
                    if (objX9 == composer$Companion$Empty$1) {
                        objX9 = new nn(24);
                        composer14.q(objX9);
                    }
                    Function0 function5 = (Function0) objX9;
                    Object objX10 = composer14.x();
                    if (objX10 == composer$Companion$Empty$1) {
                        objX10 = new nn(25);
                        composer14.q(objX10);
                    }
                    CarouselSKt.a(null, "Category", "Articles for you", assetImageUiModel, list3, false, false, lVColorScheme3, f4, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, true, function4, function5, (Function0) objX10, null, composer14, 14156208, 28086, 33313);
                } else {
                    composer14.D();
                }
                return Unit.f71739a;
            case 15:
                Composer composer15 = (Composer) obj2;
                int iIntValue14 = ((Integer) obj3).intValue();
                ComposableSingletons$CatalogStoreModeKt composableSingletons$CatalogStoreModeKt = ComposableSingletons$CatalogStoreModeKt.f64862a;
                ((LazyItemScope) obj).getClass();
                if (composer15.p(iIntValue14 & 1, (iIntValue14 & 17) != 16)) {
                    OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                    CreateWishlistCardKt.a(composer15, 0);
                } else {
                    composer15.D();
                }
                return Unit.f71739a;
            case 16:
                Composer composer16 = (Composer) obj2;
                int iIntValue15 = ((Integer) obj3).intValue();
                ComposableSingletons$CatalogSubcategoryBottomSheetContentKt composableSingletons$CatalogSubcategoryBottomSheetContentKt = ComposableSingletons$CatalogSubcategoryBottomSheetContentKt.f55305a;
                ((LazyItemScope) obj).getClass();
                if (composer16.p(iIntValue15 & 1, (iIntValue15 & 17) != 16)) {
                    OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                    SpacerKt.a(composer16, SizeKt.f(new DTFunctionNameModifier("lambda__943960022$lambda$0"), LVAppDesignKitTheme.l(composer16).g));
                } else {
                    composer16.D();
                }
                return Unit.f71739a;
            case 17:
                PaddingValues paddingValues3 = (PaddingValues) obj;
                Composer composer17 = (Composer) obj2;
                int iIntValue16 = ((Integer) obj3).intValue();
                ComposableSingletons$CertificateLoadingScreenKt composableSingletons$CertificateLoadingScreenKt = ComposableSingletons$CertificateLoadingScreenKt.f55714a;
                paddingValues3.getClass();
                if ((iIntValue16 & 6) == 0) {
                    iIntValue16 |= composer17.K(paddingValues3) ? 4 : 2;
                }
                if (composer17.p(iIntValue16 & 1, (iIntValue16 & 19) != 18)) {
                    OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("lambda_660535947$lambda$0");
                    FillElement fillElement = SizeKt.f5052c;
                    Modifier modifierH = PaddingKt.h(BackgroundKt.b(dTFunctionNameModifier.o(fillElement), LVAppDesignKitTheme.c(composer17).f48361b.f48375b, rectangleShapeKt$RectangleShape$1), paddingValues3);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode2 = Long.hashCode(composer17.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer17.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer17, modifierH);
                    ComposeUiNode.b0.getClass();
                    Function0 function6 = ComposeUiNode.Companion.f9641b;
                    if (composer17.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer17.B();
                    if (composer17.getS()) {
                        composer17.C(function6);
                    } else {
                        composer17.o();
                    }
                    Updater.c(composer17, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer17, persistentCompositionLocalMapN2, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer17, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                    Updater.b(composer17, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer17, modifierC2, ComposeUiNode.Companion.d);
                    ProgressViewKt.a(new DTFunctionNameModifier("lambda_660535947$lambda$0").o(fillElement), 0L, false, composer17, 6, 6);
                    composer17.r();
                } else {
                    composer17.D();
                }
                return Unit.f71739a;
            case 18:
                Composer composer18 = (Composer) obj2;
                int iIntValue17 = ((Integer) obj3).intValue();
                ComposableSingletons$CollapsingDetailListKt composableSingletons$CollapsingDetailListKt = ComposableSingletons$CollapsingDetailListKt.f50943a;
                ((PanelInfoHtmlItem) obj).getClass();
                if (composer18.p(iIntValue17 & 1, (iIntValue17 & 17) != 16)) {
                    OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                } else {
                    composer18.D();
                }
                return Unit.f71739a;
            case 19:
                ((Integer) obj3).intValue();
                ComposableSingletons$CollapsingDetailListKt composableSingletons$CollapsingDetailListKt2 = ComposableSingletons$CollapsingDetailListKt.f50943a;
                ((PanelInfoNativeItem) obj).getClass();
                OpaqueKey opaqueKey20 = ComposerKt.f7940a;
                return Unit.f71739a;
            case 20:
                ((Integer) obj3).intValue();
                ComposableSingletons$CollapsingDetailListKt composableSingletons$CollapsingDetailListKt3 = ComposableSingletons$CollapsingDetailListKt.f50943a;
                ((PanelInfoSectionsItem) obj).getClass();
                OpaqueKey opaqueKey21 = ComposerKt.f7940a;
                return Unit.f71739a;
            case 21:
                PanelInfoHtmlItem panelInfoHtmlItem = (PanelInfoHtmlItem) obj;
                Composer composer19 = (Composer) obj2;
                int iIntValue18 = ((Integer) obj3).intValue();
                ComposableSingletons$CollapsingDetailListKt composableSingletons$CollapsingDetailListKt4 = ComposableSingletons$CollapsingDetailListKt.f50943a;
                panelInfoHtmlItem.getClass();
                if ((iIntValue18 & 6) == 0) {
                    iIntValue18 |= composer19.K(panelInfoHtmlItem) ? 4 : 2;
                }
                if (composer19.p(iIntValue18 & 1, (iIntValue18 & 19) != 18)) {
                    OpaqueKey opaqueKey22 = ComposerKt.f7940a;
                    TextKt.c(panelInfoHtmlItem.f61707e, null, 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer19, 0, 0, 262142);
                } else {
                    composer19.D();
                }
                return Unit.f71739a;
            case 22:
                ((Integer) obj3).intValue();
                ComposableSingletons$CollapsingDetailListKt composableSingletons$CollapsingDetailListKt5 = ComposableSingletons$CollapsingDetailListKt.f50943a;
                ((PanelInfoNativeItem) obj).getClass();
                OpaqueKey opaqueKey23 = ComposerKt.f7940a;
                return Unit.f71739a;
            case 23:
                Composer composer20 = (Composer) obj2;
                int iIntValue19 = ((Integer) obj3).intValue();
                ComposableSingletons$ContactUsBottomSheetKt composableSingletons$ContactUsBottomSheetKt = ComposableSingletons$ContactUsBottomSheetKt.f51126a;
                ((ColumnScope) obj).getClass();
                if (composer20.p(iIntValue19 & 1, (iIntValue19 & 17) != 16)) {
                    OpaqueKey opaqueKey24 = ComposerKt.f7940a;
                    TermsAndConditionsBottomSheetKt.a(null, composer20, 0);
                } else {
                    composer20.D();
                }
                return Unit.f71739a;
            case 24:
                ContextMenuColors contextMenuColors = (ContextMenuColors) obj;
                Composer composer21 = (Composer) obj2;
                int iIntValue20 = ((Integer) obj3).intValue();
                ComposableSingletons$ContextMenuUiKt composableSingletons$ContextMenuUiKt = ComposableSingletons$ContextMenuUiKt.f4313a;
                if ((iIntValue20 & 6) == 0) {
                    iIntValue20 |= composer21.K(contextMenuColors) ? 4 : 2;
                }
                if (composer21.p(iIntValue20 & 1, (iIntValue20 & 19) != 18)) {
                    OpaqueKey opaqueKey25 = ComposerKt.f7940a;
                    BoxKt.a(BackgroundKt.b(SizeKt.f(SizeKt.d(PaddingKt.k(new DTFunctionNameModifier("lambda__1455401925$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, ContextMenuSpec.l, 1), 1.0f), ContextMenuSpec.f4332k), contextMenuColors.f4318c, rectangleShapeKt$RectangleShape$1), composer21, 0);
                } else {
                    composer21.D();
                }
                return Unit.f71739a;
            case 25:
                String str3 = (String) obj;
                Composer composer22 = (Composer) obj2;
                int iIntValue21 = ((Integer) obj3).intValue();
                ComposableSingletons$ContextualSizingScreenKt composableSingletons$ContextualSizingScreenKt = ComposableSingletons$ContextualSizingScreenKt.f61483a;
                str3.getClass();
                if ((iIntValue21 & 6) == 0) {
                    iIntValue21 |= composer22.K(str3) ? 4 : 2;
                }
                if (composer22.p(iIntValue21 & 1, (iIntValue21 & 19) != 18)) {
                    OpaqueKey opaqueKey26 = ComposerKt.f7940a;
                    TextStyle textStyle2 = LVAppDesignKitTheme.n(composer22).f48426f;
                    long j3 = LVAppDesignKitTheme.c(composer22).f48361b.f48382k;
                    TextAlign.f10959b.getClass();
                    TextKt.c(str3, tr.d("lambda__1183268825$lambda$0", 1.0f), j3, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle2, composer22, (iIntValue21 & 14) | 48, 0, 130040);
                } else {
                    composer22.D();
                }
                return Unit.f71739a;
            case 26:
                Composer composer23 = (Composer) obj2;
                int iIntValue22 = ((Integer) obj3).intValue();
                ComposableSingletons$DistantRepairBottomSheetDatePickerKt composableSingletons$DistantRepairBottomSheetDatePickerKt = ComposableSingletons$DistantRepairBottomSheetDatePickerKt.f57290a;
                ((LazyItemScope) obj).getClass();
                if (composer23.p(iIntValue22 & 1, (iIntValue22 & 17) != 16)) {
                    OpaqueKey opaqueKey27 = ComposerKt.f7940a;
                    SpacerKt.a(composer23, SizeKt.s(new DTFunctionNameModifier("lambda__1949640990$lambda$0"), LVAppDesignKitTheme.l(composer23).f48416e));
                } else {
                    composer23.D();
                }
                return Unit.f71739a;
            case 27:
                return a(obj, obj2, obj3);
            case 28:
                Composer composer24 = (Composer) obj2;
                int iIntValue23 = ((Integer) obj3).intValue();
                ComposableSingletons$DistantRepairFormComponentKt composableSingletons$DistantRepairFormComponentKt = ComposableSingletons$DistantRepairFormComponentKt.f57212a;
                ((LazyItemScope) obj).getClass();
                if (composer24.p(iIntValue23 & 1, (iIntValue23 & 17) != 16)) {
                    OpaqueKey opaqueKey28 = ComposerKt.f7940a;
                    SpacerKt.a(composer24, SizeKt.f(new DTFunctionNameModifier("lambda__1373714529$lambda$0"), LVAppDesignKitTheme.l(composer24).f48417f));
                } else {
                    composer24.D();
                }
                return Unit.f71739a;
            default:
                ComposableSingletons$DistantRepairFormComponentKt composableSingletons$DistantRepairFormComponentKt2 = ComposableSingletons$DistantRepairFormComponentKt.f57212a;
                ((String) obj3).getClass();
                return Unit.f71739a;
        }
    }
}
