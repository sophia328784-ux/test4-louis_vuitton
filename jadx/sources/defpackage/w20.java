package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.ModalBottomSheetKt;
import androidx.compose.material3.SheetState;
import androidx.compose.material3.SheetValue;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.internal.AnchoredDraggableKt;
import androidx.compose.material3.internal.DraggableAnchors;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import androidx.fragment.app.FragmentActivity;
import androidx.hilt.lifecycle.viewmodel.compose.HiltViewModelKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import androidx.navigation.compose.NavHostControllerKt;
import androidx.navigation3.runtime.NavBackStack;
import androidx.navigation3.runtime.NavKey;
import androidx.navigation3.runtime.RememberNavBackStackKt;
import androidx.navigation3.scene.OverlayScene;
import androidx.navigation3.scene.Scene;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.lightup.sdk.animation.CreatorProject;
import com.sightcall.livetranslation.domain.LiveTranslationInteractor;
import com.sightcall.livetranslation.domain.LiveTranslationInteractorImpl;
import com.sightcall.livetranslation.domain.LiveTranslationRepository;
import com.sightcall.mediacapture.presenter.MediaCaptureFragment;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVDragHandleKt;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.PreprodRouter;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.inappbanner.InAppBannerSupervisor;
import com.vuitton.android.presentation.link.models.ParsedLink;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.redirectlink.DeepLink;
import com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModel;
import com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModelImpl;
import com.vuitton.android.presentation.screen.account.inbox.InboxActivity;
import com.vuitton.android.presentation.screen.account.inbox.components.InboxComposableKt;
import com.vuitton.android.presentation.screen.account.lvpass.LVPassActivity;
import com.vuitton.android.presentation.screen.account.myicons.MyIconsActivity;
import com.vuitton.android.presentation.screen.account.myicons.components.MyIconsComposableKt;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationActivity;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivity;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivityRouter;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import com.vuitton.android.presentation.screen.authentication.models.AuthenticationTrackingUiModel;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.register.NativeRegisterFragment;
import com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterComposableKt;
import com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModel;
import com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModelImpl;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetKt;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetState;
import com.vuitton.android.presentation.screen.authentication.welcome.WelcomeViewModel;
import com.vuitton.android.presentation.screen.authentication.welcome.components.WelcomeComposableKt;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import com.vuitton.android.presentation.screen.authentication.welcome.model.WelcomeViewState;
import com.vuitton.android.presentation.screen.booking.MyExperiencesActivity;
import com.vuitton.android.presentation.screen.booking.a;
import com.vuitton.android.presentation.screen.cart.components.sections.NativeCartOrderDetailKt;
import com.vuitton.android.presentation.screen.cart.models.FormattedTaxDetailsUiModel;
import com.vuitton.android.presentation.screen.cart.models.NativeCartViewState;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.GridModes;
import com.vuitton.android.presentation.screen.certificates.CertificateActivity;
import com.vuitton.android.presentation.screen.connectivity.home.ConnectivityActivity;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.lightup.keepall.KeepAllDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModelKt;
import com.vuitton.android.presentation.screen.connectivity.watch.PairWatchV2Ui;
import com.vuitton.android.presentation.screen.exclusivesales.ExclusiveSalesActivity;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleHelper;
import com.vuitton.android.presentation.screen.immersivearticle.models.AssetArticleSectionUiModel;
import com.vuitton.android.presentation.screen.mylv.MyLvActivity;
import com.vuitton.android.presentation.screen.mylv.MyLvDestinations;
import com.vuitton.android.presentation.screen.mylv.MyLvDestinationsKt;
import com.vuitton.android.presentation.screen.mylv.components.MyLvComposableKt;
import com.vuitton.android.presentation.screen.options.OptionsActivity;
import com.vuitton.android.presentation.screen.options.appinfo.AppInfoViewModel;
import com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModel;
import com.vuitton.android.presentation.screen.options.legaltext.LegalTextActivity;
import com.vuitton.android.presentation.screen.options.legaltext.components.LegalTextComposableKt;
import com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModel;
import com.vuitton.android.presentation.screen.options.settings.SettingsActivity;
import com.vuitton.android.presentation.screen.orders.OrderActivity;
import com.vuitton.android.presentation.screen.orders.OrderDestinations;
import com.vuitton.android.presentation.screen.orders.OrderDestinationsKt;
import com.vuitton.android.presentation.screen.orders.components.detail.OrderDetailScreenKt;
import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModel;
import com.vuitton.android.presentation.screen.osa.models.OsaFormItemUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaItemUiModel;
import com.vuitton.android.presentation.screen.osa.models.StoreInformationItemUiModel;
import com.vuitton.android.presentation.screen.pdp.PdpActivity;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.screen.plp.activities.ExclusivePLPActivity;
import com.vuitton.android.presentation.screen.plp.components.composables.brandcontent.PLPCuratedTextComposableKt;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PLPViewState;
import com.vuitton.android.presentation.screen.privacy.PrivacyActivity;
import com.vuitton.android.presentation.screen.wishlist.WishlistActivity;
import com.vuitton.foundation.logger.LegacyLogger;
import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpPowerMode;
import dagger.hilt.android.internal.lifecycle.HiltViewModelFactory;
import defpackage.md;
import defpackage.ss;
import defpackage.tb0;
import defpackage.x60;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.flow.StateFlow;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class w20 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80734b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f80735c;

    public /* synthetic */ w20(Object obj, int i2) {
        this.f80734b = i2;
        this.f80735c = obj;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        SheetValue sheetValue;
        float f2;
        int i2;
        int i3 = this.f80734b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        int i4 = 1;
        Object obj3 = this.f80735c;
        switch (i3) {
            case 0:
                Composer composer = (Composer) obj;
                ((Integer) obj2).getClass();
                composer.L(645965608);
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Modifier modifierA = AspectRatioKt.a(new DTFunctionNameModifier("ImmersiveArticleAssetView$lambda$2$0$0$1$0"), ImmersiveArticleHelper.a(((AssetArticleSectionUiModel) obj3).g), true);
                composer.F();
                return modifierA;
            case 1:
                final InAppBannerSupervisor inAppBannerSupervisor = (InAppBannerSupervisor) obj3;
                Composer composer2 = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                Set set = InAppBannerSupervisor.f51567e;
                if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-1179902982, new Function2() { // from class: com.vuitton.android.presentation.inappbanner.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj4, Object obj5) {
                            Composer composer3 = (Composer) obj4;
                            int iIntValue2 = ((Integer) obj5).intValue();
                            Set set2 = InAppBannerSupervisor.f51567e;
                            if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                InAppBannerSupervisor inAppBannerSupervisor2 = inAppBannerSupervisor;
                                InAppBannerStateHolder inAppBannerStateHolder = inAppBannerSupervisor2.f51568a;
                                StateFlow stateFlow = inAppBannerStateHolder.f51566c;
                                boolean zY = composer3.y(inAppBannerStateHolder);
                                Object objX = composer3.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (zY || objX == composer$Companion$Empty$2) {
                                    InAppBannerSupervisor$addInAppBannerContainerViewTo$composeView$1$1$1$1$1 inAppBannerSupervisor$addInAppBannerContainerViewTo$composeView$1$1$1$1$1 = new InAppBannerSupervisor$addInAppBannerContainerViewTo$composeView$1$1$1$1$1(0, inAppBannerStateHolder, InAppBannerStateHolder.class, "consumeInAppBannerAnimation", "consumeInAppBannerAnimation()V", 0);
                                    composer3.q(inAppBannerSupervisor$addInAppBannerContainerViewTo$composeView$1$1$1$1$1);
                                    objX = inAppBannerSupervisor$addInAppBannerContainerViewTo$composeView$1$1$1$1$1;
                                }
                                Function0 function0 = (Function0) ((KFunction) objX);
                                InAppBannerStateHolder inAppBannerStateHolder2 = inAppBannerSupervisor2.f51568a;
                                boolean zY2 = composer3.y(inAppBannerStateHolder2);
                                Object objX2 = composer3.x();
                                if (zY2 || objX2 == composer$Companion$Empty$2) {
                                    InAppBannerSupervisor$addInAppBannerContainerViewTo$composeView$1$1$1$2$1 inAppBannerSupervisor$addInAppBannerContainerViewTo$composeView$1$1$1$2$1 = new InAppBannerSupervisor$addInAppBannerContainerViewTo$composeView$1$1$1$2$1(0, inAppBannerStateHolder2, InAppBannerStateHolder.class, "clearInAppBanner", "clearInAppBanner()V", 0);
                                    composer3.q(inAppBannerSupervisor$addInAppBannerContainerViewTo$composeView$1$1$1$2$1);
                                    objX2 = inAppBannerSupervisor$addInAppBannerContainerViewTo$composeView$1$1$1$2$1;
                                }
                                Function0 function1 = (Function0) ((KFunction) objX2);
                                InAppBannerStateHolder inAppBannerStateHolder3 = inAppBannerSupervisor2.f51568a;
                                boolean zY3 = composer3.y(inAppBannerStateHolder3);
                                Object objX3 = composer3.x();
                                if (zY3 || objX3 == composer$Companion$Empty$2) {
                                    InAppBannerSupervisor$addInAppBannerContainerViewTo$composeView$1$1$1$3$1 inAppBannerSupervisor$addInAppBannerContainerViewTo$composeView$1$1$1$3$1 = new InAppBannerSupervisor$addInAppBannerContainerViewTo$composeView$1$1$1$3$1(0, inAppBannerStateHolder3, InAppBannerStateHolder.class, "clearInAppBanner", "clearInAppBanner()V", 0);
                                    composer3.q(inAppBannerSupervisor$addInAppBannerContainerViewTo$composeView$1$1$1$3$1);
                                    objX3 = inAppBannerSupervisor$addInAppBannerContainerViewTo$composeView$1$1$1$3$1;
                                }
                                InAppBannerComposableKt.a(stateFlow, function0, function1, (Function0) ((KFunction) objX3), composer3, 0);
                            } else {
                                composer3.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer2), composer2, 48);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 2:
                final InboxActivity inboxActivity = (InboxActivity) obj3;
                Composer composer3 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                InboxActivity.Companion companion = InboxActivity.s;
                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(1254335158, new Function2() { // from class: com.vuitton.android.presentation.screen.account.inbox.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj4, Object obj5) {
                            InboxActivity inboxActivity2 = inboxActivity;
                            ViewModelLazy viewModelLazy = inboxActivity2.r;
                            Composer composer4 = (Composer) obj4;
                            int iIntValue3 = ((Integer) obj5).intValue();
                            InboxActivity.Companion companion2 = InboxActivity.s;
                            if (composer4.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                InboxViewModel inboxViewModelH = inboxActivity2.H();
                                PermissionsViewModel permissionsViewModel = (PermissionsViewModel) viewModelLazy.getF71699b();
                                boolean zY = composer4.y(inboxActivity2);
                                Object objX = composer4.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (zY || objX == composer$Companion$Empty$2) {
                                    InboxActivity$onCreate$1$1$1$1 inboxActivity$onCreate$1$1$1$1 = new InboxActivity$onCreate$1$1$1$1(0, inboxActivity2, InboxActivity.class, "finish", "finish()V", 0);
                                    composer4.q(inboxActivity$onCreate$1$1$1$1);
                                    objX = inboxActivity$onCreate$1$1$1$1;
                                }
                                KFunction kFunction = (KFunction) objX;
                                PermissionsViewModel permissionsViewModel2 = (PermissionsViewModel) viewModelLazy.getF71699b();
                                boolean zY2 = composer4.y(permissionsViewModel2);
                                Object objX2 = composer4.x();
                                if (zY2 || objX2 == composer$Companion$Empty$2) {
                                    InboxActivity$onCreate$1$1$2$1 inboxActivity$onCreate$1$1$2$1 = new InboxActivity$onCreate$1$1$2$1(0, permissionsViewModel2, PermissionsViewModel.class, "onActivateNotificationsClicked", "onActivateNotificationsClicked()V", 0);
                                    composer4.q(inboxActivity$onCreate$1$1$2$1);
                                    objX2 = inboxActivity$onCreate$1$1$2$1;
                                }
                                KFunction kFunction2 = (KFunction) objX2;
                                boolean zY3 = composer4.y(inboxActivity2);
                                Object objX3 = composer4.x();
                                if (zY3 || objX3 == composer$Companion$Empty$2) {
                                    InboxActivity$onCreate$1$1$3$1 inboxActivity$onCreate$1$1$3$1 = new InboxActivity$onCreate$1$1$3$1(0, inboxActivity2, InboxActivity.class, "navigateToPrivacyPolicy", "navigateToPrivacyPolicy()V", 0);
                                    composer4.q(inboxActivity$onCreate$1$1$3$1);
                                    objX3 = inboxActivity$onCreate$1$1$3$1;
                                }
                                KFunction kFunction3 = (KFunction) objX3;
                                boolean zY4 = composer4.y(inboxActivity2);
                                Object objX4 = composer4.x();
                                if (zY4 || objX4 == composer$Companion$Empty$2) {
                                    InboxActivity$onCreate$1$1$4$1 inboxActivity$onCreate$1$1$4$1 = new InboxActivity$onCreate$1$1$4$1(1, inboxActivity2, InboxActivity.class, "onNotificationClicked", "onNotificationClicked(Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;)V", 0);
                                    composer4.q(inboxActivity$onCreate$1$1$4$1);
                                    objX4 = inboxActivity$onCreate$1$1$4$1;
                                }
                                KFunction kFunction4 = (KFunction) objX4;
                                boolean zY5 = composer4.y(inboxActivity2);
                                Object objX5 = composer4.x();
                                if (zY5 || objX5 == composer$Companion$Empty$2) {
                                    InboxActivity$onCreate$1$1$5$1 inboxActivity$onCreate$1$1$5$1 = new InboxActivity$onCreate$1$1$5$1(1, inboxActivity2, InboxActivity.class, "onNotificationLongClicked", "onNotificationLongClicked(Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;)V", 0);
                                    composer4.q(inboxActivity$onCreate$1$1$5$1);
                                    objX5 = inboxActivity$onCreate$1$1$5$1;
                                }
                                KFunction kFunction5 = (KFunction) objX5;
                                InboxViewModel inboxViewModelH2 = inboxActivity2.H();
                                boolean zY6 = composer4.y(inboxViewModelH2);
                                Object objX6 = composer4.x();
                                if (zY6 || objX6 == composer$Companion$Empty$2) {
                                    objX6 = new InboxActivity$onCreate$1$1$6$1(0, inboxViewModelH2, InboxViewModel.class, "closeNotificationPopup", "closeNotificationPopup()V", 0);
                                    composer4.q(objX6);
                                }
                                KFunction kFunction6 = (KFunction) objX6;
                                InboxViewModel inboxViewModelH3 = inboxActivity2.H();
                                boolean zY7 = composer4.y(inboxViewModelH3);
                                Object objX7 = composer4.x();
                                if (zY7 || objX7 == composer$Companion$Empty$2) {
                                    objX7 = new InboxActivity$onCreate$1$1$7$1(1, inboxViewModelH3, InboxViewModel.class, "onItemExpanded", "onItemExpanded(Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;)V", 0);
                                    composer4.q(objX7);
                                }
                                KFunction kFunction7 = (KFunction) objX7;
                                InboxViewModel inboxViewModelH4 = inboxActivity2.H();
                                boolean zY8 = composer4.y(inboxViewModelH4);
                                Object objX8 = composer4.x();
                                if (zY8 || objX8 == composer$Companion$Empty$2) {
                                    objX8 = new InboxActivity$onCreate$1$1$8$1(1, inboxViewModelH4, InboxViewModel.class, "onItemCollapsed", "onItemCollapsed(Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;)V", 0);
                                    composer4.q(objX8);
                                }
                                KFunction kFunction8 = (KFunction) objX8;
                                InboxViewModel inboxViewModelH5 = inboxActivity2.H();
                                boolean zY9 = composer4.y(inboxViewModelH5);
                                Object objX9 = composer4.x();
                                if (zY9 || objX9 == composer$Companion$Empty$2) {
                                    objX9 = new InboxActivity$onCreate$1$1$9$1(1, inboxViewModelH5, InboxViewModel.class, "deleteNotification", "deleteNotification(Ljava/lang/String;)V", 0);
                                    composer4.q(objX9);
                                }
                                KFunction kFunction9 = (KFunction) objX9;
                                InboxViewModel inboxViewModelH6 = inboxActivity2.H();
                                boolean zY10 = composer4.y(inboxViewModelH6);
                                Object objX10 = composer4.x();
                                if (zY10 || objX10 == composer$Companion$Empty$2) {
                                    objX10 = new InboxActivity$onCreate$1$1$10$1(0, inboxViewModelH6, InboxViewModel.class, "hideLongPressTooltip", "hideLongPressTooltip()V", 0);
                                    composer4.q(objX10);
                                }
                                KFunction kFunction10 = (KFunction) objX10;
                                InboxViewModel inboxViewModelH7 = inboxActivity2.H();
                                boolean zY11 = composer4.y(inboxViewModelH7);
                                Object objX11 = composer4.x();
                                if (zY11 || objX11 == composer$Companion$Empty$2) {
                                    objX11 = new InboxActivity$onCreate$1$1$11$1(0, inboxViewModelH7, InboxViewModel.class, "showLongPressTooltip", "showLongPressTooltip()V", 0);
                                    composer4.q(objX11);
                                }
                                KFunction kFunction11 = (KFunction) objX11;
                                boolean zY12 = composer4.y(inboxActivity2);
                                Object objX12 = composer4.x();
                                if (zY12 || objX12 == composer$Companion$Empty$2) {
                                    InboxActivity$onCreate$1$1$12$1 inboxActivity$onCreate$1$1$12$1 = new InboxActivity$onCreate$1$1$12$1(0, inboxActivity2, InboxActivity.class, "batchSDKOpting", "batchSDKOpting()V", 0);
                                    composer4.q(inboxActivity$onCreate$1$1$12$1);
                                    objX12 = inboxActivity$onCreate$1$1$12$1;
                                }
                                KFunction kFunction12 = (KFunction) objX12;
                                Function0 function0 = (Function0) kFunction;
                                Function0 function1 = (Function0) kFunction2;
                                Function0 function2 = (Function0) kFunction3;
                                Function1 function3 = (Function1) kFunction4;
                                Function1 function4 = (Function1) kFunction5;
                                Function0 function5 = (Function0) kFunction6;
                                Function1 function6 = (Function1) kFunction7;
                                Function1 function7 = (Function1) kFunction8;
                                Function1 function8 = (Function1) kFunction9;
                                boolean zY13 = composer4.y(inboxActivity2);
                                Object objX13 = composer4.x();
                                if (zY13 || objX13 == composer$Companion$Empty$2) {
                                    objX13 = new ss(inboxActivity2, 21);
                                    composer4.q(objX13);
                                }
                                InboxComposableKt.a(inboxViewModelH, permissionsViewModel, function0, function1, function2, function3, function4, function5, function6, function7, function8, (Function0) objX13, (Function0) kFunction11, (Function0) kFunction10, (Function0) kFunction12, composer4, 0);
                            } else {
                                composer4.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer3), composer3, 48);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 3:
                ((Integer) obj2).getClass();
                ((InfiniteTransition) obj3).a((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 4:
                KeepAllDetailFragment keepAllDetailFragment = (KeepAllDetailFragment) obj3;
                LVLightUpPowerMode lVLightUpPowerMode = (LVLightUpPowerMode) obj;
                KeepAllDetailFragment.Companion companion2 = KeepAllDetailFragment.Y;
                lVLightUpPowerMode.getClass();
                keepAllDetailFragment.p0(lVLightUpPowerMode, (LVLightUpPowerMode) obj2);
                keepAllDetailFragment.j0().f56133f.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.OnModeClickedEvent(lVLightUpPowerMode.name(), LVLightUpDeviceType.KEEPALL)));
                return Unit.f71739a;
            case 5:
                WindowInsets windowInsets = (WindowInsets) obj3;
                Composer composer4 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer4.L(-1286885844);
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                composer4.F();
                return windowInsets;
            case 6:
                final LegalTextActivity legalTextActivity = (LegalTextActivity) obj3;
                Composer composer5 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                LegalTextActivity.Companion companion3 = LegalTextActivity.p;
                if (composer5.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(57174023, new Function2() { // from class: com.vuitton.android.presentation.screen.options.legaltext.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj4, Object obj5) {
                            Composer composer6 = (Composer) obj4;
                            int iIntValue4 = ((Integer) obj5).intValue();
                            LegalTextActivity.Companion companion4 = LegalTextActivity.p;
                            if (composer6.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                                LegalTextActivity legalTextActivity2 = legalTextActivity;
                                boolean booleanExtra = legalTextActivity2.getIntent().getBooleanExtra("PAGE_LEGAL_MENTION", false);
                                boolean zY = composer6.y(legalTextActivity2);
                                Object objX = composer6.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (zY || objX == composer$Companion$Empty$2) {
                                    LegalTextActivity$onCreate$1$1$1$1 legalTextActivity$onCreate$1$1$1$1 = new LegalTextActivity$onCreate$1$1$1$1(0, legalTextActivity2, LegalTextActivity.class, "finish", "finish()V", 0);
                                    composer6.q(legalTextActivity$onCreate$1$1$1$1);
                                    objX = legalTextActivity$onCreate$1$1$1$1;
                                }
                                Function0 function0 = (Function0) ((KFunction) objX);
                                boolean zY2 = composer6.y(legalTextActivity2);
                                Object objX2 = composer6.x();
                                if (zY2 || objX2 == composer$Companion$Empty$2) {
                                    LegalTextActivity$onCreate$1$1$2$1 legalTextActivity$onCreate$1$1$2$1 = new LegalTextActivity$onCreate$1$1$2$1(1, legalTextActivity2, LegalTextActivity.class, "onDeeplinkClicked", "onDeeplinkClicked(Ljava/lang/String;)V", 0);
                                    composer6.q(legalTextActivity$onCreate$1$1$2$1);
                                    objX2 = legalTextActivity$onCreate$1$1$2$1;
                                }
                                LegalTextComposableKt.a(null, booleanExtra, function0, (Function1) ((KFunction) objX2), composer6, 0);
                            } else {
                                composer6.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer5), composer5, 48);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 7:
                return LightUpDetailFragment.O((LightUpDetailFragment) obj3, (CreatorProject) obj, ((Integer) obj2).intValue());
            case 8:
                return LiveTranslationInteractorImpl.reducerConfigurator$lambda$0$7((LiveTranslationRepository) obj3, (LiveTranslationInteractor.State) obj, (LiveTranslationInteractor.GetLanguageList) obj2);
            case 9:
                ((TextDragObserver) obj3).d(((Offset) obj2).f8808a);
                return Unit.f71739a;
            case 10:
                return MediaCaptureFragment.onCreate$lambda$0((MediaCaptureFragment) obj3, (List) obj, (String) obj2);
            case 11:
                SheetState sheetState = (SheetState) obj3;
                float f3 = ModalBottomSheetKt.f7058a;
                DraggableAnchors draggableAnchorsA = AnchoredDraggableKt.a(new s5(Constraints.g(((Constraints) obj2).f10999a), (IntSize) obj, sheetState, 3));
                int i5 = ModalBottomSheetKt.WhenMappings.f7105a[((SheetValue) sheetState.f7211e.f7521h.getF10755b()).ordinal()];
                if (i5 == 1) {
                    sheetValue = SheetValue.Hidden;
                } else if (i5 == 2) {
                    sheetValue = SheetValue.PartiallyExpanded;
                    if (!draggableAnchorsA.d(sheetValue)) {
                        sheetValue = SheetValue.Expanded;
                        if (!draggableAnchorsA.d(sheetValue)) {
                            sheetValue = SheetValue.Hidden;
                        }
                    }
                } else {
                    if (i5 != 3) {
                        v40.g();
                        return null;
                    }
                    sheetValue = SheetValue.Expanded;
                    if (!draggableAnchorsA.d(sheetValue)) {
                        sheetValue = SheetValue.Hidden;
                    }
                }
                return new Pair(draggableAnchorsA, sheetValue);
            case 12:
                MyExperiencesActivity myExperiencesActivity = (MyExperiencesActivity) obj3;
                Composer composer6 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                MyExperiencesActivity.Companion companion4 = MyExperiencesActivity.r;
                if (composer6.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-1282815958, new a(myExperiencesActivity, i4), composer6), composer6, 48);
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 13:
                final MyIconsActivity myIconsActivity = (MyIconsActivity) obj3;
                Composer composer7 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                MyIconsActivity.Companion companion5 = MyIconsActivity.q;
                if (composer7.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-2065016226, new Function2() { // from class: com.vuitton.android.presentation.screen.account.myicons.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj4, Object obj5) {
                            Composer composer8 = (Composer) obj4;
                            int iIntValue6 = ((Integer) obj5).intValue();
                            MyIconsActivity.Companion companion6 = MyIconsActivity.q;
                            if (composer8.p(iIntValue6 & 1, (iIntValue6 & 3) != 2)) {
                                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                                MyIconsActivity myIconsActivity2 = myIconsActivity;
                                boolean zY = composer8.y(myIconsActivity2);
                                Object objX = composer8.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (zY || objX == composer$Companion$Empty$2) {
                                    MyIconsActivity$onCreate$1$1$1$1 myIconsActivity$onCreate$1$1$1$1 = new MyIconsActivity$onCreate$1$1$1$1(0, myIconsActivity2, MyIconsActivity.class, "getCurrentIcon", "getCurrentIcon()Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;", 0);
                                    composer8.q(myIconsActivity$onCreate$1$1$1$1);
                                    objX = myIconsActivity$onCreate$1$1$1$1;
                                }
                                Function0 function0 = (Function0) ((KFunction) objX);
                                boolean zY2 = composer8.y(myIconsActivity2);
                                Object objX2 = composer8.x();
                                if (zY2 || objX2 == composer$Companion$Empty$2) {
                                    MyIconsActivity$onCreate$1$1$2$1 myIconsActivity$onCreate$1$1$2$1 = new MyIconsActivity$onCreate$1$1$2$1(0, myIconsActivity2, MyIconsActivity.class, "finish", "finish()V", 0);
                                    composer8.q(myIconsActivity$onCreate$1$1$2$1);
                                    objX2 = myIconsActivity$onCreate$1$1$2$1;
                                }
                                Function0 function1 = (Function0) ((KFunction) objX2);
                                boolean zY3 = composer8.y(myIconsActivity2);
                                Object objX3 = composer8.x();
                                if (zY3 || objX3 == composer$Companion$Empty$2) {
                                    MyIconsActivity$onCreate$1$1$3$1 myIconsActivity$onCreate$1$1$3$1 = new MyIconsActivity$onCreate$1$1$3$1(1, myIconsActivity2, MyIconsActivity.class, "onUpdateLauncherIcon", "onUpdateLauncherIcon(Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;)V", 0);
                                    composer8.q(myIconsActivity$onCreate$1$1$3$1);
                                    objX3 = myIconsActivity$onCreate$1$1$3$1;
                                }
                                Function1 function2 = (Function1) ((KFunction) objX3);
                                boolean zY4 = composer8.y(myIconsActivity2);
                                Object objX4 = composer8.x();
                                if (zY4 || objX4 == composer$Companion$Empty$2) {
                                    objX4 = new tb0(myIconsActivity2, 9);
                                    composer8.q(objX4);
                                }
                                MyIconsComposableKt.a(function0, function1, function2, (Function1) objX4, composer8, 0);
                            } else {
                                composer8.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer7), composer7, 48);
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 14:
                final MyInformationActivity myInformationActivity = (MyInformationActivity) obj3;
                Composer composer8 = (Composer) obj;
                int iIntValue6 = ((Integer) obj2).intValue();
                MyInformationActivity.Companion companion6 = MyInformationActivity.r;
                if (composer8.p(iIntValue6 & 1, (iIntValue6 & 3) != 2)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-1370231440, new Function2() { // from class: com.vuitton.android.presentation.screen.account.myinformation.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj4, Object obj5) {
                            Composer composer9 = (Composer) obj4;
                            int iIntValue7 = ((Integer) obj5).intValue();
                            MyInformationActivity.Companion companion7 = MyInformationActivity.r;
                            if (composer9.p(iIntValue7 & 1, (iIntValue7 & 3) != 2)) {
                                OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                                Unit unit = Unit.f71739a;
                                MyInformationActivity myInformationActivity2 = myInformationActivity;
                                boolean zY = composer9.y(myInformationActivity2);
                                Object objX = composer9.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (zY || objX == composer$Companion$Empty$2) {
                                    objX = new MyInformationActivity$onCreate$1$1$1$1(myInformationActivity2, null);
                                    composer9.q(objX);
                                }
                                EffectsKt.e(composer9, unit, (Function2) objX);
                                NavBackStack navBackStackA = RememberNavBackStackKt.a(new NavKey[]{MyInformationRoute.MyInfo.INSTANCE}, composer9);
                                MyInformationViewModel myInformationViewModel = (MyInformationViewModel) myInformationActivity2.p.getF71699b();
                                boolean zY2 = composer9.y(myInformationActivity2);
                                Object objX2 = composer9.x();
                                if (zY2 || objX2 == composer$Companion$Empty$2) {
                                    MyInformationActivity$onCreate$1$1$2$1 myInformationActivity$onCreate$1$1$2$1 = new MyInformationActivity$onCreate$1$1$2$1(0, myInformationActivity2, MyInformationActivity.class, "finish", "finish()V", 0);
                                    composer9.q(myInformationActivity$onCreate$1$1$2$1);
                                    objX2 = myInformationActivity$onCreate$1$1$2$1;
                                }
                                Function0 function0 = (Function0) ((KFunction) objX2);
                                boolean zY3 = composer9.y(myInformationActivity2);
                                Object objX3 = composer9.x();
                                if (zY3 || objX3 == composer$Companion$Empty$2) {
                                    MyInformationActivity$onCreate$1$1$3$1 myInformationActivity$onCreate$1$1$3$1 = new MyInformationActivity$onCreate$1$1$3$1(1, myInformationActivity2, MyInformationActivity.class, "setFlagSecure", "setFlagSecure(Z)V", 0);
                                    composer9.q(myInformationActivity$onCreate$1$1$3$1);
                                    objX3 = myInformationActivity$onCreate$1$1$3$1;
                                }
                                NavBackStack.Companion companion8 = NavBackStack.INSTANCE;
                                MyInformationNavDisplayKt.a(navBackStackA, myInformationViewModel, function0, (Function1) ((KFunction) objX3), composer9, 0);
                            } else {
                                composer9.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer8), composer8, 48);
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 15:
                final MyLvActivity myLvActivity = (MyLvActivity) obj3;
                Composer composer9 = (Composer) obj;
                int iIntValue7 = ((Integer) obj2).intValue();
                MyLvActivity.Companion companion7 = MyLvActivity.s;
                if (composer9.p(iIntValue7 & 1, (iIntValue7 & 3) != 2)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-638252343, new Function2() { // from class: com.vuitton.android.presentation.screen.mylv.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj4, Object obj5) {
                            Intent intentA;
                            Intent intentA2;
                            final MyLvActivity myLvActivity2 = myLvActivity;
                            Lazy lazy = myLvActivity2.r;
                            Composer composer10 = (Composer) obj4;
                            int iIntValue8 = ((Integer) obj5).intValue();
                            MyLvActivity.Companion companion8 = MyLvActivity.s;
                            final int i6 = 1;
                            final int i7 = 0;
                            final int i8 = 2;
                            if (composer10.p(iIntValue8 & 1, (iIntValue8 & 3) != 2)) {
                                OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                                final Context context = (Context) composer10.k(AndroidCompositionLocals_androidKt.f9936b);
                                boolean zA = ((LoginState) SnapshotStateKt.b(((AuthenticationViewModel) myLvActivity2.p.getF71699b()).getX(), composer10).getF10755b()).a();
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (zA) {
                                    composer10.L(-355115066);
                                    ParsedLink parsedLink = (ParsedLink) lazy.getF71699b();
                                    if (parsedLink == null) {
                                        composer10.L(-354990168);
                                        composer10.F();
                                    } else {
                                        composer10.L(-354990167);
                                        if (parsedLink.equals(ParsedLink.MyOrders.f51667b)) {
                                            OrderActivity.q.getClass();
                                            intentA2 = OrderActivity.Companion.a(context, "list", null, null);
                                        } else if (parsedLink instanceof ParsedLink.OrderDetail) {
                                            OrderActivity.Companion companion9 = OrderActivity.q;
                                            String str = ((ParsedLink.OrderDetail) parsedLink).f51670b;
                                            companion9.getClass();
                                            context.getClass();
                                            str.getClass();
                                            Intent intent = new Intent(context, (Class<?>) OrderActivity.class);
                                            intent.putExtra("rootScreen", "list");
                                            intent.putExtra("shippingGroupId", str);
                                            intentA2 = intent;
                                        } else if (parsedLink.equals(ParsedLink.PersonalWishlist.f51675b)) {
                                            intentA2 = WishlistActivity.Companion.a(WishlistActivity.t, context, false, null, null, 14);
                                        } else if (parsedLink.equals(ParsedLink.MyLvPrivacySettings.f51666b)) {
                                            SettingsActivity.p.getClass();
                                            context.getClass();
                                            intentA2 = new Intent(context, (Class<?>) SettingsActivity.class);
                                        } else if (parsedLink.equals(ParsedLink.LvPassQrCode.f51664b)) {
                                            LVPassActivity.s.getClass();
                                            intentA2 = LVPassActivity.Companion.a(context);
                                        } else if (parsedLink.equals(ParsedLink.CertificatesList.f51655b)) {
                                            CertificateActivity.x.getClass();
                                            context.getClass();
                                            intentA2 = new Intent(context, (Class<?>) CertificateActivity.class);
                                        } else if (parsedLink instanceof ParsedLink.CertificateDetail) {
                                            intentA2 = CertificateActivity.Companion.a(CertificateActivity.x, context, ((ParsedLink.CertificateDetail) parsedLink).f51653b, 4);
                                        } else if (parsedLink.equals(ParsedLink.CertificateDiamondActivation.f51654b)) {
                                            intentA2 = CertificateActivity.Companion.a(CertificateActivity.x, context, null, 2);
                                        } else if (parsedLink.equals(ParsedLink.ExclusiveSection.f51659b)) {
                                            ExclusiveSalesActivity.q.getClass();
                                            context.getClass();
                                            intentA2 = new Intent(context, (Class<?>) ExclusiveSalesActivity.class);
                                        } else if (parsedLink instanceof ParsedLink.ExclusiveCategory) {
                                            ExclusivePLPActivity.Companion companion10 = ExclusivePLPActivity.p;
                                            String str2 = ((ParsedLink.ExclusiveCategory) parsedLink).f51657b;
                                            companion10.getClass();
                                            intentA2 = ExclusivePLPActivity.Companion.a(context, str2);
                                        } else if (parsedLink instanceof ParsedLink.ExclusiveProduct) {
                                            PdpActivity.Companion companion11 = PdpActivity.D;
                                            String str3 = ((ParsedLink.ExclusiveProduct) parsedLink).f51658b;
                                            SkuIdUiModel.Companion companion12 = SkuIdUiModel.f61763c;
                                            str3.getClass();
                                            companion11.getClass();
                                            intentA2 = PdpActivity.Companion.b(context, str3);
                                        } else if (parsedLink.equals(ParsedLink.Travels.f51686b)) {
                                            ConnectivityActivity.Companion companion13 = ConnectivityActivity.q;
                                            String host = DeepLink.TRAVELS.getHost();
                                            companion13.getClass();
                                            intentA2 = ConnectivityActivity.Companion.a(context, host);
                                        } else if (parsedLink instanceof ParsedLink.PairingV2) {
                                            ConnectivityActivity.Companion companion14 = ConnectivityActivity.q;
                                            ParsedLink.PairingV2 pairingV2 = (ParsedLink.PairingV2) parsedLink;
                                            PairWatchV2Ui pairWatchV2Ui = new PairWatchV2Ui(pairingV2.f51671b, pairingV2.f51672c, pairingV2.d);
                                            companion14.getClass();
                                            context.getClass();
                                            intentA2 = new Intent(context, (Class<?>) ConnectivityActivity.class);
                                            intentA2.putExtra("PAIRING_V2", pairWatchV2Ui);
                                        } else if (parsedLink.equals(ParsedLink.Gdpr.f51661b)) {
                                            PrivacyActivity.s.getClass();
                                            intentA2 = PrivacyActivity.Companion.a(context, null, true);
                                        } else {
                                            intentA2 = null;
                                        }
                                        if (intentA2 == null) {
                                            composer10.L(-1935047289);
                                            composer10.F();
                                        } else {
                                            composer10.L(-1935047288);
                                            Unit unit = Unit.f71739a;
                                            boolean zY = composer10.y(context) | composer10.y(intentA2);
                                            Object objX = composer10.x();
                                            if (zY || objX == composer$Companion$Empty$2) {
                                                objX = new MyLvActivity$onCreate$1$1$1$1$1$1(context, intentA2, null);
                                                composer10.q(objX);
                                            }
                                            EffectsKt.e(composer10, unit, (Function2) objX);
                                            composer10.F();
                                        }
                                        composer10.F();
                                    }
                                    ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer10);
                                    if (viewModelStoreOwnerA == null) {
                                        md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                        return null;
                                    }
                                    MyLvViewModel myLvViewModel = (MyLvViewModel) ViewModelKt.a(Reflection.f71922a.b(MyLvViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, composer10), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer10);
                                    boolean zY2 = composer10.y(myLvActivity2);
                                    Object objX2 = composer10.x();
                                    if (zY2 || objX2 == composer$Companion$Empty$2) {
                                        MyLvActivity$onCreate$1$1$2$1 myLvActivity$onCreate$1$1$2$1 = new MyLvActivity$onCreate$1$1$2$1(0, myLvActivity2, MyLvActivity.class, "finish", "finish()V", 0);
                                        composer10.q(myLvActivity$onCreate$1$1$2$1);
                                        objX2 = myLvActivity$onCreate$1$1$2$1;
                                    }
                                    MyLvComposableKt.a(myLvViewModel, false, (Function0) ((KFunction) objX2), composer10, 48);
                                    composer10.F();
                                } else {
                                    composer10.L(-354347909);
                                    ParsedLink parsedLink2 = (ParsedLink) lazy.getF71699b();
                                    if (parsedLink2 == null) {
                                        composer10.L(-354298465);
                                        composer10.F();
                                    } else {
                                        composer10.L(-354298464);
                                        if (parsedLink2.equals(ParsedLink.Gdpr.f51661b)) {
                                            PrivacyActivity.s.getClass();
                                            intentA = PrivacyActivity.Companion.a(context, null, true);
                                        } else {
                                            intentA = null;
                                        }
                                        if (intentA == null) {
                                            composer10.L(461088688);
                                            composer10.F();
                                        } else {
                                            composer10.L(461088689);
                                            Unit unit2 = Unit.f71739a;
                                            boolean zY3 = composer10.y(context) | composer10.y(intentA);
                                            Object objX3 = composer10.x();
                                            if (zY3 || objX3 == composer$Companion$Empty$2) {
                                                objX3 = new MyLvActivity$onCreate$1$1$3$1$1$1(context, intentA, null);
                                                composer10.q(objX3);
                                            }
                                            EffectsKt.e(composer10, unit2, (Function2) objX3);
                                            composer10.F();
                                        }
                                        composer10.F();
                                    }
                                    MutableState mutableStateB = SnapshotStateKt.b(((WelcomeViewModel) myLvActivity2.q.getF71699b()).getL(), composer10);
                                    TrackingAuthOrigin trackingAuthOrigin = TrackingAuthOrigin.MY_LV;
                                    boolean zY4 = composer10.y(myLvActivity2) | composer10.y(context);
                                    Object objX4 = composer10.x();
                                    if (zY4 || objX4 == composer$Companion$Empty$2) {
                                        objX4 = new Function0() { // from class: xd0
                                            @Override // kotlin.jvm.functions.Function0
                                            /* JADX INFO: renamed from: invoke */
                                            public final Object mo47invoke() {
                                                int i9 = i7;
                                                Context context2 = context;
                                                MyLvActivity myLvActivity3 = myLvActivity2;
                                                switch (i9) {
                                                    case 0:
                                                        MyLvActivity.Companion companion15 = MyLvActivity.s;
                                                        ((AuthenticationViewModel) myLvActivity3.p.getF71699b()).I0(new AuthenticationTrackingUiModel.LoginInClickEvent(false, 1, null));
                                                        AuthenticationActivity.Companion companion16 = AuthenticationActivity.u;
                                                        AuthenticationActivity.Routes routes = AuthenticationActivity.Routes.LOGIN_FROM_OUTSIDE;
                                                        LoginContext loginContext = LoginContext.MY_LV;
                                                        TrackingAuthOrigin trackingAuthOrigin2 = TrackingAuthOrigin.MY_LV;
                                                        companion16.getClass();
                                                        context2.startActivity(AuthenticationActivity.Companion.a(context2, routes, loginContext, trackingAuthOrigin2));
                                                        break;
                                                    case 1:
                                                        MyLvActivity.Companion companion17 = MyLvActivity.s;
                                                        ((AuthenticationViewModel) myLvActivity3.p.getF71699b()).I0(new AuthenticationTrackingUiModel.RegisterClickEvent(false, 1, null));
                                                        AuthenticationActivity.Companion companion18 = AuthenticationActivity.u;
                                                        AuthenticationActivity.Routes routes2 = AuthenticationActivity.Routes.REGISTER_FROM_OUTSIDE;
                                                        LoginContext loginContext2 = LoginContext.MY_LV;
                                                        TrackingAuthOrigin trackingAuthOrigin3 = TrackingAuthOrigin.MY_LV;
                                                        companion18.getClass();
                                                        context2.startActivity(AuthenticationActivity.Companion.a(context2, routes2, loginContext2, trackingAuthOrigin3));
                                                        break;
                                                    case 2:
                                                        MyLvActivity.Companion companion19 = MyLvActivity.s;
                                                        ((AuthenticationViewModel) myLvActivity3.p.getF71699b()).I0(AuthenticationTrackingUiModel.OpenConnectivityFromWelcomePageEvent.f53701a);
                                                        context2.startActivity(MyLvDestinationsKt.a(MyLvDestinations.ToConnectivityPage.f59240a, context2));
                                                        break;
                                                    default:
                                                        MyLvActivity.Companion companion20 = MyLvActivity.s;
                                                        ((AuthenticationViewModel) myLvActivity3.p.getF71699b()).I0(AuthenticationTrackingUiModel.ManageSettingsClickedEvent.f53698a);
                                                        context2.startActivity(MyLvDestinationsKt.a(MyLvDestinations.ToOptionsPage.f59251a, context2));
                                                        break;
                                                }
                                                return Unit.f71739a;
                                            }
                                        };
                                        composer10.q(objX4);
                                    }
                                    Function0 function0 = (Function0) objX4;
                                    boolean zY5 = composer10.y(myLvActivity2) | composer10.y(context);
                                    Object objX5 = composer10.x();
                                    if (zY5 || objX5 == composer$Companion$Empty$2) {
                                        objX5 = new Function0() { // from class: xd0
                                            @Override // kotlin.jvm.functions.Function0
                                            /* JADX INFO: renamed from: invoke */
                                            public final Object mo47invoke() {
                                                int i9 = i6;
                                                Context context2 = context;
                                                MyLvActivity myLvActivity3 = myLvActivity2;
                                                switch (i9) {
                                                    case 0:
                                                        MyLvActivity.Companion companion15 = MyLvActivity.s;
                                                        ((AuthenticationViewModel) myLvActivity3.p.getF71699b()).I0(new AuthenticationTrackingUiModel.LoginInClickEvent(false, 1, null));
                                                        AuthenticationActivity.Companion companion16 = AuthenticationActivity.u;
                                                        AuthenticationActivity.Routes routes = AuthenticationActivity.Routes.LOGIN_FROM_OUTSIDE;
                                                        LoginContext loginContext = LoginContext.MY_LV;
                                                        TrackingAuthOrigin trackingAuthOrigin2 = TrackingAuthOrigin.MY_LV;
                                                        companion16.getClass();
                                                        context2.startActivity(AuthenticationActivity.Companion.a(context2, routes, loginContext, trackingAuthOrigin2));
                                                        break;
                                                    case 1:
                                                        MyLvActivity.Companion companion17 = MyLvActivity.s;
                                                        ((AuthenticationViewModel) myLvActivity3.p.getF71699b()).I0(new AuthenticationTrackingUiModel.RegisterClickEvent(false, 1, null));
                                                        AuthenticationActivity.Companion companion18 = AuthenticationActivity.u;
                                                        AuthenticationActivity.Routes routes2 = AuthenticationActivity.Routes.REGISTER_FROM_OUTSIDE;
                                                        LoginContext loginContext2 = LoginContext.MY_LV;
                                                        TrackingAuthOrigin trackingAuthOrigin3 = TrackingAuthOrigin.MY_LV;
                                                        companion18.getClass();
                                                        context2.startActivity(AuthenticationActivity.Companion.a(context2, routes2, loginContext2, trackingAuthOrigin3));
                                                        break;
                                                    case 2:
                                                        MyLvActivity.Companion companion19 = MyLvActivity.s;
                                                        ((AuthenticationViewModel) myLvActivity3.p.getF71699b()).I0(AuthenticationTrackingUiModel.OpenConnectivityFromWelcomePageEvent.f53701a);
                                                        context2.startActivity(MyLvDestinationsKt.a(MyLvDestinations.ToConnectivityPage.f59240a, context2));
                                                        break;
                                                    default:
                                                        MyLvActivity.Companion companion20 = MyLvActivity.s;
                                                        ((AuthenticationViewModel) myLvActivity3.p.getF71699b()).I0(AuthenticationTrackingUiModel.ManageSettingsClickedEvent.f53698a);
                                                        context2.startActivity(MyLvDestinationsKt.a(MyLvDestinations.ToOptionsPage.f59251a, context2));
                                                        break;
                                                }
                                                return Unit.f71739a;
                                            }
                                        };
                                        composer10.q(objX5);
                                    }
                                    Function0 function1 = (Function0) objX5;
                                    ViewModelStoreOwner viewModelStoreOwnerA2 = LocalViewModelStoreOwner.a(composer10);
                                    if (viewModelStoreOwnerA2 == null) {
                                        md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                        return null;
                                    }
                                    SocialLoginBottomSheetState socialLoginBottomSheetStateB = SocialLoginBottomSheetKt.b(trackingAuthOrigin, function0, function1, null, (SocialLoginViewModel) ViewModelKt.a(Reflection.f71922a.b(SocialLoginViewModelImpl.class), viewModelStoreOwnerA2, null, HiltViewModelKt.a(viewModelStoreOwnerA2, composer10), viewModelStoreOwnerA2 instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA2).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer10), composer10, 6, 8);
                                    WelcomeViewState welcomeViewState = (WelcomeViewState) mutableStateB.getF10755b();
                                    boolean zY6 = composer10.y(myLvActivity2);
                                    Object objX6 = composer10.x();
                                    if (zY6 || objX6 == composer$Companion$Empty$2) {
                                        MyLvActivity$onCreate$1$1$4$1 myLvActivity$onCreate$1$1$4$1 = new MyLvActivity$onCreate$1$1$4$1(0, myLvActivity2, MyLvActivity.class, "finish", "finish()V", 0);
                                        composer10.q(myLvActivity$onCreate$1$1$4$1);
                                        objX6 = myLvActivity$onCreate$1$1$4$1;
                                    }
                                    KFunction kFunction = (KFunction) objX6;
                                    boolean zY7 = composer10.y(myLvActivity2) | composer10.y(context);
                                    Object objX7 = composer10.x();
                                    if (zY7 || objX7 == composer$Companion$Empty$2) {
                                        objX7 = new Function0() { // from class: xd0
                                            @Override // kotlin.jvm.functions.Function0
                                            /* JADX INFO: renamed from: invoke */
                                            public final Object mo47invoke() {
                                                int i9 = i8;
                                                Context context2 = context;
                                                MyLvActivity myLvActivity3 = myLvActivity2;
                                                switch (i9) {
                                                    case 0:
                                                        MyLvActivity.Companion companion15 = MyLvActivity.s;
                                                        ((AuthenticationViewModel) myLvActivity3.p.getF71699b()).I0(new AuthenticationTrackingUiModel.LoginInClickEvent(false, 1, null));
                                                        AuthenticationActivity.Companion companion16 = AuthenticationActivity.u;
                                                        AuthenticationActivity.Routes routes = AuthenticationActivity.Routes.LOGIN_FROM_OUTSIDE;
                                                        LoginContext loginContext = LoginContext.MY_LV;
                                                        TrackingAuthOrigin trackingAuthOrigin2 = TrackingAuthOrigin.MY_LV;
                                                        companion16.getClass();
                                                        context2.startActivity(AuthenticationActivity.Companion.a(context2, routes, loginContext, trackingAuthOrigin2));
                                                        break;
                                                    case 1:
                                                        MyLvActivity.Companion companion17 = MyLvActivity.s;
                                                        ((AuthenticationViewModel) myLvActivity3.p.getF71699b()).I0(new AuthenticationTrackingUiModel.RegisterClickEvent(false, 1, null));
                                                        AuthenticationActivity.Companion companion18 = AuthenticationActivity.u;
                                                        AuthenticationActivity.Routes routes2 = AuthenticationActivity.Routes.REGISTER_FROM_OUTSIDE;
                                                        LoginContext loginContext2 = LoginContext.MY_LV;
                                                        TrackingAuthOrigin trackingAuthOrigin3 = TrackingAuthOrigin.MY_LV;
                                                        companion18.getClass();
                                                        context2.startActivity(AuthenticationActivity.Companion.a(context2, routes2, loginContext2, trackingAuthOrigin3));
                                                        break;
                                                    case 2:
                                                        MyLvActivity.Companion companion19 = MyLvActivity.s;
                                                        ((AuthenticationViewModel) myLvActivity3.p.getF71699b()).I0(AuthenticationTrackingUiModel.OpenConnectivityFromWelcomePageEvent.f53701a);
                                                        context2.startActivity(MyLvDestinationsKt.a(MyLvDestinations.ToConnectivityPage.f59240a, context2));
                                                        break;
                                                    default:
                                                        MyLvActivity.Companion companion20 = MyLvActivity.s;
                                                        ((AuthenticationViewModel) myLvActivity3.p.getF71699b()).I0(AuthenticationTrackingUiModel.ManageSettingsClickedEvent.f53698a);
                                                        context2.startActivity(MyLvDestinationsKt.a(MyLvDestinations.ToOptionsPage.f59251a, context2));
                                                        break;
                                                }
                                                return Unit.f71739a;
                                            }
                                        };
                                        composer10.q(objX7);
                                    }
                                    Function0 function2 = (Function0) objX7;
                                    boolean zY8 = composer10.y(myLvActivity2) | composer10.y(context);
                                    Object objX8 = composer10.x();
                                    if (zY8 || objX8 == composer$Companion$Empty$2) {
                                        final int i9 = 3;
                                        objX8 = new Function0() { // from class: xd0
                                            @Override // kotlin.jvm.functions.Function0
                                            /* JADX INFO: renamed from: invoke */
                                            public final Object mo47invoke() {
                                                int i10 = i9;
                                                Context context2 = context;
                                                MyLvActivity myLvActivity3 = myLvActivity2;
                                                switch (i10) {
                                                    case 0:
                                                        MyLvActivity.Companion companion15 = MyLvActivity.s;
                                                        ((AuthenticationViewModel) myLvActivity3.p.getF71699b()).I0(new AuthenticationTrackingUiModel.LoginInClickEvent(false, 1, null));
                                                        AuthenticationActivity.Companion companion16 = AuthenticationActivity.u;
                                                        AuthenticationActivity.Routes routes = AuthenticationActivity.Routes.LOGIN_FROM_OUTSIDE;
                                                        LoginContext loginContext = LoginContext.MY_LV;
                                                        TrackingAuthOrigin trackingAuthOrigin2 = TrackingAuthOrigin.MY_LV;
                                                        companion16.getClass();
                                                        context2.startActivity(AuthenticationActivity.Companion.a(context2, routes, loginContext, trackingAuthOrigin2));
                                                        break;
                                                    case 1:
                                                        MyLvActivity.Companion companion17 = MyLvActivity.s;
                                                        ((AuthenticationViewModel) myLvActivity3.p.getF71699b()).I0(new AuthenticationTrackingUiModel.RegisterClickEvent(false, 1, null));
                                                        AuthenticationActivity.Companion companion18 = AuthenticationActivity.u;
                                                        AuthenticationActivity.Routes routes2 = AuthenticationActivity.Routes.REGISTER_FROM_OUTSIDE;
                                                        LoginContext loginContext2 = LoginContext.MY_LV;
                                                        TrackingAuthOrigin trackingAuthOrigin3 = TrackingAuthOrigin.MY_LV;
                                                        companion18.getClass();
                                                        context2.startActivity(AuthenticationActivity.Companion.a(context2, routes2, loginContext2, trackingAuthOrigin3));
                                                        break;
                                                    case 2:
                                                        MyLvActivity.Companion companion19 = MyLvActivity.s;
                                                        ((AuthenticationViewModel) myLvActivity3.p.getF71699b()).I0(AuthenticationTrackingUiModel.OpenConnectivityFromWelcomePageEvent.f53701a);
                                                        context2.startActivity(MyLvDestinationsKt.a(MyLvDestinations.ToConnectivityPage.f59240a, context2));
                                                        break;
                                                    default:
                                                        MyLvActivity.Companion companion20 = MyLvActivity.s;
                                                        ((AuthenticationViewModel) myLvActivity3.p.getF71699b()).I0(AuthenticationTrackingUiModel.ManageSettingsClickedEvent.f53698a);
                                                        context2.startActivity(MyLvDestinationsKt.a(MyLvDestinations.ToOptionsPage.f59251a, context2));
                                                        break;
                                                }
                                                return Unit.f71739a;
                                            }
                                        };
                                        composer10.q(objX8);
                                    }
                                    WelcomeComposableKt.a(null, socialLoginBottomSheetStateB, welcomeViewState, true, null, function2, (Function0) objX8, (Function0) kFunction, null, null, composer10, 3072, 1585);
                                    composer10.F();
                                }
                            } else {
                                composer10.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer9), composer9, 48);
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
            case 16:
                ((Integer) obj2).getClass();
                NativeCartOrderDetailKt.a((NativeCartViewState) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 17:
                ((Integer) obj2).getClass();
                NativeCartOrderDetailKt.c((FormattedTaxDetailsUiModel) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 18:
                final NativeRegisterFragment nativeRegisterFragment = (NativeRegisterFragment) obj3;
                Composer composer10 = (Composer) obj;
                int iIntValue8 = ((Integer) obj2).intValue();
                NativeRegisterFragment.Companion companion8 = NativeRegisterFragment.G;
                if (composer10.p(iIntValue8 & 1, (iIntValue8 & 3) != 2)) {
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(113401866, new Function2() { // from class: com.vuitton.android.presentation.screen.authentication.register.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj4, Object obj5) {
                            Composer composer11 = (Composer) obj4;
                            int iIntValue9 = ((Integer) obj5).intValue();
                            NativeRegisterFragment.Companion companion9 = NativeRegisterFragment.G;
                            final int i6 = 1;
                            final int i7 = 0;
                            final int i8 = 2;
                            if (composer11.p(iIntValue9 & 1, (iIntValue9 & 3) != 2)) {
                                OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                                ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer11);
                                if (viewModelStoreOwnerA == null) {
                                    md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                    return null;
                                }
                                HiltViewModelFactory hiltViewModelFactoryA = HiltViewModelKt.a(viewModelStoreOwnerA, composer11);
                                CreationExtras defaultViewModelCreationExtras = viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c;
                                ReflectionFactory reflectionFactory = Reflection.f71922a;
                                NativeRegisterViewModel nativeRegisterViewModel = (NativeRegisterViewModel) ViewModelKt.a(reflectionFactory.b(NativeRegisterViewModelImpl.class), viewModelStoreOwnerA, null, hiltViewModelFactoryA, defaultViewModelCreationExtras, composer11);
                                ViewModelStoreOwner viewModelStoreOwnerA2 = LocalViewModelStoreOwner.a(composer11);
                                if (viewModelStoreOwnerA2 == null) {
                                    md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                    return null;
                                }
                                AddressAutocompleteViewModel addressAutocompleteViewModel = (AddressAutocompleteViewModel) ViewModelKt.a(reflectionFactory.b(AddressAutocompleteViewModelImpl.class), viewModelStoreOwnerA2, null, HiltViewModelKt.a(viewModelStoreOwnerA2, composer11), viewModelStoreOwnerA2 instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA2).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer11);
                                final NativeRegisterFragment nativeRegisterFragment2 = nativeRegisterFragment;
                                boolean zY = composer11.y(nativeRegisterFragment2);
                                Object objX = composer11.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (zY || objX == composer$Companion$Empty$2) {
                                    objX = new Function0() { // from class: qf0
                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            int i9 = i7;
                                            NativeRegisterFragment nativeRegisterFragment3 = nativeRegisterFragment2;
                                            switch (i9) {
                                                case 0:
                                                    NativeRegisterFragment.Companion companion10 = NativeRegisterFragment.G;
                                                    if (nativeRegisterFragment3.F != null) {
                                                        AuthenticationActivityRouter.d(nativeRegisterFragment3.getActivity(), null);
                                                        return Unit.f71739a;
                                                    }
                                                    Intrinsics.h("authenticationActivityRouter");
                                                    throw null;
                                                case 1:
                                                    NativeRegisterFragment.Companion companion11 = NativeRegisterFragment.G;
                                                    if (nativeRegisterFragment3.F == null) {
                                                        Intrinsics.h("authenticationActivityRouter");
                                                        throw null;
                                                    }
                                                    FragmentActivity activity = nativeRegisterFragment3.getActivity();
                                                    if (activity != null) {
                                                        LegalTextActivity.p.getClass();
                                                        activity.startActivity(LegalTextActivity.Companion.a(activity, false));
                                                    }
                                                    return Unit.f71739a;
                                                default:
                                                    NativeRegisterFragment.Companion companion12 = NativeRegisterFragment.G;
                                                    FragmentActivity activity2 = nativeRegisterFragment3.getActivity();
                                                    AuthenticationActivity authenticationActivity = activity2 instanceof AuthenticationActivity ? (AuthenticationActivity) activity2 : null;
                                                    if (authenticationActivity != null) {
                                                        authenticationActivity.K(LoginState.LOGGED_IN);
                                                    }
                                                    FragmentActivity activity3 = nativeRegisterFragment3.getActivity();
                                                    if (activity3 != null) {
                                                        activity3.finish();
                                                    }
                                                    return Unit.f71739a;
                                            }
                                        }
                                    };
                                    composer11.q(objX);
                                }
                                Function0 function0 = (Function0) objX;
                                boolean zY2 = composer11.y(nativeRegisterFragment2);
                                Object objX2 = composer11.x();
                                if (zY2 || objX2 == composer$Companion$Empty$2) {
                                    objX2 = new tb0(nativeRegisterFragment2, 13);
                                    composer11.q(objX2);
                                }
                                Function1 function1 = (Function1) objX2;
                                boolean zY3 = composer11.y(nativeRegisterFragment2);
                                Object objX3 = composer11.x();
                                if (zY3 || objX3 == composer$Companion$Empty$2) {
                                    objX3 = new Function0() { // from class: qf0
                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            int i9 = i6;
                                            NativeRegisterFragment nativeRegisterFragment3 = nativeRegisterFragment2;
                                            switch (i9) {
                                                case 0:
                                                    NativeRegisterFragment.Companion companion10 = NativeRegisterFragment.G;
                                                    if (nativeRegisterFragment3.F != null) {
                                                        AuthenticationActivityRouter.d(nativeRegisterFragment3.getActivity(), null);
                                                        return Unit.f71739a;
                                                    }
                                                    Intrinsics.h("authenticationActivityRouter");
                                                    throw null;
                                                case 1:
                                                    NativeRegisterFragment.Companion companion11 = NativeRegisterFragment.G;
                                                    if (nativeRegisterFragment3.F == null) {
                                                        Intrinsics.h("authenticationActivityRouter");
                                                        throw null;
                                                    }
                                                    FragmentActivity activity = nativeRegisterFragment3.getActivity();
                                                    if (activity != null) {
                                                        LegalTextActivity.p.getClass();
                                                        activity.startActivity(LegalTextActivity.Companion.a(activity, false));
                                                    }
                                                    return Unit.f71739a;
                                                default:
                                                    NativeRegisterFragment.Companion companion12 = NativeRegisterFragment.G;
                                                    FragmentActivity activity2 = nativeRegisterFragment3.getActivity();
                                                    AuthenticationActivity authenticationActivity = activity2 instanceof AuthenticationActivity ? (AuthenticationActivity) activity2 : null;
                                                    if (authenticationActivity != null) {
                                                        authenticationActivity.K(LoginState.LOGGED_IN);
                                                    }
                                                    FragmentActivity activity3 = nativeRegisterFragment3.getActivity();
                                                    if (activity3 != null) {
                                                        activity3.finish();
                                                    }
                                                    return Unit.f71739a;
                                            }
                                        }
                                    };
                                    composer11.q(objX3);
                                }
                                Function0 function2 = (Function0) objX3;
                                boolean zY4 = composer11.y(nativeRegisterFragment2);
                                Object objX4 = composer11.x();
                                if (zY4 || objX4 == composer$Companion$Empty$2) {
                                    objX4 = new Function0() { // from class: qf0
                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            int i9 = i8;
                                            NativeRegisterFragment nativeRegisterFragment3 = nativeRegisterFragment2;
                                            switch (i9) {
                                                case 0:
                                                    NativeRegisterFragment.Companion companion10 = NativeRegisterFragment.G;
                                                    if (nativeRegisterFragment3.F != null) {
                                                        AuthenticationActivityRouter.d(nativeRegisterFragment3.getActivity(), null);
                                                        return Unit.f71739a;
                                                    }
                                                    Intrinsics.h("authenticationActivityRouter");
                                                    throw null;
                                                case 1:
                                                    NativeRegisterFragment.Companion companion11 = NativeRegisterFragment.G;
                                                    if (nativeRegisterFragment3.F == null) {
                                                        Intrinsics.h("authenticationActivityRouter");
                                                        throw null;
                                                    }
                                                    FragmentActivity activity = nativeRegisterFragment3.getActivity();
                                                    if (activity != null) {
                                                        LegalTextActivity.p.getClass();
                                                        activity.startActivity(LegalTextActivity.Companion.a(activity, false));
                                                    }
                                                    return Unit.f71739a;
                                                default:
                                                    NativeRegisterFragment.Companion companion12 = NativeRegisterFragment.G;
                                                    FragmentActivity activity2 = nativeRegisterFragment3.getActivity();
                                                    AuthenticationActivity authenticationActivity = activity2 instanceof AuthenticationActivity ? (AuthenticationActivity) activity2 : null;
                                                    if (authenticationActivity != null) {
                                                        authenticationActivity.K(LoginState.LOGGED_IN);
                                                    }
                                                    FragmentActivity activity3 = nativeRegisterFragment3.getActivity();
                                                    if (activity3 != null) {
                                                        activity3.finish();
                                                    }
                                                    return Unit.f71739a;
                                            }
                                        }
                                    };
                                    composer11.q(objX4);
                                }
                                Function0 function3 = (Function0) objX4;
                                boolean zY5 = composer11.y(nativeRegisterFragment2);
                                Object objX5 = composer11.x();
                                if (zY5 || objX5 == composer$Companion$Empty$2) {
                                    NativeRegisterFragment$onCreateView$1$1$1$5$1 nativeRegisterFragment$onCreateView$1$1$1$5$1 = new NativeRegisterFragment$onCreateView$1$1$1$5$1(0, nativeRegisterFragment2, FragmentExtKt.class, "onNavigateBackPressed", "onNavigateBackPressed(Landroidx/fragment/app/Fragment;)V", 1);
                                    composer11.q(nativeRegisterFragment$onCreateView$1$1$1$5$1);
                                    objX5 = nativeRegisterFragment$onCreateView$1$1$1$5$1;
                                }
                                NativeRegisterComposableKt.a(nativeRegisterViewModel, addressAutocompleteViewModel, function0, function1, function2, function3, (Function0) ((KFunction) objX5), composer11, 0);
                            } else {
                                composer11.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer10), composer10, 48);
                } else {
                    composer10.D();
                }
                return Unit.f71739a;
            case 19:
                OverlayScene overlayScene = (OverlayScene) obj3;
                Composer composer11 = (Composer) obj;
                int iIntValue9 = ((Integer) obj2).intValue();
                if (composer11.p(iIntValue9 & 1, (iIntValue9 & 3) != 2)) {
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    overlayScene.getF18420e().invoke(composer11, 0);
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
            case 20:
                Scene scene = (Scene) obj3;
                Composer composer12 = (Composer) obj;
                int iIntValue10 = ((Integer) obj2).intValue();
                if (composer12.p(iIntValue10 & 1, (iIntValue10 & 3) != 2)) {
                    OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                    scene.getF18420e().invoke(composer12, 0);
                } else {
                    composer12.D();
                }
                return Unit.f71739a;
            case 21:
                final OptionsActivity optionsActivity = (OptionsActivity) obj3;
                Composer composer13 = (Composer) obj;
                int iIntValue11 = ((Integer) obj2).intValue();
                OptionsActivity.Companion companion9 = OptionsActivity.u;
                if (composer13.p(iIntValue11 & 1, (iIntValue11 & 3) != 2)) {
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(612141775, new Function2() { // from class: com.vuitton.android.presentation.screen.options.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj4, Object obj5) {
                            Composer composer14 = (Composer) obj4;
                            int iIntValue12 = ((Integer) obj5).intValue();
                            OptionsActivity.Companion companion10 = OptionsActivity.u;
                            if (composer14.p(iIntValue12 & 1, (iIntValue12 & 3) != 2)) {
                                OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                                NavHostController navHostControllerA = NavHostControllerKt.a(new Navigator[0], composer14);
                                OptionsActivity optionsActivity2 = optionsActivity;
                                OptionsViewModel optionsViewModel = (OptionsViewModel) optionsActivity2.q.getF71699b();
                                DispatchCountryViewModel dispatchCountryViewModel = (DispatchCountryViewModel) optionsActivity2.r.getF71699b();
                                AppInfoViewModel appInfoViewModel = (AppInfoViewModel) optionsActivity2.s.getF71699b();
                                NotificationsPreferencesViewModel notificationsPreferencesViewModel = (NotificationsPreferencesViewModel) optionsActivity2.t.getF71699b();
                                PreprodRouter preprodRouter = optionsActivity2.p;
                                if (preprodRouter == null) {
                                    Intrinsics.h("preprodRouter");
                                    throw null;
                                }
                                boolean zY = composer14.y(optionsActivity2);
                                Object objX = composer14.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (zY || objX == composer$Companion$Empty$2) {
                                    OptionsActivity$onCreate$1$1$1$1 optionsActivity$onCreate$1$1$1$1 = new OptionsActivity$onCreate$1$1$1$1(0, optionsActivity2, OptionsActivity.class, "finish", "finish()V", 0);
                                    composer14.q(optionsActivity$onCreate$1$1$1$1);
                                    objX = optionsActivity$onCreate$1$1$1$1;
                                }
                                Function0 function0 = (Function0) ((KFunction) objX);
                                boolean zY2 = composer14.y(optionsActivity2);
                                Object objX2 = composer14.x();
                                if (zY2 || objX2 == composer$Companion$Empty$2) {
                                    OptionsActivity$onCreate$1$1$2$1 optionsActivity$onCreate$1$1$2$1 = new OptionsActivity$onCreate$1$1$2$1(0, optionsActivity2, OptionsActivity.class, "onLogoutSuccess", "onLogoutSuccess()V", 0);
                                    composer14.q(optionsActivity$onCreate$1$1$2$1);
                                    objX2 = optionsActivity$onCreate$1$1$2$1;
                                }
                                Function0 function1 = (Function0) ((KFunction) objX2);
                                boolean zY3 = composer14.y(optionsActivity2);
                                Object objX3 = composer14.x();
                                if (zY3 || objX3 == composer$Companion$Empty$2) {
                                    OptionsActivity$onCreate$1$1$3$1 optionsActivity$onCreate$1$1$3$1 = new OptionsActivity$onCreate$1$1$3$1(1, optionsActivity2, OptionsActivity.class, "onDeeplinkClicked", "onDeeplinkClicked(Ljava/lang/String;)V", 0);
                                    composer14.q(optionsActivity$onCreate$1$1$3$1);
                                    objX3 = optionsActivity$onCreate$1$1$3$1;
                                }
                                Function1 function2 = (Function1) ((KFunction) objX3);
                                boolean zY4 = composer14.y(optionsActivity2);
                                Object objX4 = composer14.x();
                                if (zY4 || objX4 == composer$Companion$Empty$2) {
                                    OptionsActivity$onCreate$1$1$4$1 optionsActivity$onCreate$1$1$4$1 = new OptionsActivity$onCreate$1$1$4$1(1, optionsActivity2, OptionsActivity.class, "onAppInfoClicked", "onAppInfoClicked(Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfo;)V", 0);
                                    composer14.q(optionsActivity$onCreate$1$1$4$1);
                                    objX4 = optionsActivity$onCreate$1$1$4$1;
                                }
                                Function1 function3 = (Function1) ((KFunction) objX4);
                                boolean zY5 = composer14.y(optionsActivity2);
                                Object objX5 = composer14.x();
                                if (zY5 || objX5 == composer$Companion$Empty$2) {
                                    objX5 = new x60(optionsActivity2, 19);
                                    composer14.q(objX5);
                                }
                                Function0 function4 = (Function0) objX5;
                                boolean zY6 = composer14.y(optionsActivity2);
                                Object objX6 = composer14.x();
                                if (zY6 || objX6 == composer$Companion$Empty$2) {
                                    OptionsActivity$onCreate$1$1$6$1 optionsActivity$onCreate$1$1$6$1 = new OptionsActivity$onCreate$1$1$6$1(0, optionsActivity2, OptionsActivity.class, "openAccessibilityStatement", "openAccessibilityStatement()V", 0);
                                    composer14.q(optionsActivity$onCreate$1$1$6$1);
                                    objX6 = optionsActivity$onCreate$1$1$6$1;
                                }
                                OptionsNavHostKt.a(navHostControllerA, optionsViewModel, dispatchCountryViewModel, appInfoViewModel, notificationsPreferencesViewModel, preprodRouter, function0, function1, function2, function3, function4, (Function0) ((KFunction) objX6), composer14, 0);
                            } else {
                                composer14.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer13), composer13, 48);
                } else {
                    composer13.D();
                }
                return Unit.f71739a;
            case 22:
                final OrderActivity orderActivity = (OrderActivity) obj3;
                Composer composer14 = (Composer) obj;
                int iIntValue12 = ((Integer) obj2).intValue();
                OrderActivity.Companion companion10 = OrderActivity.q;
                if (composer14.p(iIntValue12 & 1, (iIntValue12 & 3) != 2)) {
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(1166978764, new Function2() { // from class: com.vuitton.android.presentation.screen.orders.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj4, Object obj5) {
                            Composer composer15 = (Composer) obj4;
                            int iIntValue13 = ((Integer) obj5).intValue();
                            OrderActivity.Companion companion11 = OrderActivity.q;
                            final int i6 = 1;
                            final int i7 = 0;
                            final int i8 = 2;
                            if (composer15.p(iIntValue13 & 1, (iIntValue13 & 3) != 2)) {
                                OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                                NavHostController navHostControllerA = NavHostControllerKt.a(new Navigator[0], composer15);
                                Unit unit = Unit.f71739a;
                                final OrderActivity orderActivity2 = orderActivity;
                                boolean zY = composer15.y(orderActivity2);
                                Object objX = composer15.x();
                                Object obj6 = Composer.Companion.f7939a;
                                if (zY || objX == obj6) {
                                    objX = new OrderActivity$onCreate$2$1$1$1(orderActivity2, null);
                                    composer15.q(objX);
                                }
                                EffectsKt.e(composer15, unit, (Function2) objX);
                                boolean zY2 = composer15.y(orderActivity2) | composer15.y(navHostControllerA);
                                Object objX2 = composer15.x();
                                if (zY2 || objX2 == obj6) {
                                    objX2 = new OrderActivity$onCreate$2$1$2$1(orderActivity2, navHostControllerA, null);
                                    composer15.q(objX2);
                                }
                                EffectsKt.e(composer15, unit, (Function2) objX2);
                                OrderViewModel orderViewModel = (OrderViewModel) orderActivity2.p.getF71699b();
                                Bundle extras = orderActivity2.getIntent().getExtras();
                                String string = extras != null ? extras.getString("rootScreen") : null;
                                boolean zY3 = composer15.y(orderActivity2);
                                Object objX3 = composer15.x();
                                if (zY3 || objX3 == obj6) {
                                    objX3 = new x60(orderActivity2, 20);
                                    composer15.q(objX3);
                                }
                                Function0 function0 = (Function0) objX3;
                                boolean zY4 = composer15.y(orderActivity2);
                                Object objX4 = composer15.x();
                                if (zY4 || objX4 == obj6) {
                                    objX4 = new Function1() { // from class: vh0
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj7) {
                                            int i9 = i7;
                                            OrderActivity orderActivity3 = orderActivity2;
                                            switch (i9) {
                                                case 0:
                                                    String str = (String) obj7;
                                                    OrderActivity.Companion companion12 = OrderActivity.q;
                                                    str.getClass();
                                                    if (StringExtKt.b(str) != null) {
                                                        orderActivity3.startActivity(OrderDestinationsKt.a(new OrderDestinations.ToWebViewPage(str), orderActivity3));
                                                    } else {
                                                        LegacyLogger.f66205a.c("WebViewRouter", "Invalid URL : ".concat(str), null);
                                                    }
                                                    break;
                                                case 1:
                                                    boolean zBooleanValue = ((Boolean) obj7).booleanValue();
                                                    OrderActivity.Companion companion13 = OrderActivity.q;
                                                    Intent intent = new Intent();
                                                    intent.putExtra("EXTRA_RELOAD_ORDERS", zBooleanValue);
                                                    orderActivity3.setResult(-1, intent);
                                                    orderActivity3.finish();
                                                    break;
                                                default:
                                                    List list = (List) obj7;
                                                    OrderActivity.Companion companion14 = OrderActivity.q;
                                                    list.getClass();
                                                    if (!list.isEmpty()) {
                                                        orderActivity3.startActivity(OrderDestinationsKt.a(new OrderDestinations.ToImageViewerPage(list), orderActivity3));
                                                    }
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer15.q(objX4);
                                }
                                Function1 function1 = (Function1) objX4;
                                boolean zY5 = composer15.y(orderActivity2);
                                Object objX5 = composer15.x();
                                if (zY5 || objX5 == obj6) {
                                    objX5 = new Function1() { // from class: vh0
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj7) {
                                            int i9 = i6;
                                            OrderActivity orderActivity3 = orderActivity2;
                                            switch (i9) {
                                                case 0:
                                                    String str = (String) obj7;
                                                    OrderActivity.Companion companion12 = OrderActivity.q;
                                                    str.getClass();
                                                    if (StringExtKt.b(str) != null) {
                                                        orderActivity3.startActivity(OrderDestinationsKt.a(new OrderDestinations.ToWebViewPage(str), orderActivity3));
                                                    } else {
                                                        LegacyLogger.f66205a.c("WebViewRouter", "Invalid URL : ".concat(str), null);
                                                    }
                                                    break;
                                                case 1:
                                                    boolean zBooleanValue = ((Boolean) obj7).booleanValue();
                                                    OrderActivity.Companion companion13 = OrderActivity.q;
                                                    Intent intent = new Intent();
                                                    intent.putExtra("EXTRA_RELOAD_ORDERS", zBooleanValue);
                                                    orderActivity3.setResult(-1, intent);
                                                    orderActivity3.finish();
                                                    break;
                                                default:
                                                    List list = (List) obj7;
                                                    OrderActivity.Companion companion14 = OrderActivity.q;
                                                    list.getClass();
                                                    if (!list.isEmpty()) {
                                                        orderActivity3.startActivity(OrderDestinationsKt.a(new OrderDestinations.ToImageViewerPage(list), orderActivity3));
                                                    }
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer15.q(objX5);
                                }
                                Function1 function2 = (Function1) objX5;
                                boolean zY6 = composer15.y(orderActivity2);
                                Object objX6 = composer15.x();
                                if (zY6 || objX6 == obj6) {
                                    objX6 = new Function1() { // from class: vh0
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj7) {
                                            int i9 = i8;
                                            OrderActivity orderActivity3 = orderActivity2;
                                            switch (i9) {
                                                case 0:
                                                    String str = (String) obj7;
                                                    OrderActivity.Companion companion12 = OrderActivity.q;
                                                    str.getClass();
                                                    if (StringExtKt.b(str) != null) {
                                                        orderActivity3.startActivity(OrderDestinationsKt.a(new OrderDestinations.ToWebViewPage(str), orderActivity3));
                                                    } else {
                                                        LegacyLogger.f66205a.c("WebViewRouter", "Invalid URL : ".concat(str), null);
                                                    }
                                                    break;
                                                case 1:
                                                    boolean zBooleanValue = ((Boolean) obj7).booleanValue();
                                                    OrderActivity.Companion companion13 = OrderActivity.q;
                                                    Intent intent = new Intent();
                                                    intent.putExtra("EXTRA_RELOAD_ORDERS", zBooleanValue);
                                                    orderActivity3.setResult(-1, intent);
                                                    orderActivity3.finish();
                                                    break;
                                                default:
                                                    List list = (List) obj7;
                                                    OrderActivity.Companion companion14 = OrderActivity.q;
                                                    list.getClass();
                                                    if (!list.isEmpty()) {
                                                        orderActivity3.startActivity(OrderDestinationsKt.a(new OrderDestinations.ToImageViewerPage(list), orderActivity3));
                                                    }
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer15.q(objX6);
                                }
                                OrderNavHostKt.a(navHostControllerA, orderViewModel, string, function0, function1, function2, (Function1) objX6, composer15, 0);
                                navHostControllerA.a(orderActivity2);
                            } else {
                                composer15.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer14), composer14, 48);
                } else {
                    composer14.D();
                }
                return Unit.f71739a;
            case 23:
                TransactionItemUiModel transactionItemUiModel = (TransactionItemUiModel) obj3;
                Composer composer15 = (Composer) obj;
                int iIntValue13 = ((Integer) obj2).intValue();
                if (composer15.p(iIntValue13 & 1, (iIntValue13 & 3) != 2)) {
                    OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                    String str = transactionItemUiModel.g;
                    SkuIdUiModel.Companion companion11 = SkuIdUiModel.f61763c;
                    OrderDetailScreenKt.k(str, transactionItemUiModel.f60416f, null, composer15, 0, 4);
                } else {
                    composer15.D();
                }
                return Unit.f71739a;
            case 24:
                MutableIntState mutableIntState = (MutableIntState) obj3;
                Composer composer16 = (Composer) obj;
                int iIntValue14 = ((Integer) obj2).intValue();
                if (composer16.p(iIntValue14 & 1, (iIntValue14 & 3) != 2)) {
                    OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("OrderDetailScreen$lambda$16");
                    Object objX = composer16.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new q1(mutableIntState, 12);
                        composer16.q(objX);
                    }
                    Modifier modifierA2 = OnRemeasuredModifierKt.a(dTFunctionNameModifier, (Function1) objX);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode = Long.hashCode(composer16.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer16.n();
                    Modifier modifierC = ComposedModifierKt.c(composer16, modifierA2);
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
                    LVDragHandleKt.a(null, null, null, composer16, 0, 7);
                    composer16.r();
                } else {
                    composer16.D();
                }
                return Unit.f71739a;
            case 25:
                OsaItemUiModel osaItemUiModel = (OsaItemUiModel) obj3;
                Composer composer17 = (Composer) obj;
                int iIntValue15 = ((Integer) obj2).intValue();
                if (composer17.p(iIntValue15 & 1, (iIntValue15 & 3) != 2)) {
                    OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                    String strC = StringResources_androidKt.c(composer17, R.string.osa_phone_number);
                    StoreInformationItemUiModel storeInformationItemUiModel = osaItemUiModel.f60929h;
                    String str2 = storeInformationItemUiModel != null ? storeInformationItemUiModel.f60941e : null;
                    if (str2 == null) {
                        str2 = "";
                    }
                    String strJ = d21.j(strC, str2);
                    StoreInformationItemUiModel storeInformationItemUiModel2 = osaItemUiModel.f60929h;
                    String str3 = storeInformationItemUiModel2 != null ? storeInformationItemUiModel2.f60941e : null;
                    String str4 = str3 == null ? "" : str3;
                    TextStyle textStyle = LVAppDesignKitTheme.n(composer17).m;
                    Modifier modifierE = ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("AppointmentCard$lambda$5$1$0$1$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer17).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "osa_appointmentStoreTel_text");
                    boolean zK = composer17.K(strJ);
                    Object objX2 = composer17.x();
                    if (zK || objX2 == composer$Companion$Empty$1) {
                        objX2 = new lt(strJ, 29);
                        composer17.q(objX2);
                    }
                    TextKt.c(str4, SemanticsModifierKt.b(modifierE, false, (Function1) objX2), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, composer17, 0, 0, 131068);
                } else {
                    composer17.D();
                }
                return Unit.f71739a;
            case 26:
                OsaFormItemUiModel osaFormItemUiModel = (OsaFormItemUiModel) obj3;
                Composer composer18 = (Composer) obj;
                int iIntValue16 = ((Integer) obj2).intValue();
                if (composer18.p(iIntValue16 & 1, (iIntValue16 & 3) != 2)) {
                    OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                    TextKt.c(osaFormItemUiModel.f60917f, ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("StoreAppointmentItem$lambda$0$1$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer18).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "osa_appointmentStorePhoneNum_text"), LVAppDesignKitTheme.c(composer18).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer18).m, composer18, 0, 0, 131064);
                } else {
                    composer18.D();
                }
                return Unit.f71739a;
            case 27:
                ((Integer) obj2).getClass();
                PLPCuratedTextComposableKt.a((AssetImageUiModel) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 28:
                Dp dp = (Dp) obj3;
                Composer composer19 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer19.L(-841656206);
                OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("PLPScreen_J1OVMuw$lambda$5$39$1$11$0$0");
                if (dp == null) {
                    composer19.L(-1377753829);
                    f2 = LVAppDesignKitTheme.l(composer19).f48416e;
                    composer19.F();
                } else {
                    composer19.L(-1377755658);
                    composer19.F();
                    f2 = dp.f11006b;
                }
                Modifier modifierM = PaddingKt.m(dTFunctionNameModifier2, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 7);
                composer19.F();
                return modifierM;
            default:
                PLPViewState pLPViewState = (PLPViewState) obj3;
                Composer composer20 = (Composer) obj;
                int iIntValue17 = ((Integer) obj2).intValue();
                if (composer20.p(iIntValue17 & 1, (iIntValue17 & 3) != 2)) {
                    OpaqueKey opaqueKey20 = ComposerKt.f7940a;
                    Modifier modifierO = SizeKt.o(new DTFunctionNameModifier("PLPScreen_J1OVMuw$lambda$5$39$1$11$0$4"), LVAppDesignKitTheme.d(composer20).m);
                    GridModes gridModes = pLPViewState.g;
                    if (Intrinsics.c(gridModes, GridModes.Reduced.f55431b)) {
                        composer20.L(-400106600);
                        i2 = LVAppDesignKitTheme.g(composer20).C;
                        composer20.F();
                    } else {
                        if (!Intrinsics.c(gridModes, GridModes.Full.f55430b)) {
                            throw o60.v(composer20, -400110355);
                        }
                        composer20.L(-400103174);
                        i2 = LVAppDesignKitTheme.g(composer20).D;
                        composer20.F();
                    }
                    IconKt.a(PainterResources_androidKt.a(i2, composer20, 0), null, modifierO, 0L, composer20, 56, 8);
                } else {
                    composer20.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ w20(Object obj, int i2, int i3) {
        this.f80734b = i3;
        this.f80735c = obj;
    }
}
