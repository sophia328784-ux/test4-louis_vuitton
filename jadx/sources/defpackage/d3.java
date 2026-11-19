package defpackage;

import android.graphics.Bitmap;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.FlowRowScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.text.HandleState;
import androidx.compose.foundation.text.input.internal.CoreTextFieldSemanticsModifierNode;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material3.DatePickerColors;
import androidx.compose.material3.DatePickerDefaults;
import androidx.compose.material3.DatePickerKt;
import androidx.compose.material3.DatePickerState;
import androidx.compose.material3.TextFieldColors;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MovableContent;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.sightcall.advancedannotations.domain.drawingmode.DrawingModeSelectorImpl;
import com.sightcall.libraries.archi.nucleus.Action;
import com.sightcall.libraries.archi.nucleus.Nucleus;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationPushCardContent;
import com.vuitton.android.designkit.ui.theme.molecules.LVPushCardKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.presentation.chat.ChatAttachable;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.contact.compose.ContactUsMethod;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.link.builder.PassAppLinkBuilder;
import com.vuitton.android.presentation.link.navigation.ContactUsNavigator;
import com.vuitton.android.presentation.model.common.mapper.FeatureThemeMapperKt;
import com.vuitton.android.presentation.model.storelocator.StoreOpeningHoursUiModel;
import com.vuitton.android.presentation.model.storelocator.StoreUiModel;
import com.vuitton.android.presentation.redirectlink.DeepLink;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInformationViewState;
import com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationViewState;
import com.vuitton.android.presentation.screen.authentication.common.components.NativeRegisterPasswordCheckKt;
import com.vuitton.android.presentation.screen.authentication.common.validation.PasswordValidationState;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.models.ForgetPasswordViewState;
import com.vuitton.android.presentation.screen.certificates.CertificateActivity;
import com.vuitton.android.presentation.screen.certificates.components.add.AddCertificateComposableKt;
import com.vuitton.android.presentation.screen.certificates.diamonds.add.model.AddCertificateInfoBuyerUiModel;
import com.vuitton.android.presentation.screen.certificates.diamonds.add.model.AddCertificateInfoIndividualNumberUiModel;
import com.vuitton.android.presentation.screen.certificates.diamonds.add.model.AddCertificateInfoUiModel;
import com.vuitton.android.presentation.screen.certificates.diamonds.add.model.AddCertificateUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentFormComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.sections.AssessmentPreliminaryBffComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairPhotoItemKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.formsections.DistantRepairInitiateComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.formsections.DistantRepairProductComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairFormViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairPhoto;
import com.vuitton.android.presentation.screen.distantrepairs.models.Step1StateUIModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.Step3StateUIModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.feed.components.subcomponents.FeedWelcomeKt;
import com.vuitton.android.presentation.screen.feed.models.FeedViewState;
import com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleEventSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleExpansionPanelUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleTitlesUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleViewState;
import com.vuitton.android.presentation.screen.main.MainActivity;
import com.vuitton.android.presentation.screen.pdp.components.findinstore.FindInStoreRowKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyDualColorComparatorKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyPictureUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyProductTypeUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoMode;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoViewState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.LookUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import com.vuitton.android.presentation.screen.plp.activities.CatalogPLPActivity;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.storemode.components.catalog.CatalogStoreModeKt;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeDataUiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import com.vuitton.android.presentation.utils.ShareUtilsKt;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.selects.SelectInstance;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class d3 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68403b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f68404c;

    public /* synthetic */ d3(Object obj, int i2) {
        this.f68403b = i2;
        this.f68404c = obj;
    }

    private final Object a(Object obj, Object obj2, Object obj3) {
        MainActivity mainActivity = (MainActivity) this.f68404c;
        ContactUsMethod contactUsMethod = (ContactUsMethod) obj;
        int iIntValue = ((Integer) obj2).intValue();
        int iIntValue2 = ((Integer) obj3).intValue();
        MainActivity.Companion companion = MainActivity.L;
        contactUsMethod.getClass();
        ContactUsNavigator contactUsNavigator = mainActivity.A;
        if (contactUsNavigator == null) {
            Intrinsics.h("contactUsNavigator");
            throw null;
        }
        ChatAttachable chatAttachable = mainActivity.G;
        if (chatAttachable != null) {
            contactUsNavigator.a(mainActivity, contactUsMethod, iIntValue, iIntValue2, chatAttachable);
            return Unit.f71739a;
        }
        Intrinsics.h("chatAttachable");
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:227:0x06e7  */
    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        Composer composer;
        int i2 = this.f68403b;
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        int i3 = 5;
        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
        int i4 = 14;
        boolean z = true;
        int i5 = 0;
        Object obj4 = this.f68404c;
        switch (i2) {
            case 0:
                ((Integer) obj3).intValue();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                NativeRegisterPasswordCheckKt.b(null, (PasswordValidationState) ((SnapshotMutableStateImpl) ((AccountActivationViewState) obj4).f53394b.d).getF10755b(), (Composer) obj2, 0, 1);
                return Unit.f71739a;
            case 1:
                AddCertificateUiModel addCertificateUiModel = (AddCertificateUiModel) obj4;
                Composer composer2 = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    AddCertificateComposableKt.b(addCertificateUiModel.f55786b, composer2, 0);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 2:
                AddCertificateInfoUiModel addCertificateInfoUiModel = (AddCertificateInfoUiModel) obj4;
                Composer composer3 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    if (addCertificateInfoUiModel instanceof AddCertificateInfoIndividualNumberUiModel) {
                        composer3.L(675144340);
                        AddCertificateComposableKt.g(composer3, 0);
                        composer3.F();
                    } else {
                        if (!(addCertificateInfoUiModel instanceof AddCertificateInfoBuyerUiModel)) {
                            throw o60.v(composer3, 675141918);
                        }
                        composer3.L(675146899);
                        AddCertificateComposableKt.f(composer3, 0);
                        composer3.F();
                    }
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 3:
                AssessmentViewState assessmentViewState = (AssessmentViewState) obj4;
                Composer composer4 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer4.p(iIntValue3 & 1, (iIntValue3 & 17) != 16)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    AssessmentFormComponentKt.c(assessmentViewState.p, composer4, 0);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 4:
                ((Integer) obj3).intValue();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                AssessmentPreliminaryBffComponentKt.d((CareServiceDetailUiModel.Assessment) obj4, (Composer) obj2, 0);
                return Unit.f71739a;
            case 5:
                LookUiModel lookUiModel = (LookUiModel) obj4;
                BoxScope boxScope = (BoxScope) obj;
                Composer composer5 = (Composer) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                boxScope.getClass();
                if ((iIntValue4 & 6) == 0) {
                    iIntValue4 |= composer5.K(boxScope) ? 4 : 2;
                }
                if (composer5.p(iIntValue4 & 1, (iIntValue4 & 19) != 18)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("BeautyLooksBottomBar$lambda$2$0$0$1$0$2");
                    Alignment.f8582a.getClass();
                    Modifier modifierA = AspectRatioKt.a(boxScope.g(dTFunctionNameModifier, Alignment.Companion.f8587f), 1.0f, true);
                    String str = lookUiModel.f62168e.f51778b;
                    str.getClass();
                    ImageLoaderKt.b(modifierA, str, null, null, Integer.valueOf(R.drawable.placeholder_transparent), R.drawable.placeholder_transparent, false, null, null, null, composer5, 0, 1996);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 6:
                BeautyVtoViewState beautyVtoViewState = (BeautyVtoViewState) obj4;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer6 = (Composer) obj2;
                int iIntValue5 = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((iIntValue5 & 6) == 0) {
                    iIntValue5 |= composer6.K(paddingValues) ? 4 : 2;
                }
                if (composer6.p(iIntValue5 & 1, (iIntValue5 & 19) != 18)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("BeautyPictureScreen$lambda$2");
                    FillElement fillElement = SizeKt.f5052c;
                    Modifier modifierO = dTFunctionNameModifier2.o(fillElement);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode = Long.hashCode(composer6.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer6.n();
                    Modifier modifierC = ComposedModifierKt.c(composer6, modifierO);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer6.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer6.B();
                    if (composer6.getS()) {
                        composer6.C(function0);
                    } else {
                        composer6.o();
                    }
                    Function2 function2 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer6, measurePolicyD, function2);
                    Function2 function3 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer6, persistentCompositionLocalMapN, function3);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    Function2 function4 = ComposeUiNode.Companion.g;
                    Updater.c(composer6, numValueOf, function4);
                    Function1 function1 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer6, function1);
                    Function2 function5 = ComposeUiNode.Companion.d;
                    Updater.c(composer6, modifierC, function5);
                    BeautyPictureUiModel beautyPictureUiModel = beautyVtoViewState.f62153f;
                    BeautyVtoMode beautyVtoMode = beautyVtoViewState.f62149a;
                    if (beautyPictureUiModel == null) {
                        composer6.L(-1443185044);
                        composer6.F();
                    } else {
                        composer6.L(-1443185043);
                        Modifier modifierO2 = new DTFunctionNameModifier("BeautyPictureScreen$lambda$2").o(fillElement);
                        Bitmap bitmap = beautyVtoViewState.f62153f.f62147a;
                        bitmap.getClass();
                        ContentScale.f9447a.getClass();
                        ImageLoaderKt.b(modifierO2, bitmap, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, composer6, 390, 2040);
                        composer6.F();
                    }
                    Modifier modifierG = BoxScopeInstance.f4938a.g(PaddingKt.m(PaddingKt.h(SizeKt.d(new DTFunctionNameModifier("BeautyPictureScreen$lambda$2"), 1.0f), paddingValues), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer6).d, 7), Alignment.Companion.f8589i);
                    RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.f8591k, composer6, 0);
                    int iHashCode2 = Long.hashCode(composer6.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer6.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer6, modifierG);
                    if (composer6.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer6.B();
                    if (composer6.getS()) {
                        composer6.C(function0);
                    } else {
                        composer6.o();
                    }
                    Updater.c(composer6, rowMeasurePolicyA, function2);
                    Updater.c(composer6, persistentCompositionLocalMapN2, function3);
                    cj.s(iHashCode2, composer6, function4, composer6, function1);
                    Updater.c(composer6, modifierC2, function5);
                    TryOnProductUiModel tryOnProductUiModel = beautyVtoViewState.f62155i;
                    RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
                    if (tryOnProductUiModel == null) {
                        composer6.L(-538103303);
                        composer6.F();
                    } else {
                        composer6.L(-538103302);
                        if (tryOnProductUiModel.f62185c != BeautyProductTypeUiModel.NONE) {
                            BeautyDualColorComparatorKt.e(rowScopeInstance.a(pq0.j(-246423559, composer6, "BeautyPictureScreen$lambda$2"), 0.5f, true), tryOnProductUiModel, true, composer6, KyberEngine.KyberPolyBytes, 0);
                            composer6.F();
                        } else {
                            composer6.L(-246145830);
                            composer6.F();
                        }
                        composer6.F();
                    }
                    if (beautyVtoMode == BeautyVtoMode.DUAL) {
                        composer6.L(-537615951);
                        TryOnProductUiModel tryOnProductUiModel2 = beautyVtoViewState.r;
                        if (tryOnProductUiModel2 == null || tryOnProductUiModel2.f62185c == BeautyProductTypeUiModel.NONE) {
                            composer6.L(-537159073);
                            composer6.F();
                        } else {
                            BeautyDualColorComparatorKt.e(rowScopeInstance.a(pq0.j(-537444490, composer6, "BeautyPictureScreen$lambda$2"), 0.5f, true), beautyVtoViewState.r, true, composer6, KyberEngine.KyberPolyBytes, 0);
                            composer6.F();
                        }
                        composer6.F();
                    } else {
                        composer6.L(-537141217);
                        composer6.F();
                    }
                    if (beautyVtoMode == BeautyVtoMode.STACKING) {
                        composer6.L(-987153898);
                        TryOnProductUiModel tryOnProductUiModel3 = beautyVtoViewState.f62156j;
                        if (tryOnProductUiModel3 == null) {
                            composer6.L(-536999765);
                            composer6.F();
                        } else {
                            BeautyDualColorComparatorKt.e(rowScopeInstance.a(pq0.j(-536999764, composer6, "BeautyPictureScreen$lambda$2"), 0.5f, true), tryOnProductUiModel3, true, composer6, KyberEngine.KyberPolyBytes, 0);
                            composer6.F();
                        }
                        composer6.F();
                    } else {
                        composer6.L(-536717633);
                        composer6.F();
                    }
                    composer6.r();
                    composer6.r();
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 7:
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj4;
                FormFieldGenericUiModel formFieldGenericUiModel = (FormFieldGenericUiModel) obj;
                Composer composer7 = (Composer) obj2;
                int iIntValue6 = ((Integer) obj3).intValue();
                formFieldGenericUiModel.getClass();
                if ((iIntValue6 & 6) == 0) {
                    iIntValue6 |= composer7.K(formFieldGenericUiModel) ? 4 : 2;
                }
                if (composer7.p(iIntValue6 & 1, (iIntValue6 & 19) != 18)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    if (formFieldGenericUiModel.getD() == FormSectionTypeUiModel.BOOKING_PERSONAL_DATA_COLLECTION_CONSENT) {
                        composer7.L(-1861897452);
                        composableLambdaImpl.invoke(composer7, 6);
                        composer7.F();
                    } else {
                        composer7.L(-1861822494);
                        composer7.F();
                    }
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 8:
                AtomicLongFieldUpdater atomicLongFieldUpdater = BufferedChannel.f74728e;
                return new g1(obj3, (BufferedChannel) obj4, (SelectInstance) obj, i3);
            case 9:
                CatalogPLPActivity catalogPLPActivity = (CatalogPLPActivity) obj4;
                Bitmap bitmap2 = (Bitmap) obj;
                String str2 = (String) obj2;
                String str3 = (String) obj3;
                CatalogPLPActivity.Companion companion = CatalogPLPActivity.x;
                bitmap2.getClass();
                str2.getClass();
                str3.getClass();
                PassAppLinkBuilder passAppLinkBuilder = catalogPLPActivity.p;
                if (passAppLinkBuilder == null) {
                    Intrinsics.h("passAppLinkBuilder");
                    throw null;
                }
                String string = catalogPLPActivity.getString(R.string.Native_share_pdp_text, str2, passAppLinkBuilder.a(CollectionsKt.P(DeepLink.CATALOG.getHost(), DeepLink.CATEGORY.getHost(), str3)));
                string.getClass();
                ShareUtilsKt.a(catalogPLPActivity, bitmap2, str2, string, str2, 32);
                return Unit.f71739a;
            case 10:
                StoreModeViewState storeModeViewState = (StoreModeViewState) obj4;
                RowScope rowScope = (RowScope) obj;
                Composer composer8 = (Composer) obj2;
                int iIntValue7 = ((Integer) obj3).intValue();
                float f3 = CatalogStoreModeKt.f64850a;
                rowScope.getClass();
                if ((iIntValue7 & 6) == 0) {
                    iIntValue7 |= composer8.K(rowScope) ? 4 : 2;
                }
                if (composer8.p(iIntValue7 & 1, (iIntValue7 & 19) != 18)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    ConfigurationPushCardContent configurationPushCardContent = LVAppDesignKitTheme.i(composer8).f48651a;
                    ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-1134249518, new c(storeModeViewState, i4), composer8);
                    String strC = StringResources_androidKt.c(composer8, R.string.store_mode_your_wishlist);
                    int i6 = storeModeViewState.f65085f.f65745a;
                    LVPushCardKt.b(rowScope, configurationPushCardContent, null, composableLambdaImplB, strC, StringResources_androidKt.a(R.plurals.store_mode_number_of_items, i6, new Object[]{Integer.valueOf(i6)}, composer8), null, composer8, (iIntValue7 & 14) | 3072, 34);
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 11:
                StoreModeDataUiModel storeModeDataUiModel = (StoreModeDataUiModel) obj4;
                RowScope rowScope2 = (RowScope) obj;
                Composer composer9 = (Composer) obj2;
                int iIntValue8 = ((Integer) obj3).intValue();
                float f4 = CatalogStoreModeKt.f64850a;
                rowScope2.getClass();
                if ((iIntValue8 & 6) == 0) {
                    iIntValue8 |= composer9.K(rowScope2) ? 4 : 2;
                }
                if (composer9.p(iIntValue8 & 1, (iIntValue8 & 19) != 18)) {
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    ConfigurationPushCardContent configurationPushCardContent2 = LVAppDesignKitTheme.i(composer9).f48651a;
                    ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-1187800374, new c(storeModeDataUiModel, 13), composer9);
                    StoreModeDataUiModel.StoreModeSimpleUiModel storeModeSimpleUiModel = (StoreModeDataUiModel.StoreModeSimpleUiModel) storeModeDataUiModel;
                    LVPushCardKt.b(rowScope2, configurationPushCardContent2, null, composableLambdaImplB2, storeModeSimpleUiModel.f65052a, storeModeSimpleUiModel.f65053b, null, composer9, (iIntValue8 & 14) | 3072, 34);
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
            case 12:
                CertificateActivity certificateActivity = (CertificateActivity) obj4;
                ContactUsMethod contactUsMethod = (ContactUsMethod) obj;
                int iIntValue9 = ((Integer) obj2).intValue();
                int iIntValue10 = ((Integer) obj3).intValue();
                CertificateActivity.Companion companion2 = CertificateActivity.x;
                contactUsMethod.getClass();
                ContactUsNavigator contactUsNavigator = certificateActivity.r;
                if (contactUsNavigator == null) {
                    Intrinsics.h("contactUsNavigator");
                    throw null;
                }
                ChatAttachable chatAttachable = certificateActivity.t;
                if (chatAttachable != null) {
                    contactUsNavigator.a(certificateActivity, contactUsMethod, iIntValue9, iIntValue10, chatAttachable);
                    return Unit.f71739a;
                }
                Intrinsics.h("chatAttachable");
                throw null;
            case 13:
                CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode = (CoreTextFieldSemanticsModifierNode) obj4;
                int iIntValue11 = ((Integer) obj).intValue();
                int iIntValue12 = ((Integer) obj2).intValue();
                boolean zBooleanValue = ((Boolean) obj3).booleanValue();
                if (!zBooleanValue) {
                    iIntValue11 = coreTextFieldSemanticsModifierNode.x.a(iIntValue11);
                }
                if (!zBooleanValue) {
                    iIntValue12 = coreTextFieldSemanticsModifierNode.x.a(iIntValue12);
                }
                if (coreTextFieldSemanticsModifierNode.v) {
                    long j2 = coreTextFieldSemanticsModifierNode.s.f10841b;
                    TextRange.Companion companion3 = TextRange.f10564b;
                    if (iIntValue11 == ((int) (j2 >> 32)) && iIntValue12 == ((int) (j2 & BodyPartID.bodyIdMax))) {
                        z = false;
                    } else if (Math.min(iIntValue11, iIntValue12) < 0 || Math.max(iIntValue11, iIntValue12) > coreTextFieldSemanticsModifierNode.s.f10840a.f10420c.length()) {
                        TextFieldSelectionManager textFieldSelectionManager = coreTextFieldSemanticsModifierNode.y;
                        textFieldSelectionManager.w(false);
                        textFieldSelectionManager.s(HandleState.None);
                        z = false;
                    } else {
                        if (zBooleanValue || iIntValue11 == iIntValue12) {
                            TextFieldSelectionManager textFieldSelectionManager2 = coreTextFieldSemanticsModifierNode.y;
                            textFieldSelectionManager2.w(false);
                            textFieldSelectionManager2.s(HandleState.None);
                        } else {
                            coreTextFieldSemanticsModifierNode.y.h(true);
                        }
                        coreTextFieldSemanticsModifierNode.t.v.invoke(new TextFieldValue(coreTextFieldSemanticsModifierNode.s.f10840a, TextRangeKt.a(iIntValue11, iIntValue12), (TextRange) null, 4, (DefaultConstructorMarker) null));
                    }
                } else {
                    z = false;
                }
                return Boolean.valueOf(z);
            case 14:
                DistantRepairFormViewState distantRepairFormViewState = (DistantRepairFormViewState) obj4;
                Composer composer10 = (Composer) obj2;
                int iIntValue13 = ((Integer) obj3).intValue();
                ((FlowRowScope) obj).getClass();
                if (composer10.p(iIntValue13 & 1, (iIntValue13 & 17) != 16)) {
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    Iterator it = distantRepairFormViewState.f57382e.f57410b.iterator();
                    while (true) {
                        int i7 = i5;
                        if (it.hasNext()) {
                            Object next = it.next();
                            i5 = i7 + 1;
                            if (i7 < 0) {
                                CollectionsKt.t0();
                                throw null;
                            }
                            DistantRepairPhotoItemKt.a(tr.d("ConfirmationCard$lambda$0$0$1", 0.33f), i7, (DistantRepairPhoto) next, true, null, null, "careservicesConfirmation_repairImage_image", composer10, 1575942, 48);
                        } else {
                            OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                        }
                    }
                } else {
                    composer10.D();
                }
                return Unit.f71739a;
            case 15:
                Step1StateUIModel step1StateUIModel = (Step1StateUIModel) obj4;
                ((Integer) obj3).intValue();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                DistantRepairInitiateComponentKt.e(step1StateUIModel.f57401a, step1StateUIModel.f57403c, (Composer) obj2, 0);
                return Unit.f71739a;
            case 16:
                Step3StateUIModel step3StateUIModel = (Step3StateUIModel) obj4;
                ((Integer) obj3).intValue();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                DistantRepairProductComponentKt.c(step3StateUIModel.f57411c, step3StateUIModel.f57410b, (Composer) obj2, 0);
                return Unit.f71739a;
            case 17:
                return DrawingModeSelectorImpl.reducer$lambda$0((DrawingModeSelectorImpl) obj4, (Nucleus) obj, (Pair) obj2, (Action) obj3);
            case 18:
                MyInformationViewState myInformationViewState = (MyInformationViewState) obj4;
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer11 = (Composer) obj2;
                int iIntValue14 = ((Integer) obj3).intValue();
                paddingValues2.getClass();
                if ((iIntValue14 & 6) == 0) {
                    iIntValue14 |= composer11.K(paddingValues2) ? 4 : 2;
                }
                if (composer11.p(iIntValue14 & 1, (iIntValue14 & 19) != 18)) {
                    OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                    if (myInformationViewState.f52666b) {
                        ProgressViewKt.a(PaddingKt.h(pq0.j(-1445332118, composer11, "EditMyInfoLoadingScreen$lambda$1").o(SizeKt.f5052c), paddingValues2), 0L, false, composer11, 0, 6);
                        composer11.F();
                    } else {
                        composer11.L(-1445172592);
                        composer11.F();
                    }
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
            case 19:
                FeedViewState feedViewState = (FeedViewState) obj4;
                Composer composer12 = (Composer) obj2;
                int iIntValue15 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer12.p(iIntValue15 & 1, (iIntValue15 & 17) != 16)) {
                    OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                    FeedWelcomeKt.a(PaddingKt.k(new DTFunctionNameModifier("FeedForYouSuccessScreen$lambda$6$0$0"), LVAppDesignKitTheme.l(composer12).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), feedViewState.n, feedViewState.o, FeatureThemeMapperKt.a(feedViewState.f57923a), composer12, 0, 0);
                } else {
                    composer12.D();
                }
                return Unit.f71739a;
            case 20:
                StoreUiModel storeUiModel = (StoreUiModel) obj4;
                Composer composer13 = (Composer) obj2;
                int iIntValue16 = ((Integer) obj3).intValue();
                ((FlowRowScope) obj).getClass();
                if (composer13.p(iIntValue16 & 1, (iIntValue16 & 17) != 16)) {
                    OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                    Iterator it2 = storeUiModel.f51822h.iterator();
                    while (it2.hasNext()) {
                        FindInStoreRowKt.a(PaddingKt.m(new DTFunctionNameModifier("FindInStoreRow$lambda$3$2$0$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer13).f48415c, 7), (StoreOpeningHoursUiModel) it2.next(), composer13, 0);
                    }
                    OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                } else {
                    composer13.D();
                }
                return Unit.f71739a;
            case 21:
                ((Integer) obj3).getClass();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                NativeRegisterPasswordCheckKt.b(n00.g("ForgetPasswordReset$lambda$1$1", "nativeForgetPassword_mustContain_text"), (PasswordValidationState) ((SnapshotMutableStateImpl) ((ForgetPasswordViewState) obj4).f53590f.d).getF10755b(), (Composer) obj2, 0, 0);
                return Unit.f71739a;
            case 22:
                ImmersiveArticleViewState immersiveArticleViewState = (ImmersiveArticleViewState) obj4;
                Composer composer14 = (Composer) obj2;
                int iIntValue17 = ((Integer) obj3).intValue();
                float f5 = ImmersiveArticleContentKt.f58386a;
                ((LazyItemScope) obj).getClass();
                if (composer14.p(iIntValue17 & 1, (iIntValue17 & 17) != 16)) {
                    OpaqueKey opaqueKey20 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("ImmersiveArticleContent_01WpQAk$lambda$3$11$2$0$1");
                    if (immersiveArticleViewState.g != null) {
                        composer14.L(-1537038691);
                        f2 = ImmersiveArticleContentKt.f58386a + LVAppDesignKitTheme.l(composer14).g;
                        Dp.Companion companion4 = Dp.f11004c;
                        composer14.F();
                    } else {
                        ImmersiveArticleUiModel immersiveArticleUiModel = immersiveArticleViewState.f58801c;
                        if ((immersiveArticleUiModel != null ? immersiveArticleUiModel.f58794e : null) != null) {
                            composer14.L(-1537034317);
                            composer14.F();
                            f2 = ImmersiveArticleContentKt.f58387b;
                        } else {
                            composer14.L(-1537032311);
                            composer14.F();
                            Dp.Companion companion5 = Dp.f11004c;
                        }
                    }
                    SpacerKt.a(composer14, SizeKt.f(dTFunctionNameModifier3, f2));
                } else {
                    composer14.D();
                }
                return Unit.f71739a;
            case 23:
                ImmersiveArticleEventSectionUiModel immersiveArticleEventSectionUiModel = (ImmersiveArticleEventSectionUiModel) obj4;
                BoxScope boxScope2 = (BoxScope) obj;
                Composer composer15 = (Composer) obj2;
                int iIntValue18 = ((Integer) obj3).intValue();
                boxScope2.getClass();
                if ((iIntValue18 & 6) == 0) {
                    iIntValue18 |= composer15.K(boxScope2) ? 4 : 2;
                }
                if (composer15.p(iIntValue18 & 1, (iIntValue18 & 19) != 18)) {
                    OpaqueKey opaqueKey21 = ComposerKt.f7940a;
                    ImmersiveArticleTitlesUiModel immersiveArticleTitlesUiModel = immersiveArticleEventSectionUiModel.f58662i ? immersiveArticleEventSectionUiModel.f58658c : immersiveArticleEventSectionUiModel.d;
                    DTFunctionNameModifier dTFunctionNameModifier4 = new DTFunctionNameModifier("ImmersiveArticleEventView$lambda$1$0");
                    Alignment.f8582a.getClass();
                    Modifier modifierM = PaddingKt.m(boxScope2.g(dTFunctionNameModifier4, Alignment.Companion.f8587f), LVAppDesignKitTheme.l(composer15).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer15).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10);
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, composer15, 48);
                    int iHashCode3 = Long.hashCode(composer15.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer15.n();
                    Modifier modifierC3 = ComposedModifierKt.c(composer15, modifierM);
                    ComposeUiNode.b0.getClass();
                    Function0 function6 = ComposeUiNode.Companion.f9641b;
                    if (composer15.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer15.B();
                    if (composer15.getS()) {
                        composer15.C(function6);
                    } else {
                        composer15.o();
                    }
                    Updater.c(composer15, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer15, persistentCompositionLocalMapN3, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer15, Integer.valueOf(iHashCode3), ComposeUiNode.Companion.g);
                    Updater.b(composer15, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer15, modifierC3, ComposeUiNode.Companion.d);
                    String str4 = immersiveArticleTitlesUiModel.f58719b;
                    if (str4 == null) {
                        composer15.L(-1095275187);
                        composer15.F();
                        composer = composer15;
                    } else {
                        composer15.L(-1095275186);
                        TextStyle textStyle = LVAppDesignKitTheme.n(composer15).g;
                        long j3 = LVAppDesignKitTheme.c(composer15).f48361b.m;
                        TextAlign.f10959b.getClass();
                        TextKt.c(str4, null, j3, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle, composer15, 0, 0, 130042);
                        composer = composer15;
                        composer.F();
                    }
                    boolean zK = composer.K(immersiveArticleTitlesUiModel.f58718a);
                    Object objX = composer.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (zK || objX == composer$Companion$Empty$1) {
                        objX = SnapshotIntStateKt.a(Integer.MAX_VALUE);
                        composer.q(objX);
                    }
                    MutableIntState mutableIntState = (MutableIntState) objX;
                    Modifier modifierM2 = PaddingKt.m(columnScopeInstance.a(new DTFunctionNameModifier("ImmersiveArticleEventView$lambda$1$0"), 1.0f, false), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                    String str5 = immersiveArticleTitlesUiModel.f58718a;
                    TextStyle textStyle2 = LVAppDesignKitTheme.n(composer).d;
                    long j4 = LVAppDesignKitTheme.c(composer).f48361b.m;
                    TextAlign.f10959b.getClass();
                    int i8 = TextAlign.f10961e;
                    int iF = mutableIntState.f();
                    TextOverflow.f10989a.getClass();
                    int i9 = TextOverflow.f10991c;
                    TextAlign textAlign = new TextAlign(i8);
                    boolean zK2 = composer.K(mutableIntState);
                    Object objX2 = composer.x();
                    if (zK2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new q1(mutableIntState, i3);
                        composer.q(objX2);
                    }
                    Composer composer16 = composer;
                    TextKt.c(str5, modifierM2, j4, 0L, null, 0L, null, textAlign, 0L, i9, false, iF, 0, (Function1) objX2, textStyle2, composer16, 0, KyberEngine.KyberPolyBytes, 44024);
                    composer16.r();
                } else {
                    composer15.D();
                }
                return Unit.f71739a;
            case 24:
                Composer composer17 = (Composer) obj2;
                ((Integer) obj3).getClass();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey22 = ComposerKt.f7940a;
                TextKt.c(((ImmersiveArticleExpansionPanelUiModel) obj4).f58668b, PaddingKt.m(columnScopeInstance.a(new DTFunctionNameModifier("ExpansionPanelItem$lambda$5$3"), 1.0f, true), LVAppDesignKitTheme.l(composer17).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer17).f48416e, LVAppDesignKitTheme.l(composer17).f48417f, 2), LVAppDesignKitTheme.c(composer17).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer17).g, composer17, 0, 0, 131064);
                return Unit.f71739a;
            case 25:
                DatePickerState datePickerState = (DatePickerState) obj4;
                Composer composer18 = (Composer) obj2;
                int iIntValue19 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer18.p(iIntValue19 & 1, (iIntValue19 & 17) != 16)) {
                    OpaqueKey opaqueKey23 = ComposerKt.f7940a;
                    DatePickerDefaults datePickerDefaults = DatePickerDefaults.f6760a;
                    DatePickerColors datePickerColorsC = DatePickerDefaults.c(composer18);
                    TextFieldColors textFieldColors = datePickerColorsC.y;
                    long j5 = LVAppDesignKitTheme.c(composer18).f48361b.u;
                    long j6 = LVAppDesignKitTheme.c(composer18).f48361b.v;
                    long j7 = LVAppDesignKitTheme.c(composer18).f48361b.v;
                    long j8 = LVAppDesignKitTheme.c(composer18).f48361b.v;
                    long j9 = LVAppDesignKitTheme.c(composer18).f48361b.u;
                    long j10 = datePickerColorsC.f6751a;
                    long j11 = datePickerColorsC.f6752b;
                    long j12 = datePickerColorsC.f6753c;
                    long j13 = datePickerColorsC.d;
                    long j14 = datePickerColorsC.f6754e;
                    long j15 = datePickerColorsC.f6755f;
                    long j16 = datePickerColorsC.g;
                    long j17 = datePickerColorsC.f6756h;
                    long j18 = datePickerColorsC.f6758j;
                    long j19 = datePickerColorsC.f6759k;
                    long j20 = datePickerColorsC.m;
                    long j21 = datePickerColorsC.n;
                    long j22 = datePickerColorsC.o;
                    long j23 = datePickerColorsC.p;
                    long j24 = datePickerColorsC.q;
                    long j25 = datePickerColorsC.s;
                    long j26 = datePickerColorsC.v;
                    long j27 = datePickerColorsC.w;
                    long j28 = datePickerColorsC.x;
                    if (j9 == 16) {
                        j9 = datePickerColorsC.f6757i;
                    }
                    long j29 = j8 != 16 ? j8 : datePickerColorsC.l;
                    if (j7 == 16) {
                        j7 = datePickerColorsC.r;
                    }
                    long j30 = j5 != 16 ? j5 : datePickerColorsC.t;
                    if (j6 == 16) {
                        j6 = datePickerColorsC.u;
                    }
                    DatePickerKt.b(datePickerState, null, null, new DatePickerColors(j10, j11, j12, j13, j14, j15, j16, j17, j9, j18, j19, j29, j20, j21, j22, j23, j24, j7, j25, j30, j6, j26, j27, j28, textFieldColors, null), null, null, false, null, composer18, 1572864);
                } else {
                    composer18.D();
                }
                return Unit.f71739a;
            case 26:
                Function3 function7 = (Function3) obj4;
                Object obj5 = (ColumnScope) obj;
                Composer composer19 = (Composer) obj2;
                int iIntValue20 = ((Integer) obj3).intValue();
                obj5.getClass();
                if ((iIntValue20 & 6) == 0) {
                    iIntValue20 |= composer19.K(obj5) ? 4 : 2;
                }
                if (composer19.p(iIntValue20 & 1, (iIntValue20 & 19) != 18)) {
                    OpaqueKey opaqueKey24 = ComposerKt.f7940a;
                    LVModalBottomSheetKt.d(composer19, 0);
                    function7.A(obj5, composer19, Integer.valueOf(iIntValue20 & 14));
                } else {
                    composer19.D();
                }
                return Unit.f71739a;
            case 27:
                Function4 function8 = (Function4) obj4;
                Object obj6 = (LazyItemScope) obj;
                Composer composer20 = (Composer) obj2;
                int iIntValue21 = ((Integer) obj3).intValue();
                if ((iIntValue21 & 6) == 0) {
                    iIntValue21 |= composer20.K(obj6) ? 4 : 2;
                }
                if (composer20.p(iIntValue21 & 1, (iIntValue21 & 19) != 18)) {
                    OpaqueKey opaqueKey25 = ComposerKt.f7940a;
                    function8.g(obj6, 0, composer20, Integer.valueOf((iIntValue21 & 14) | 48));
                } else {
                    composer20.D();
                }
                return Unit.f71739a;
            case 28:
                return a(obj, obj2, obj3);
            default:
                MovableContent movableContent = (MovableContent) obj4;
                Composer composer21 = (Composer) obj2;
                int iIntValue22 = ((Integer) obj3).intValue();
                if ((iIntValue22 & 6) == 0) {
                    iIntValue22 |= (iIntValue22 & 8) == 0 ? composer21.K(obj) : composer21.y(obj) ? 4 : 2;
                }
                if (composer21.p(iIntValue22 & 1, (iIntValue22 & 19) != 18)) {
                    OpaqueKey opaqueKey26 = ComposerKt.f7940a;
                    composer21.s(movableContent, obj);
                } else {
                    composer21.D();
                }
                return Unit.f71739a;
        }
    }
}
