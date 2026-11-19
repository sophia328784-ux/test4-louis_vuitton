package defpackage;

import android.content.Intent;
import android.net.Uri;
import android.os.Parcelable;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.text.selection.SelectionMagnifierKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MovableContent;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.core.app.ShareCompat;
import androidx.core.content.FileProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.ViewModelStoreProvider;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.navigation3.runtime.NavEntry;
import androidx.navigation3.scene.ComposableSingletons$SceneSetupNavEntryDecoratorKt;
import androidx.navigation3.scene.SceneSetupNavEntryDecoratorKt;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.compose.LocalSavedStateRegistryOwnerKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.networkbench.agent.impl.harvest.InitUrlConnection;
import com.sightcall.advancedannotations.domain.settings.SettingsInteractorImpl;
import com.sightcall.libraries.archi.nucleus.Action;
import com.sightcall.libraries.archi.nucleus.Nucleus;
import com.sightcall.libraries.archi.nucleus.NucleusReducerBuilder;
import com.vuitton.android.R;
import com.vuitton.android.data.net.interceptor.AddSfidAndSlasTokenInterceptorKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVTagKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationPushCardContent;
import com.vuitton.android.designkit.ui.theme.molecules.LVPushCardKt;
import com.vuitton.android.presentation.chat.ChatAttachable;
import com.vuitton.android.presentation.contact.compose.ContactUsMethod;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.link.LinkHandler;
import com.vuitton.android.presentation.screen.authentication.common.components.NativeRegisterPasswordCheckKt;
import com.vuitton.android.presentation.screen.authentication.common.validation.PasswordValidationState;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterViewState;
import com.vuitton.android.presentation.screen.cart.components.sections.NativeCartOrderDetailKt;
import com.vuitton.android.presentation.screen.cart.models.NativeCartViewState;
import com.vuitton.android.presentation.screen.osa.models.OsaFormItemUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.personalselections.PersonalSelectionsActivity;
import com.vuitton.android.presentation.screen.plp.models.FocusedProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.PLPTrackingUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.PLPCategoryViewModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBffScreenKt;
import com.vuitton.android.presentation.screen.repairs.models.bff.AppointmentInformationUiModel;
import com.vuitton.android.presentation.screen.storemode.components.catalog.StoreModeLevel1ScreenKt;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import com.vuitton.android.presentation.screen.thankyou.models.CheckoutConfirmationDetailUiModel;
import com.vuitton.android.presentation.screen.thankyou.models.ShippingMethodAdditionalInformationUiModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleActivity;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModel;
import com.vuitton.android.presentation.screen.wishlist.components.WishlistScreenKt;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistSummaryUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistViewState;
import com.vuitton.foundation.logger.LegacyLogger;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.lg0;
import java.io.File;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Pair;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import kotlinx.coroutines.sync.SemaphoreAndMutexImpl;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.Json;
import lv.nfc.reader.utils.LVConstants;
import net.rtccloud.sdk.Call;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class xe0 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81114b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f81115c;

    public /* synthetic */ xe0(Object obj, int i2) {
        this.f81114b = i2;
        this.f81115c = obj;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        Object failure;
        Uri uriForFile;
        Object failure2;
        SnapshotStateList snapshotStateList;
        int i2 = this.f81114b;
        LegacyLogger legacyLogger = LegacyLogger.f66205a;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        int i3 = 2;
        int i4 = 4;
        int i5 = 1;
        Object obj4 = this.f81115c;
        switch (i2) {
            case 0:
                NativeCartViewState nativeCartViewState = (NativeCartViewState) obj4;
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    SpacerKt.a(composer, SizeKt.f(new DTFunctionNameModifier("NativeCartMainView$lambda$2$0$7"), LVAppDesignKitTheme.l(composer).f48419i));
                    NativeCartOrderDetailKt.a(nativeCartViewState, composer, 0);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                ((Integer) obj3).intValue();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                NativeRegisterPasswordCheckKt.b(null, (PasswordValidationState) ((SnapshotMutableStateImpl) ((NativeRegisterViewState) obj4).f54029a.f53952b.d).getF10755b(), (Composer) obj2, 0, 1);
                return Unit.f71739a;
            case 2:
                return NucleusReducerBuilder.build$lambda$0((NucleusReducerBuilder) obj4, (Nucleus) obj, (Pair) obj2, (Action) obj3);
            case 3:
                ((Integer) obj3).getClass();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                Modifier modifierA = AspectRatioKt.a(new DTFunctionNameModifier("AppointmentDetailsCard$lambda$3$0$1"), 1.6f, true);
                String str = ((OsaFormItemUiModel) obj4).g;
                str.getClass();
                ContentScale.f9447a.getClass();
                ImageLoaderKt.b(modifierA, str, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, (Composer) obj2, 390, 2040);
                return Unit.f71739a;
            case 4:
                Modifier modifierE = (Modifier) obj4;
                ColumnScope columnScope = (ColumnScope) obj;
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "OsaBottomSheetPrepare$lambda$0");
                }
                Modifier modifier = modifierE;
                columnScope.getClass();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    TextKt.c(StringResources_androidKt.c(composer2, R.string.osa_modal_text), PaddingKt.m(modifier, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, 7), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).g, composer2, 0, 0, 131068);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 5:
                PLPCategoryViewModel pLPCategoryViewModel = (PLPCategoryViewModel) obj4;
                PlpProductUiModel plpProductUiModel = (PlpProductUiModel) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                String str2 = (String) obj3;
                plpProductUiModel.getClass();
                str2.getClass();
                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                String str3 = ((PlpProductUiModel.SkuDataUiModel) plpProductUiModel.f62934a.getF10755b()).f62943a;
                companion.getClass();
                SkuId.Companion companion2 = SkuId.INSTANCE;
                pLPCategoryViewModel.O0(new PLPTrackingUiModel.LongPressedEvent(str3, str2, null));
                pLPCategoryViewModel.C1(new FocusedProductUiModel(plpProductUiModel, iIntValue3));
                return Unit.f71739a;
            case 6:
                PLPViewModel pLPViewModel = (PLPViewModel) obj4;
                PlpProductUiModel plpProductUiModel2 = (PlpProductUiModel) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                String str4 = (String) obj3;
                plpProductUiModel2.getClass();
                str4.getClass();
                SkuIdUiModel.Companion companion3 = SkuIdUiModel.f61763c;
                String str5 = ((PlpProductUiModel.SkuDataUiModel) plpProductUiModel2.f62934a.getF10755b()).f62943a;
                companion3.getClass();
                SkuId.Companion companion4 = SkuId.INSTANCE;
                pLPViewModel.O0(new PLPTrackingUiModel.LongPressedEvent(str5, str4, null));
                pLPViewModel.C1(new FocusedProductUiModel(plpProductUiModel2, iIntValue4));
                return Unit.f71739a;
            case 7:
                ProductUiModel productUiModel = (ProductUiModel) obj4;
                Composer composer3 = (Composer) obj2;
                int iIntValue5 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer3.p(iIntValue5 & 1, (iIntValue5 & 17) != 16)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    String str6 = productUiModel.f61738f;
                    if (str6 == null || str6.length() <= 0) {
                        composer3.L(-1973817481);
                        composer3.F();
                    } else {
                        composer3.L(-1974337382);
                        LVTagKt.a(ModifierExtKt.e(PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(composer3).f48416e, LVAppDesignKitTheme.l(composer3).f48417f, LVAppDesignKitTheme.l(composer3).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), "pdp_commercialTag_view"), null, productUiModel.f61738f, composer3, 0, 26);
                        composer3.F();
                    }
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 8:
                PersonalSelectionsActivity personalSelectionsActivity = (PersonalSelectionsActivity) obj4;
                ContactUsMethod contactUsMethod = (ContactUsMethod) obj;
                int iIntValue6 = ((Integer) obj2).intValue();
                int iIntValue7 = ((Integer) obj3).intValue();
                PersonalSelectionsActivity.Companion companion5 = PersonalSelectionsActivity.s;
                contactUsMethod.getClass();
                LinkHandler linkHandler = personalSelectionsActivity.p;
                if (linkHandler == null) {
                    Intrinsics.h("linkHandler");
                    throw null;
                }
                ChatAttachable chatAttachable = personalSelectionsActivity.r;
                if (chatAttachable != null) {
                    linkHandler.d(personalSelectionsActivity, contactUsMethod, iIntValue6, iIntValue7, chatAttachable);
                    return Unit.f71739a;
                }
                Intrinsics.h("chatAttachable");
                throw null;
            case 9:
                Animatable animatable = (Animatable) obj4;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer4 = (Composer) obj2;
                int iIntValue8 = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((iIntValue8 & 6) == 0) {
                    iIntValue8 |= composer4.K(paddingValues) ? 4 : 2;
                }
                if (composer4.p(iIntValue8 & 1, (iIntValue8 & 19) != 18)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    Modifier modifierH = PaddingKt.h(new DTFunctionNameModifier("QRCode3DScreen$lambda$5$5").o(SizeKt.f5052c), paddingValues);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode = Long.hashCode(composer4.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer4.n();
                    Modifier modifierC = ComposedModifierKt.c(composer4, modifierH);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer4.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer4.B();
                    if (composer4.getS()) {
                        composer4.C(function0);
                    } else {
                        composer4.o();
                    }
                    Function2 function2 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer4, measurePolicyD, function2);
                    Function2 function3 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer4, persistentCompositionLocalMapN, function3);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    Function2 function4 = ComposeUiNode.Companion.g;
                    Updater.c(composer4, numValueOf, function4);
                    Function1 function1 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer4, function1);
                    Function2 function5 = ComposeUiNode.Companion.d;
                    Modifier modifierK = PaddingKt.k(n00.c(composer4, modifierC, function5, "QRCode3DScreen$lambda$5$5", 1.0f), LVAppDesignKitTheme.l(composer4).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, composer4, 48);
                    int iHashCode2 = Long.hashCode(composer4.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer4.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer4, modifierK);
                    if (composer4.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer4.B();
                    if (composer4.getS()) {
                        composer4.C(function0);
                    } else {
                        composer4.o();
                    }
                    Updater.c(composer4, columnMeasurePolicyA, function2);
                    Updater.c(composer4, persistentCompositionLocalMapN2, function3);
                    cj.s(iHashCode2, composer4, function4, composer4, function1);
                    Updater.c(composer4, modifierC2, function5);
                    String strC = StringResources_androidKt.c(composer4, R.string.mylv_store_user_pass_speedy_title);
                    Modifier modifierA2 = AlphaKt.a(PaddingKt.m(new DTFunctionNameModifier("QRCode3DScreen$lambda$5$5"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer4).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer4).f48415c, 5), ((Number) animatable.d()).floatValue());
                    TextStyle textStyle = LVAppDesignKitTheme.n(composer4).f48429j;
                    TextAlign.f10959b.getClass();
                    int i6 = TextAlign.f10961e;
                    TextKt.c(strC, modifierA2, LVAppDesignKitTheme.c(composer4).f48361b.f48375b, 0L, null, 0L, null, new TextAlign(i6), 0L, 0, false, 0, 0, null, textStyle, composer4, 0, 0, 130040);
                    TextKt.c(StringResources_androidKt.c(composer4, R.string.mylv_store_user_pass_speedy_description), AlphaKt.a(PaddingKt.m(new DTFunctionNameModifier("QRCode3DScreen$lambda$5$5"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer4).f48415c, 7), ((Number) animatable.d()).floatValue()), LVAppDesignKitTheme.c(composer4).f48361b.f48375b, 0L, null, 0L, null, new TextAlign(i6), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer4).m, composer4, 0, 0, 130040);
                    composer4.r();
                    composer4.r();
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 10:
                Json json = (Json) obj4;
                Request request = (Request) obj;
                String str7 = (String) obj3;
                request.getClass();
                ((String) obj2).getClass();
                str7.getClass();
                Request.Builder builder = new Request.Builder(request);
                try {
                    Result.Companion companion6 = Result.INSTANCE;
                    if (StringsKt.k(request.f76969a.b(), "account/login-on-activation", false)) {
                        BuiltinSerializersKt.e(StringCompanionObject.f71926a);
                        StringSerializer stringSerializer = StringSerializer.f75684a;
                        String strC2 = json.c(BuiltinSerializersKt.c(stringSerializer, stringSerializer), MapsKt.h(new Pair("accessToken", str7)));
                        RequestBody.Companion companion7 = RequestBody.f76978a;
                        MediaType.f76933e.getClass();
                        MediaType mediaTypeA = MediaType.Companion.a(InitUrlConnection.CONTENT_TYPE_VALUE);
                        companion7.getClass();
                        builder.c("POST", RequestBody.Companion.b(strC2, mediaTypeA));
                    }
                    failure = Unit.f71739a;
                    break;
                } catch (Throwable th) {
                    Result.Companion companion8 = Result.INSTANCE;
                    failure = new Result.Failure(th);
                }
                Throwable thA = Result.a(failure);
                if (thA != null) {
                    legacyLogger.c("UpdateRequestWithRefreshedTokenError", thA.getMessage(), null);
                }
                return new Request(builder);
            case 11:
                Logger logger = (Logger) obj4;
                Request request2 = (Request) obj;
                String str8 = (String) obj2;
                String str9 = (String) obj3;
                request2.getClass();
                str8.getClass();
                str9.getClass();
                Headers headers = request2.f76971c;
                return (headers.a(LVConstants.SLAS_ACCESS_TOKEN) == null && headers.a(LVConstants.SFID_ACCESS_TOKEN) == null) ? request2 : AddSfidAndSlasTokenInterceptorKt.b(request2, logger, str8, str9);
            case 12:
                AppointmentInformationUiModel appointmentInformationUiModel = (AppointmentInformationUiModel) obj4;
                Composer composer5 = (Composer) obj2;
                int iIntValue9 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer5.p(iIntValue9 & 1, (iIntValue9 & 17) != 16)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    String str10 = appointmentInformationUiModel.f64023c;
                    String str11 = appointmentInformationUiModel.f64024e;
                    String str12 = appointmentInformationUiModel.d;
                    if (str10 != null) {
                        composer5.L(1999299372);
                        RepairDetailBffScreenKt.m(StringResources_androidKt.c(composer5, R.string.dr_card1_video), CollectionsKt.O(appointmentInformationUiModel.f64023c), composer5, 0);
                        composer5.F();
                    } else {
                        composer5.L(1999475235);
                        composer5.F();
                    }
                    if (str12 == null && str11 == null) {
                        composer5.L(1999784739);
                        composer5.F();
                    } else {
                        composer5.L(1999572358);
                        RepairDetailBffScreenKt.m(StringResources_androidKt.c(composer5, R.string.dr_contact_info), ArraysKt.v(new String[]{str12, str11}), composer5, 0);
                        composer5.F();
                    }
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 13:
                SaveableStateHolder saveableStateHolder = (SaveableStateHolder) obj4;
                NavEntry navEntry = (NavEntry) obj;
                Composer composer6 = (Composer) obj2;
                int iIntValue10 = ((Integer) obj3).intValue();
                if ((iIntValue10 & 6) == 0) {
                    iIntValue10 |= composer6.K(navEntry) ? 4 : 2;
                }
                if (composer6.p(iIntValue10 & 1, (iIntValue10 & 19) != 18)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    saveableStateHolder.f(navEntry.f18398b, ComposableLambdaKt.b(121262920, new mc(navEntry, i5), composer6), composer6, 48);
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 14:
                Map map = (Map) obj4;
                NavEntry navEntry2 = (NavEntry) obj;
                Composer composer7 = (Composer) obj2;
                int iIntValue11 = ((Integer) obj3).intValue();
                if ((iIntValue11 & 6) == 0) {
                    iIntValue11 |= composer7.K(navEntry2) ? 4 : 2;
                }
                if (composer7.p(iIntValue11 & 1, (iIntValue11 & 19) != 18)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    Object obj5 = navEntry2.f18398b;
                    if (((Set) composer7.k(SceneSetupNavEntryDecoratorKt.f18411a)).contains(obj5)) {
                        composer7.L(1576267665);
                        composer7.F();
                    } else {
                        composer7.L(1574916499);
                        composer7.A(1159182959, obj5);
                        Object objX = composer7.x();
                        if (objX == composer$Companion$Empty$1) {
                            Object obj6 = map.get(obj5);
                            if (obj6 == null) {
                                ComposableSingletons$SceneSetupNavEntryDecoratorKt.f18407a.getClass();
                                ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(1032736913, true, new d3(new MovableContent(ComposableSingletons$SceneSetupNavEntryDecoratorKt.f18408b), 29));
                                map.put(obj5, composableLambdaImpl);
                                obj6 = composableLambdaImpl;
                            }
                            objX = (Function3) obj6;
                            composer7.q(objX);
                        }
                        ((Function3) objX).A(ComposableLambdaKt.b(-804085656, new mc(navEntry2, i3), composer7), composer7, 54);
                        composer7.I();
                        composer7.F();
                    }
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 15:
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = SemaphoreAndMutexImpl.d;
                ((SemaphoreAndMutexImpl) obj4).release();
                return Unit.f71739a;
            case 16:
                return SettingsInteractorImpl.reducer$lambda$0((SettingsInteractorImpl) obj4, (Nucleus) obj, (Pair) obj2, (Action) obj3);
            case 17:
                WishlistSummaryUiModel wishlistSummaryUiModel = (WishlistSummaryUiModel) obj4;
                RowScope rowScope = (RowScope) obj;
                Composer composer8 = (Composer) obj2;
                int iIntValue12 = ((Integer) obj3).intValue();
                float f2 = StoreModeLevel1ScreenKt.f64871a;
                rowScope.getClass();
                if ((iIntValue12 & 6) == 0) {
                    iIntValue12 |= composer8.K(rowScope) ? 4 : 2;
                }
                if (composer8.p(iIntValue12 & 1, (iIntValue12 & 19) != 18)) {
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    ConfigurationPushCardContent configurationPushCardContent = LVAppDesignKitTheme.i(composer8).f48651a;
                    ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-1241779776, new ll0(wishlistSummaryUiModel, 21), composer8);
                    String strC3 = StringResources_androidKt.c(composer8, R.string.store_mode_your_wishlist);
                    int i7 = wishlistSummaryUiModel.f65745a;
                    LVPushCardKt.b(rowScope, configurationPushCardContent, null, composableLambdaImplB, strC3, StringResources_androidKt.a(R.plurals.store_mode_number_of_items, i7, new Object[]{Integer.valueOf(i7)}, composer8), null, composer8, (iIntValue12 & 14) | 3072, 34);
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 18:
                TextFieldSelectionManager textFieldSelectionManager = (TextFieldSelectionManager) obj4;
                Modifier modifierE2 = (Modifier) obj;
                Composer composer9 = (Composer) obj2;
                ((Integer) obj3).getClass();
                if (modifierE2 != null) {
                    modifierE2 = a.e(modifierE2, "textFieldMagnifier$lambda$0");
                }
                composer9.L(1980580247);
                OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                Density density = (Density) composer9.k(CompositionLocalsKt.f10031h);
                Object objX2 = composer9.x();
                if (objX2 == composer$Companion$Empty$1) {
                    IntSize.f11020b.getClass();
                    objX2 = SnapshotStateKt.g(new IntSize(0L));
                    composer9.q(objX2);
                }
                MutableState mutableState = (MutableState) objX2;
                boolean zY = composer9.y(textFieldSelectionManager);
                Object objX3 = composer9.x();
                if (zY || objX3 == composer$Companion$Empty$1) {
                    objX3 = new p01(textFieldSelectionManager, mutableState, 12);
                    composer9.q(objX3);
                }
                final Function0 function6 = (Function0) objX3;
                boolean zK = composer9.K(density);
                Object objX4 = composer9.x();
                if (zK || objX4 == composer$Companion$Empty$1) {
                    objX4 = new j1(density, mutableState, i4);
                    composer9.q(objX4);
                }
                final Function1 function7 = (Function1) objX4;
                AnimationVector2D animationVector2D = SelectionMagnifierKt.f6432a;
                Modifier modifierA3 = ComposedModifierKt.a(modifierE2, InspectableValueKt.f10100a, new Function3() { // from class: androidx.compose.foundation.text.selection.c
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj7, Object obj8, Object obj9) {
                        Modifier modifier2 = (Modifier) obj7;
                        Composer composer10 = (Composer) obj8;
                        ((Integer) obj9).getClass();
                        AnimationVector2D animationVector2D2 = SelectionMagnifierKt.f6432a;
                        if (modifier2 != null) {
                            modifier2.o(new DTFunctionNameModifier("animatedSelectionMagnifier$lambda$0"));
                        }
                        composer10.L(759876635);
                        OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                        Object objX5 = composer10.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        if (objX5 == composer$Companion$Empty$2) {
                            objX5 = SnapshotStateKt.e(function6);
                            composer10.q(objX5);
                        }
                        State state = (State) objX5;
                        Object objX6 = composer10.x();
                        if (objX6 == composer$Companion$Empty$2) {
                            Animatable animatable2 = new Animatable(new Offset(((Offset) state.getF10755b()).f8808a), SelectionMagnifierKt.f6433b, new Offset(SelectionMagnifierKt.f6434c), null, 8, null);
                            composer10.q(animatable2);
                            objX6 = animatable2;
                        }
                        Animatable animatable3 = (Animatable) objX6;
                        Unit unit = Unit.f71739a;
                        boolean zY2 = composer10.y(animatable3);
                        Object objX7 = composer10.x();
                        if (zY2 || objX7 == composer$Companion$Empty$2) {
                            objX7 = new SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1(state, animatable3, null);
                            composer10.q(objX7);
                        }
                        EffectsKt.e(composer10, unit, (Function2) objX7);
                        AnimationState animationState = animatable3.f3774c;
                        boolean zK2 = composer10.K(animationState);
                        Object objX8 = composer10.x();
                        if (zK2 || objX8 == composer$Companion$Empty$2) {
                            objX8 = new lg0(animationState, 1);
                            composer10.q(objX8);
                        }
                        Modifier modifier3 = (Modifier) function7.invoke((Function0) objX8);
                        composer10.F();
                        return modifier3;
                    }
                });
                composer9.F();
                return modifierA3;
            case 19:
                CheckoutConfirmationDetailUiModel checkoutConfirmationDetailUiModel = (CheckoutConfirmationDetailUiModel) obj4;
                Composer composer10 = (Composer) obj2;
                int iIntValue13 = ((Integer) obj3).intValue();
                float f3 = ThankYouScreenKt.f65243a;
                ((ColumnScope) obj).getClass();
                if (composer10.p(iIntValue13 & 1, (iIntValue13 & 17) != 16)) {
                    OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                    Modifier modifierB = WindowInsetsPadding_androidKt.b(PaddingKt.i(n00.g("SuccessContent$lambda$1", "thankYou_additionalInfoDescription_text"), LVAppDesignKitTheme.l(composer10).f48417f));
                    ShippingMethodAdditionalInformationUiModel shippingMethodAdditionalInformationUiModel = checkoutConfirmationDetailUiModel.d.f65277e;
                    String str13 = shippingMethodAdditionalInformationUiModel != null ? shippingMethodAdditionalInformationUiModel.f65273b : null;
                    if (str13 == null) {
                        str13 = "";
                    }
                    TextKt.c(str13, modifierB, 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer10, 0, 0, 262140);
                } else {
                    composer10.D();
                }
                return Unit.f71739a;
            case 20:
                TheLookImmersiveArticleActivity theLookImmersiveArticleActivity = (TheLookImmersiveArticleActivity) obj4;
                String str14 = (String) obj;
                String str15 = (String) obj2;
                String str16 = (String) obj3;
                TheLookImmersiveArticleActivity.Companion companion9 = TheLookImmersiveArticleActivity.q;
                cj.z(str14, str15, str16);
                String strHb = ((TheLookImmersiveArticleViewModel) theLookImmersiveArticleActivity.p.getF71699b()).hb(str15);
                String string = theLookImmersiveArticleActivity.getString(R.string.fashionshow_share_text);
                string.getClass();
                StringBuilder sb = new StringBuilder("Louis Vuitton - ");
                sb.append(str16);
                sb.append(" - ");
                sb.append(str15);
                String strL = tr.l(sb, "\r\n", string, "\r\n", strHb);
                String packageName = theLookImmersiveArticleActivity.getPackageName();
                packageName.getClass();
                File file = new File(str14);
                try {
                    Result.Companion companion10 = Result.INSTANCE;
                    uriForFile = FileProvider.getUriForFile(theLookImmersiveArticleActivity, packageName.concat(".fileprovider"), file);
                    try {
                        failure2 = Unit.f71739a;
                    } catch (Throwable th2) {
                        th = th2;
                        Result.Companion companion11 = Result.INSTANCE;
                        failure2 = new Result.Failure(th);
                    }
                    break;
                } catch (Throwable th3) {
                    th = th3;
                    uriForFile = null;
                }
                Throwable thA2 = Result.a(failure2);
                if (thA2 == null) {
                    ShareCompat.IntentBuilder intentBuilder = new ShareCompat.IntentBuilder(theLookImmersiveArticleActivity);
                    intentBuilder.f12004c = strL;
                    Intent intent = intentBuilder.f12003b;
                    intent.putExtra("android.intent.extra.TEXT", (CharSequence) strL);
                    intentBuilder.d = null;
                    if (uriForFile != null) {
                        ArrayList arrayList = new ArrayList();
                        intentBuilder.d = arrayList;
                        arrayList.add(uriForFile);
                    }
                    intent.setType("image/*");
                    ArrayList arrayList2 = intentBuilder.d;
                    if (arrayList2 == null || arrayList2.size() <= 1) {
                        intent.setAction("android.intent.action.SEND");
                        ArrayList arrayList3 = intentBuilder.d;
                        if (arrayList3 == null || arrayList3.isEmpty()) {
                            intent.removeExtra("android.intent.extra.STREAM");
                            intent.setClipData(null);
                            intent.setFlags(intent.getFlags() & (-2));
                        } else {
                            intent.putExtra("android.intent.extra.STREAM", (Parcelable) intentBuilder.d.get(0));
                            ShareCompat.a(intent, intentBuilder.d);
                        }
                    } else {
                        intent.setAction("android.intent.action.SEND_MULTIPLE");
                        intent.putParcelableArrayListExtra("android.intent.extra.STREAM", intentBuilder.d);
                        ShareCompat.a(intent, intentBuilder.d);
                    }
                    intentBuilder.f12002a.startActivity(Intent.createChooser(intent, intentBuilder.f12004c, null));
                } else {
                    legacyLogger.c("ShareUtils", thA2.getMessage(), thA2);
                }
                return Unit.f71739a;
            case 21:
                ViewModelStoreProvider viewModelStoreProvider = (ViewModelStoreProvider) obj4;
                NavEntry navEntry3 = (NavEntry) obj;
                Composer composer11 = (Composer) obj2;
                int iIntValue14 = ((Integer) obj3).intValue();
                if ((iIntValue14 & 6) == 0) {
                    iIntValue14 |= composer11.K(navEntry3) ? 4 : 2;
                }
                if (composer11.p(iIntValue14 & 1, (iIntValue14 & 19) != 18)) {
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                    Object obj7 = navEntry3.f18398b;
                    SavedStateRegistryOwner savedStateRegistryOwner = (SavedStateRegistryOwner) composer11.k(LocalSavedStateRegistryOwnerKt.f19789a);
                    boolean zK2 = composer11.K(viewModelStoreProvider) | composer11.K(obj7) | composer11.K(savedStateRegistryOwner);
                    Object objX5 = composer11.x();
                    if (zK2 || objX5 == composer$Companion$Empty$1) {
                        objX5 = ViewModelStoreProvider.d(viewModelStoreProvider, obj7, savedStateRegistryOwner);
                        composer11.q(objX5);
                    }
                    ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) objX5;
                    boolean zY2 = composer11.y(viewModelStoreProvider) | composer11.y(obj7);
                    Object objX6 = composer11.x();
                    if (zY2 || objX6 == composer$Companion$Empty$1) {
                        objX6 = new rp0(viewModelStoreProvider, obj7, 7);
                        composer11.q(objX6);
                    }
                    EffectsKt.c(viewModelStoreOwner, (Function1) objX6, composer11);
                    CompositionLocalKt.a(LocalViewModelStoreOwner.f13603a.c(viewModelStoreOwner), ComposableLambdaKt.b(1108866301, new mc(navEntry3, 3), composer11), composer11, 56);
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
            default:
                WishlistViewState wishlistViewState = (WishlistViewState) obj4;
                Composer composer12 = (Composer) obj2;
                int iIntValue15 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer12.p(iIntValue15 & 1, (iIntValue15 & 17) != 16)) {
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                    WishlistUiModel wishlistUiModel = wishlistViewState.d;
                    WishlistScreenKt.a((wishlistUiModel == null || (snapshotStateList = wishlistUiModel.f65755a) == null) ? 0 : snapshotStateList.size(), composer12, 0);
                } else {
                    composer12.D();
                }
                return Unit.f71739a;
        }
    }
}
