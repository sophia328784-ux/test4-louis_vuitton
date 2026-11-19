package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import com.vuitton.android.presentation.screen.account.addressbook.components.AddressLoadingScreenKt;
import com.vuitton.android.presentation.screen.account.addressbook.components.ComposableSingletons$AddressLoadingScreenKt;
import com.vuitton.android.presentation.screen.aicompanion.components.chat.ComposableSingletons$AICompanionChatMessagesKt;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTracker;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.audioguide.components.AudioGuideLanguageSelectorKt;
import com.vuitton.android.presentation.screen.audioguide.components.ComposableSingletons$AudioGuideLanguageSelectorKt;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.AudioPlayerControlsKt;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.ComposableSingletons$AudioPlayerControlsKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideExtKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideMockKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.booking.confirmation.components.BookingConfirmationScreenKt;
import com.vuitton.android.presentation.screen.booking.confirmation.components.ComposableSingletons$BookingConfirmationScreenKt;
import com.vuitton.android.presentation.screen.booking.confirmation.models.BookingConfirmationViewState;
import com.vuitton.android.presentation.screen.booking.form.components.ComposableSingletons$BookingReservationScreenKt;
import com.vuitton.android.presentation.screen.booking.form.components.module.BookingModuleGridKt;
import com.vuitton.android.presentation.screen.booking.form.components.module.ComposableSingletons$BookingModuleGridKt;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel;
import com.vuitton.android.presentation.screen.booking.list.models.MocksKt;
import com.vuitton.android.presentation.screen.certificates.components.add.CertificateConfirmationScreenKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentDisclaimerKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentFormComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.ComposableSingletons$AssessmentDisclaimerKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.ComposableSingletons$AssessmentFormComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.sections.AssessmentSendComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.sections.ComposableSingletons$AssessmentSendComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.StepState;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.components.ComposableSingletons$CancellationReasonsErrorScreenKt;
import com.vuitton.android.presentation.tracking.GA4Tracker;
import com.vuitton.android.presentation.tracking.GA4TrackerEntryPointKt;
import com.vuitton.android.presentation.utils.MockUtilsKt;
import com.vuitton.android.presentation.utils.MockUtilsKt$noOpTracker$1;
import com.vuitton.foundation.model.domain.model.audioplayer.PlayerSpeed;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class fl implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69166b;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f69166b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object[] objArr = 0;
        int i3 = 1;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                CertificateConfirmationScreenKt.b((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 1:
                Composer composer = (Composer) obj;
                ((Integer) obj2).getClass();
                composer.L(1822435242);
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("CertificateRubyItem$lambda$1$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                composer.F();
                return modifierM;
            case 2:
                Composer composer2 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer2.L(-484118240);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                Modifier modifierM2 = PaddingKt.m(new DTFunctionNameModifier("CertificateDiamondItem$lambda$1$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                composer2.F();
                return modifierM2;
            case 3:
                String str = (String) obj;
                CoroutineContext.Element element = (CoroutineContext.Element) obj2;
                str.getClass();
                element.getClass();
                if (str.length() == 0) {
                    return element.toString();
                }
                return str + ", " + element;
            case 4:
                Composer composer3 = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                ComposableSingletons$AICompanionChatMessagesKt composableSingletons$AICompanionChatMessagesKt = ComposableSingletons$AICompanionChatMessagesKt.f52817a;
                if (composer3.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    TextKt.c(StringResources_androidKt.c(composer3, R.string.companion_action_copy), null, LVAppDesignKitTheme.c(composer3).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer3).f48427h, composer3, 0, 0, 131066);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 5:
                Composer composer4 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                ComposableSingletons$AICompanionChatMessagesKt composableSingletons$AICompanionChatMessagesKt2 = ComposableSingletons$AICompanionChatMessagesKt.f52817a;
                if (composer4.p(1 & iIntValue2, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer4).P1, composer4, 0), null, null, LVAppDesignKitTheme.c(composer4).f48361b.f48382k, composer4, 56, 4);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 6:
                Composer composer5 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                ComposableSingletons$AICompanionChatMessagesKt composableSingletons$AICompanionChatMessagesKt3 = ComposableSingletons$AICompanionChatMessagesKt.f52817a;
                if (composer5.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    TextKt.c(StringResources_androidKt.c(composer5, R.string.global_modify), null, LVAppDesignKitTheme.c(composer5).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer5).f48427h, composer5, 0, 0, 131066);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 7:
                Composer composer6 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                ComposableSingletons$AICompanionChatMessagesKt composableSingletons$AICompanionChatMessagesKt4 = ComposableSingletons$AICompanionChatMessagesKt.f52817a;
                if (composer6.p(1 & iIntValue4, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer6).w, composer6, 0), null, null, LVAppDesignKitTheme.c(composer6).f48361b.f48382k, composer6, 56, 4);
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 8:
                Composer composer7 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                ComposableSingletons$AICompanionChatMessagesKt composableSingletons$AICompanionChatMessagesKt5 = ComposableSingletons$AICompanionChatMessagesKt.f52817a;
                if (composer7.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = AICompanionTrackerEntryPointKt.f52911a;
                    MockUtilsKt$noOpTracker$1 mockUtilsKt$noOpTracker$1 = MockUtilsKt.f65860a;
                    CompositionLocalKt.b(new ProvidedValue[]{staticProvidableCompositionLocal.c(new AICompanionTracker(mockUtilsKt$noOpTracker$1)), GA4TrackerEntryPointKt.f65812a.c(new GA4Tracker(mockUtilsKt$noOpTracker$1))}, ComposableSingletons$AICompanionChatMessagesKt.f52823i, composer7, 56);
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 9:
                Composer composer8 = (Composer) obj;
                int iIntValue6 = ((Integer) obj2).intValue();
                ComposableSingletons$AddressLoadingScreenKt composableSingletons$AddressLoadingScreenKt = ComposableSingletons$AddressLoadingScreenKt.f52179a;
                if (composer8.p(iIntValue6 & 1, (iIntValue6 & 3) != 2)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 10:
                boolean z = false;
                Composer composer9 = (Composer) obj;
                int iIntValue7 = ((Integer) obj2).intValue();
                ComposableSingletons$AddressLoadingScreenKt composableSingletons$AddressLoadingScreenKt2 = ComposableSingletons$AddressLoadingScreenKt.f52179a;
                if ((iIntValue7 & 3) != 2) {
                    z = true;
                }
                if (composer9.p(1 & iIntValue7, z)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    AddressLoadingScreenKt.a(ComposableSingletons$AddressLoadingScreenKt.f52181c, composer9, 6);
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
            case 11:
                Composer composer10 = (Composer) obj;
                int iIntValue8 = ((Integer) obj2).intValue();
                ComposableSingletons$AssessmentDisclaimerKt composableSingletons$AssessmentDisclaimerKt = ComposableSingletons$AssessmentDisclaimerKt.f57059a;
                if (composer10.p(iIntValue8 & 1, (iIntValue8 & 3) != 2)) {
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    AssessmentDisclaimerKt.a(null, "This is a disclaimer message.", null, LVAppDesignKitTheme.c(composer10).f48361b.f48375b, ComposableSingletons$AssessmentDisclaimerKt.f57061c, composer10, 24624, 5);
                } else {
                    composer10.D();
                }
                return Unit.f71739a;
            case 12:
                boolean z2 = false;
                Composer composer11 = (Composer) obj;
                int iIntValue9 = ((Integer) obj2).intValue();
                ComposableSingletons$AssessmentFormComponentKt composableSingletons$AssessmentFormComponentKt = ComposableSingletons$AssessmentFormComponentKt.f57069a;
                if ((iIntValue9 & 3) != 2) {
                    z2 = true;
                }
                if (composer11.p(iIntValue9 & 1, z2)) {
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    AssessmentFormComponentKt.c(true, composer11, 6);
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
            case 13:
                Composer composer12 = (Composer) obj;
                int iIntValue10 = ((Integer) obj2).intValue();
                ComposableSingletons$AssessmentFormComponentKt composableSingletons$AssessmentFormComponentKt2 = ComposableSingletons$AssessmentFormComponentKt.f57069a;
                if (composer12.p(1 & iIntValue10, (iIntValue10 & 3) != 2)) {
                    OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                    AssessmentFormComponentKt.c(false, composer12, 6);
                } else {
                    composer12.D();
                }
                return Unit.f71739a;
            case 14:
                boolean z3 = false;
                Composer composer13 = (Composer) obj;
                int iIntValue11 = ((Integer) obj2).intValue();
                ComposableSingletons$AssessmentSendComponentKt composableSingletons$AssessmentSendComponentKt = ComposableSingletons$AssessmentSendComponentKt.f57085a;
                if ((iIntValue11 & 3) != 2) {
                    z3 = true;
                }
                if (composer13.p(1 & iIntValue11, z3)) {
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                    StepState stepState = StepState.EDIT;
                    Object objX = composer13.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new km(8);
                        composer13.q(objX);
                    }
                    Function1 function1 = (Function1) objX;
                    Object objX2 = composer13.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new km(9);
                        composer13.q(objX2);
                    }
                    AssessmentSendComponentKt.a(stepState, function1, (Function1) objX2, composer13, 438);
                } else {
                    composer13.D();
                }
                return Unit.f71739a;
            case 15:
                Composer composer14 = (Composer) obj;
                int iIntValue12 = ((Integer) obj2).intValue();
                ComposableSingletons$AudioGuideLanguageSelectorKt composableSingletons$AudioGuideLanguageSelectorKt = ComposableSingletons$AudioGuideLanguageSelectorKt.f53020a;
                if (composer14.p(1 & iIntValue12, (iIntValue12 & 3) != 2)) {
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer14).q0, composer14, 0), null, SizeKt.o(new DTFunctionNameModifier("lambda_408842164$lambda$0"), LVAppDesignKitTheme.d(composer14).n), LVAppDesignKitTheme.c(composer14).f48361b.u, composer14, 56, 0);
                } else {
                    composer14.D();
                }
                return Unit.f71739a;
            case 16:
                Composer composer15 = (Composer) obj;
                int iIntValue13 = ((Integer) obj2).intValue();
                ComposableSingletons$AudioGuideLanguageSelectorKt composableSingletons$AudioGuideLanguageSelectorKt2 = ComposableSingletons$AudioGuideLanguageSelectorKt.f53020a;
                if (composer15.p(iIntValue13 & 1, (iIntValue13 & 3) != 2)) {
                    OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                    AudioGuideUiModel.AvailableLanguageUiModel availableLanguageUiModel = new AudioGuideUiModel.AvailableLanguageUiModel("EN", "English");
                    FeatureThemeUiModel featureThemeUiModel = FeatureThemeUiModel.DARK;
                    List listP = CollectionsKt.P(new AudioGuideUiModel.AvailableLanguageUiModel("EN", "English"), new AudioGuideUiModel.AvailableLanguageUiModel("FR", "French"));
                    Object objX3 = composer15.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new km(10);
                        composer15.q(objX3);
                    }
                    AudioGuideLanguageSelectorKt.b(null, featureThemeUiModel, availableLanguageUiModel, listP, (Function1) objX3, null, composer15, 24624, 33);
                } else {
                    composer15.D();
                }
                return Unit.f71739a;
            case 17:
                Composer composer16 = (Composer) obj;
                int iIntValue14 = ((Integer) obj2).intValue();
                ComposableSingletons$AudioPlayerControlsKt composableSingletons$AudioPlayerControlsKt = ComposableSingletons$AudioPlayerControlsKt.f53102a;
                if (composer16.p(iIntValue14 & 1, (iIntValue14 & 3) != 2)) {
                    OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("lambda_1706645478$lambda$0");
                    AudioGuideUiModel audioGuideUiModel = AudioGuideMockKt.f53161b;
                    Modifier modifierI = PaddingKt.i(BackgroundKt.b(dTFunctionNameModifier, audioGuideUiModel.f53198e, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(composer16).f48417f);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode = Long.hashCode(composer16.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer16.n();
                    Modifier modifierC = ComposedModifierKt.c(composer16, modifierI);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer16.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer16.B();
                    if (composer16.getS()) {
                        composer16.C(function0);
                    } else {
                        composer16.o();
                    }
                    Updater.c(composer16, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer16, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer16, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer16, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer16, modifierC, ComposeUiNode.Companion.d);
                    AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModelA = AudioGuideExtKt.a(audioGuideUiModel.f53199f, composer16);
                    PlayerSpeed playerSpeed = PlayerSpeed.SPEED_1X;
                    Object objX4 = composer16.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new cm(25);
                        composer16.q(objX4);
                    }
                    Function0 function2 = (Function0) objX4;
                    Object objX5 = composer16.x();
                    if (objX5 == composer$Companion$Empty$1) {
                        objX5 = new km(11);
                        composer16.q(objX5);
                    }
                    Function1 function3 = (Function1) objX5;
                    Object objX6 = composer16.x();
                    if (objX6 == composer$Companion$Empty$1) {
                        objX6 = new cm(26);
                        composer16.q(objX6);
                    }
                    Function0 function4 = (Function0) objX6;
                    Object objX7 = composer16.x();
                    if (objX7 == composer$Companion$Empty$1) {
                        objX7 = new cm(27);
                        composer16.q(objX7);
                    }
                    Function0 function5 = (Function0) objX7;
                    Object objX8 = composer16.x();
                    if (objX8 == composer$Companion$Empty$1) {
                        objX8 = new cm(28);
                        composer16.q(objX8);
                    }
                    Function0 function6 = (Function0) objX8;
                    Object objX9 = composer16.x();
                    if (objX9 == composer$Companion$Empty$1) {
                        objX9 = new cm(29);
                        composer16.q(objX9);
                    }
                    AudioPlayerControlsKt.a(null, audioGuideColorsUiModelA, 45000L, 180000L, true, false, playerSpeed, function2, function3, function4, function5, function6, (Function0) objX9, composer16, 920153472, 438, 33);
                    composer16.r();
                } else {
                    composer16.D();
                }
                return Unit.f71739a;
            case 18:
                Composer composer17 = (Composer) obj;
                int iIntValue15 = ((Integer) obj2).intValue();
                ComposableSingletons$BookingConfirmationScreenKt composableSingletons$BookingConfirmationScreenKt = ComposableSingletons$BookingConfirmationScreenKt.f54387a;
                if (composer17.p(iIntValue15 & 1, (iIntValue15 & 3) != 2)) {
                    OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                    BookingConfirmationViewState.Success success = new BookingConfirmationViewState.Success(MocksKt.f54627a);
                    Object objX10 = composer17.x();
                    if (objX10 == composer$Companion$Empty$1) {
                        objX10 = new nn(objArr == true ? 1 : 0);
                        composer17.q(objX10);
                    }
                    Function0 function7 = (Function0) objX10;
                    Object objX11 = composer17.x();
                    if (objX11 == composer$Companion$Empty$1) {
                        objX11 = new nn(i3);
                        composer17.q(objX11);
                    }
                    BookingConfirmationScreenKt.d(success, function7, (Function0) objX11, null, null, null, null, composer17, 432, 120);
                } else {
                    composer17.D();
                }
                return Unit.f71739a;
            case 19:
                boolean z4 = false;
                Composer composer18 = (Composer) obj;
                int iIntValue16 = ((Integer) obj2).intValue();
                ComposableSingletons$BookingModuleGridKt composableSingletons$BookingModuleGridKt = ComposableSingletons$BookingModuleGridKt.f54488a;
                if ((iIntValue16 & 3) != 2) {
                    z4 = true;
                }
                if (composer18.p(iIntValue16 & 1, z4)) {
                    OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                    BookingModuleGridKt.a(CollectionsKt.P("10:00", "11:00", "12:00", "01:00"), tr.d("lambda_1879517912$lambda$0", 1.0f), 0, ComposableSingletons$BookingModuleGridKt.f54490c, composer18, 3126, 4);
                } else {
                    composer18.D();
                }
                return Unit.f71739a;
            case 20:
                Composer composer19 = (Composer) obj;
                int iIntValue17 = ((Integer) obj2).intValue();
                ComposableSingletons$BookingModuleGridKt composableSingletons$BookingModuleGridKt2 = ComposableSingletons$BookingModuleGridKt.f54488a;
                if (composer19.p(iIntValue17 & 1, (iIntValue17 & 3) != 2)) {
                    OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                    BookingModuleGridKt.b(null, composer19, 0, 1);
                } else {
                    composer19.D();
                }
                return Unit.f71739a;
            case 21:
                ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt = ComposableSingletons$BookingReservationScreenKt.f54474a;
                ((String) obj).getClass();
                ((BookingFormModuleDataUiModel.MultipleTextCategory) obj2).getClass();
                return Unit.f71739a;
            case 22:
                ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt2 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                ((String) obj).getClass();
                ((BookingFormModuleDataUiModel) obj2).getClass();
                return Unit.f71739a;
            case 23:
                ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt3 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                ((String) obj).getClass();
                ((BookingFormModuleDataUiModel.MultipleTextCategory) obj2).getClass();
                return Unit.f71739a;
            case 24:
                ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt4 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                ((String) obj).getClass();
                ((BookingFormModuleDataUiModel) obj2).getClass();
                return Unit.f71739a;
            case 25:
                ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt5 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                ((String) obj).getClass();
                ((BookingFormModuleDataUiModel.MultipleTextCategory) obj2).getClass();
                return Unit.f71739a;
            case 26:
                ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt6 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                ((String) obj).getClass();
                ((BookingFormModuleDataUiModel) obj2).getClass();
                return Unit.f71739a;
            case 27:
                ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt7 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                ((String) obj).getClass();
                ((BookingFormModuleDataUiModel.MultipleTextCategory) obj2).getClass();
                return Unit.f71739a;
            case 28:
                ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt8 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                ((String) obj).getClass();
                ((BookingFormModuleDataUiModel) obj2).getClass();
                return Unit.f71739a;
            default:
                Composer composer20 = (Composer) obj;
                int iIntValue18 = ((Integer) obj2).intValue();
                ComposableSingletons$CancellationReasonsErrorScreenKt composableSingletons$CancellationReasonsErrorScreenKt = ComposableSingletons$CancellationReasonsErrorScreenKt.f63622a;
                if (composer20.p(iIntValue18 & 1, (iIntValue18 & 3) != 2)) {
                    OpaqueKey opaqueKey20 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, "topBar", null, null, null, null, null, null, null, composer20, 3072, 0, 4087);
                } else {
                    composer20.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ fl(int i2, byte b2) {
        this.f69166b = i2;
    }
}
