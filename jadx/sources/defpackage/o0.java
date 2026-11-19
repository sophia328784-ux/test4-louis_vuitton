package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.FloatingTopBarStyle;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.FloatingTopBarType;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVFloatingTopBarKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.presentation.screen.account.addressbook.components.AddressBookComposableKt;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.AudioGuideBeforeStartBottomSheetKt;
import com.vuitton.android.presentation.screen.booking.confirmation.components.BookingConfirmationScreenKt;
import com.vuitton.android.presentation.screen.catalog.components.ComposableSingletons$CatalogSubcategoryScreenKt;
import com.vuitton.android.presentation.screen.certificates.components.add.AddCertificateComposableKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentBffScreenKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentScreenKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormScreenKt;
import com.vuitton.android.presentation.screen.onboarding.components.ConfirmPreferenceIconsBottomKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyDualColorComparatorKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyVtoScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class o0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76652b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f76653c;

    public /* synthetic */ o0(int i2, int i3, Function0 function0) {
        this.f76652b = i3;
        this.f76653c = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76652b;
        Function0 function0 = this.f76653c;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(1 & iIntValue, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    LVFloatingTopBarKt.a(null, FloatingTopBarType.Back, FloatingTopBarStyle.Secondary, null, StringResources_androidKt.c(composer, R.string.alt_close), this.f76653c, null, null, composer, 432, 201);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    AddCertificateComposableKt.k(R.string.certificate_activation_picto_title, 0, composer2, ModifierExtKt.e(FocusableKt.c(PaddingKt.k(new DTFunctionNameModifier("individualNumberRawInfoField$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48416e, 1), null, 2), "certificateAdd_individualNumberHelper_text"), function0);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 2:
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                if (composer3.p(1 & iIntValue3, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    AddCertificateComposableKt.k(R.string.certificate_activation_picto2_title, 0, composer3, ModifierExtKt.e(FocusableKt.c(PaddingKt.m(new DTFunctionNameModifier("buyerNameRawInfoField$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), null, 2), "certificateAdd_activationCodeHelper_text"), function0);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 3:
                Composer composer4 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                if (composer4.p(1 & iIntValue4, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer4, R.string.my_certificate_title), null, null, this.f76653c, null, null, null, null, composer4, 0, 0, 4023);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 4:
                ((Integer) obj2).getClass();
                AddressBookComposableKt.b(function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 5:
                Composer composer5 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                if (composer5.p(1 & iIntValue5, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    Modifier modifierB = WindowInsetsPadding_androidKt.b(BackgroundKt.b(new DTFunctionNameModifier("AddressBookScreen$lambda$0"), LVAppDesignKitTheme.c(composer5).f48361b.f48374a, RectangleShapeKt.f8913a));
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode = Long.hashCode(composer5.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer5.n();
                    Modifier modifierC = ComposedModifierKt.c(composer5, modifierB);
                    ComposeUiNode.b0.getClass();
                    Function0 function1 = ComposeUiNode.Companion.f9641b;
                    if (composer5.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer5.B();
                    if (composer5.getS()) {
                        composer5.C(function1);
                    } else {
                        composer5.o();
                    }
                    Updater.c(composer5, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer5, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer5, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer5, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer5, modifierC, ComposeUiNode.Companion.d);
                    LVButtonKt.b(0, 504, composer5, ModifierExtKt.e(PaddingKt.l(tr.d("AddressBookScreen$lambda$0", 1.0f), LVAppDesignKitTheme.l(composer5).f48416e, LVAppDesignKitTheme.l(composer5).f48415c, LVAppDesignKitTheme.l(composer5).f48416e, LVAppDesignKitTheme.l(composer5).f48417f), "addressBook_addAddress_button"), LVAppDesignKitTheme.b(composer5).f48446a, null, null, StringResources_androidKt.c(composer5, R.string.mylv_myprofile_addressbookbrick_addanaddress), this.f76653c, false, false, false);
                    composer5.r();
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 6:
                Composer composer6 = (Composer) obj;
                int iIntValue6 = ((Integer) obj2).intValue();
                if (composer6.p(1 & iIntValue6, (iIntValue6 & 3) != 2)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer6, R.string.title_app_info), null, null, this.f76653c, null, null, null, null, composer6, 0, 0, 4023);
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 7:
                ((Integer) obj2).getClass();
                AssessmentBffScreenKt.b(function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 8:
                Composer composer7 = (Composer) obj;
                int iIntValue7 = ((Integer) obj2).intValue();
                if (composer7.p(1 & iIntValue7, (iIntValue7 & 3) != 2)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer7, R.string.dr_screen_title), null, null, this.f76653c, null, null, null, null, composer7, 0, 0, 4023);
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 9:
                ((Integer) obj2).getClass();
                AssessmentScreenKt.b(function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 10:
                ((Integer) obj2).getClass();
                AudioGuideBeforeStartBottomSheetKt.a(function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 11:
                Composer composer8 = (Composer) obj;
                int iIntValue8 = ((Integer) obj2).intValue();
                float f2 = BeautyDualColorComparatorKt.f62002a;
                if (composer8.p(1 & iIntValue8, (iIntValue8 & 3) != 2)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    BeautyDualColorComparatorKt.f(function0, composer8, 0);
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 12:
                Composer composer9 = (Composer) obj;
                ((Integer) obj2).getClass();
                float f3 = BeautyDualColorComparatorKt.f62002a;
                composer9.L(1069644829);
                OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("BeautyDualColorItem$lambda$1");
                boolean zK = composer9.K(function0);
                Object objX = composer9.x();
                if (zK || objX == Composer.Companion.f7939a) {
                    objX = new h1(function0, 15);
                    composer9.q(objX);
                }
                Modifier modifierC2 = ModifierExtKt.c(dTFunctionNameModifier, false, null, null, (Function0) objX, 31);
                composer9.F();
                return modifierC2;
            case 13:
                ((Integer) obj2).getClass();
                BeautyDualColorComparatorKt.f(function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 14:
                Composer composer10 = (Composer) obj;
                int iIntValue9 = ((Integer) obj2).intValue();
                if (composer10.p(1 & iIntValue9, (iIntValue9 & 3) != 2)) {
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    LVFloatingTopBarKt.a(null, FloatingTopBarType.Close, null, null, StringResources_androidKt.c(composer10, R.string.alt_close), this.f76653c, null, null, composer10, 48, 205);
                } else {
                    composer10.D();
                }
                return Unit.f71739a;
            case 15:
                PointerInputChange pointerInputChange = (PointerInputChange) obj;
                Offset offset = (Offset) obj2;
                pointerInputChange.getClass();
                float fAbs = Math.abs(Float.intBitsToFloat((int) (offset.f8808a & BodyPartID.bodyIdMax)));
                long j2 = offset.f8808a;
                if (fAbs > Math.abs(Float.intBitsToFloat((int) (j2 >> 32))) && Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)) > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    function0.mo47invoke();
                    pointerInputChange.a();
                }
                return Unit.f71739a;
            case 16:
                Composer composer11 = (Composer) obj;
                int iIntValue10 = ((Integer) obj2).intValue();
                float f4 = BeautyVtoScreenKt.f62031a;
                if (composer11.p(1 & iIntValue10, (iIntValue10 & 3) != 2)) {
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    LVFloatingTopBarKt.a(null, FloatingTopBarType.Close, null, null, StringResources_androidKt.c(composer11, R.string.alt_close), this.f76653c, null, null, composer11, 48, 205);
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
            case 17:
                Composer composer12 = (Composer) obj;
                int iIntValue11 = ((Integer) obj2).intValue();
                float f5 = BookingConfirmationScreenKt.f54386a;
                if (composer12.p(1 & iIntValue11, (iIntValue11 & 3) != 2)) {
                    OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                    LVFloatingTopBarKt.a(null, FloatingTopBarType.Close, null, null, StringResources_androidKt.c(composer12, R.string.alt_close), this.f76653c, null, null, composer12, 48, 205);
                } else {
                    composer12.D();
                }
                return Unit.f71739a;
            case 18:
                Composer composer13 = (Composer) obj;
                int iIntValue12 = ((Integer) obj2).intValue();
                if (composer13.p(iIntValue12 & 1, (iIntValue12 & 3) != 2)) {
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer13, R.string.booking_form_personal_information_title), null, null, this.f76653c, null, null, null, null, composer13, 0, 0, 4023);
                } else {
                    composer13.D();
                }
                return Unit.f71739a;
            case 19:
                Composer composer14 = (Composer) obj;
                int iIntValue13 = ((Integer) obj2).intValue();
                if (composer14.p(iIntValue13 & 1, (iIntValue13 & 3) != 2)) {
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                    Modifier modifierG = n00.g("CatalogSubcategoryTransparentTopBar$lambda$1", "shop_back_button");
                    ComposableSingletons$CatalogSubcategoryScreenKt.f55307a.getClass();
                    IconButtonKt.a(this.f76653c, modifierG, false, null, null, ComposableSingletons$CatalogSubcategoryScreenKt.f55308b, composer14, 1572864, 60);
                } else {
                    composer14.D();
                }
                return Unit.f71739a;
            case 20:
                Composer composer15 = (Composer) obj;
                int iIntValue14 = ((Integer) obj2).intValue();
                if (composer15.p(iIntValue14 & 1, (iIntValue14 & 3) != 2)) {
                    OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer15, R.string.my_certificate_title), null, null, this.f76653c, null, null, null, null, composer15, 0, 0, 4023);
                } else {
                    composer15.D();
                }
                return Unit.f71739a;
            case 21:
                Composer composer16 = (Composer) obj;
                int iIntValue15 = ((Integer) obj2).intValue();
                if (composer16.p(iIntValue15 & 1, (iIntValue15 & 3) != 2)) {
                    OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer16, R.string.my_certificate_title), null, null, this.f76653c, null, null, null, null, composer16, 0, 0, 4023);
                } else {
                    composer16.D();
                }
                return Unit.f71739a;
            case 22:
                Composer composer17 = (Composer) obj;
                int iIntValue16 = ((Integer) obj2).intValue();
                if (composer17.p(iIntValue16 & 1, (iIntValue16 & 3) != 2)) {
                    OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, LVColorScheme.INVERT, false, StringResources_androidKt.c(composer17, R.string.my_certificate_title), null, null, this.f76653c, null, null, null, null, composer17, 48, 0, 4021);
                } else {
                    composer17.D();
                }
                return Unit.f71739a;
            case 23:
                Composer composer18 = (Composer) obj;
                int iIntValue17 = ((Integer) obj2).intValue();
                if (composer18.p(iIntValue17 & 1, (iIntValue17 & 3) != 2)) {
                    OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer18, R.string.my_certificate_title), null, null, this.f76653c, null, null, null, null, composer18, 0, 0, 4023);
                } else {
                    composer18.D();
                }
                return Unit.f71739a;
            case 24:
                ((Integer) obj2).getClass();
                ConfirmPreferenceIconsBottomKt.a(function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 25:
                Composer composer19 = (Composer) obj;
                int iIntValue18 = ((Integer) obj2).intValue();
                if (composer19.p(iIntValue18 & 1, (iIntValue18 & 3) != 2)) {
                    OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer19, R.string.dispatch_country_title), null, null, this.f76653c, null, null, null, null, composer19, 0, 0, 4023);
                } else {
                    composer19.D();
                }
                return Unit.f71739a;
            case 26:
                ((Integer) obj2).getClass();
                DistantRepairFormScreenKt.a(function0, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 27:
                Composer composer20 = (Composer) obj;
                int iIntValue19 = ((Integer) obj2).intValue();
                if (composer20.p(iIntValue19 & 1, (iIntValue19 & 3) != 2)) {
                    OpaqueKey opaqueKey20 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer20, R.string.mylv_edit_avatar_title), null, null, this.f76653c, null, WindowInsets_androidKt.b(composer20), null, null, composer20, 0, 0, 3767);
                } else {
                    composer20.D();
                }
                return Unit.f71739a;
            case 28:
                Composer composer21 = (Composer) obj;
                int iIntValue20 = ((Integer) obj2).intValue();
                if (composer21.p(iIntValue20 & 1, (iIntValue20 & 3) != 2)) {
                    OpaqueKey opaqueKey21 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer21, R.string.mylv_myprofile_myinfos_logininformation_editpassword_title), null, null, this.f76653c, null, null, null, null, composer21, 0, 0, 4023);
                } else {
                    composer21.D();
                }
                return Unit.f71739a;
            default:
                Composer composer22 = (Composer) obj;
                int iIntValue21 = ((Integer) obj2).intValue();
                if (composer22.p(iIntValue21 & 1, (iIntValue21 & 3) != 2)) {
                    OpaqueKey opaqueKey22 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer22, R.string.mylv_myprofile_settingsbrick_title), null, null, this.f76653c, null, null, null, null, composer22, 0, 0, 4023);
                } else {
                    composer22.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ o0(Function0 function0, int i2) {
        this.f76652b = i2;
        this.f76653c = function0;
    }
}
