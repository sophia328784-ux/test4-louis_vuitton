package defpackage;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.lazy.grid.GridCells;
import androidx.compose.foundation.lazy.grid.LazyGridSlots;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt;
import androidx.compose.material3.BasicAlertDialogOverrideScope;
import androidx.compose.material3.DefaultBasicAlertDialogOverride;
import androidx.compose.material3.DefaultSingleRowTopAppBarOverride;
import androidx.compose.material3.SingleRowTopAppBarOverrideScope;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposerKt;
import androidx.compose.runtime.MovableContent;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.RememberObserverHolder;
import androidx.compose.runtime.ReusableRememberObserverHolder;
import androidx.compose.runtime.State;
import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.navigation.compose.DialogHostKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.sightcall.livetranslation.domain.LiveTranslationInteractor;
import com.sightcall.livetranslation.domain.LiveTranslationInteractorImpl;
import com.sightcall.livetranslation.domain.LiveTranslationSettings;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.AlphaKt;
import com.vuitton.android.designkit.ui.theme.GradientKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.designkit.ui.theme.atoms.DropdownItem;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVPageNumberIndicatorKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationTextField;
import com.vuitton.android.presentation.compose.components.LVAvatarKt;
import com.vuitton.android.presentation.databinding.ActivityFaqCategoryListBinding;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.model.onboarding.IconLauncherType;
import com.vuitton.android.presentation.model.storelocator.StoreOpeningHoursUiModel;
import com.vuitton.android.presentation.model.storelocator.StoreUiModel;
import com.vuitton.android.presentation.screen.account.editavatar.models.AvatarItemUiModel;
import com.vuitton.android.presentation.screen.account.editavatar.models.EditAvatarViewState;
import com.vuitton.android.presentation.screen.account.inbox.components.InboxErrorScreenKt;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModel;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.components.ForgetPasswordComposableKt;
import com.vuitton.android.presentation.screen.connectivity.faq.FaqActivity;
import com.vuitton.android.presentation.screen.connectivity.faq.FaqItemUiModel;
import com.vuitton.android.presentation.screen.connectivity.faqcategory.FaqCategoriesActivity;
import com.vuitton.android.presentation.screen.distantrepairs.form.formsections.DistantRepairInitiateComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.formsections.DistantRepairProductComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.FormState;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairFormViewState;
import com.vuitton.android.presentation.screen.exclusivesales.components.ExclusiveSalesCardKt;
import com.vuitton.android.presentation.screen.exclusivesales.models.ExclusiveSalesCategoryUiModel;
import com.vuitton.android.presentation.screen.feed.FeedDestinations;
import com.vuitton.android.presentation.screen.feed.FeedDestinationsKt;
import com.vuitton.android.presentation.screen.feed.FeedViewModel;
import com.vuitton.android.presentation.screen.filter.model.FilterParams;
import com.vuitton.android.presentation.screen.filter.model.FilterType;
import com.vuitton.android.presentation.screen.filter.quickaccess.QafSource;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersViewState;
import com.vuitton.android.presentation.screen.forceupdate.ForceUpdateActivity;
import com.vuitton.android.presentation.screen.forceupdate.ForceUpdateType;
import com.vuitton.android.presentation.screen.immersivearticle.models.VideoCtaArticleSectionUiModel;
import com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModel;
import com.vuitton.android.presentation.screen.options.dispatch.components.DispatchComposableKt;
import com.vuitton.android.presentation.screen.pdp.components.findinstore.FindInStoreRowKt;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqCategory;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqItem;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class rs implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79603b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f79604c;
    public final /* synthetic */ Object d;

    public /* synthetic */ rs(Object obj, Object obj2, int i2) {
        this.f79603b = i2;
        this.f79604c = obj;
        this.d = obj2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        long j2;
        int i2 = this.f79603b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object obj3 = this.d;
        Object obj4 = this.f79604c;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                ((DefaultBasicAlertDialogOverride) obj4).a((BasicAlertDialogOverrideScope) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 1:
                ((Integer) obj2).getClass();
                ((DefaultSingleRowTopAppBarOverride) obj4).a((SingleRowTopAppBarOverrideScope) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 2:
                ((Integer) obj2).getClass();
                DefaultTextContextMenuDropdownProvider_androidKt.a((TextContextMenuSession) obj4, (TextContextMenuData) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 3:
                ((Integer) obj2).getClass();
                DialogHostKt.b((List) obj4, (Collection) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 4:
                ((Integer) obj2).getClass();
                DispatchComposableKt.a((DispatchCountryViewModel) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 5:
                DistantRepairFormViewState distantRepairFormViewState = (DistantRepairFormViewState) obj4;
                Function0 function0 = (Function0) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    boolean z = distantRepairFormViewState.f57380b.d == FormState.CONFIRM && !distantRepairFormViewState.g;
                    Object objX = composer.x();
                    int i3 = 18;
                    if (objX == composer$Companion$Empty$1) {
                        objX = new x20(i3);
                        composer.q(objX);
                    }
                    EnterTransition enterTransitionR = EnterExitTransitionKt.r((Function1) objX);
                    Object objX2 = composer.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new x20(i3);
                        composer.q(objX2);
                    }
                    AnimatedVisibilityKt.e(z, null, enterTransitionR, EnterExitTransitionKt.v(1, (Function1) objX2), null, ComposableLambdaKt.b(-933166362, new a3(function0, 11), composer), composer, 200064, 18);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 6:
                ((Integer) obj2).getClass();
                DistantRepairInitiateComponentKt.e((DistantRepairContactMethod) obj4, (String) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 7:
                ((Integer) obj2).getClass();
                DistantRepairProductComponentKt.c((String) obj4, (List) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 8:
                EditAvatarViewState editAvatarViewState = (EditAvatarViewState) obj4;
                Function0 function1 = (Function0) obj3;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    if (editAvatarViewState instanceof EditAvatarViewState.Success) {
                        composer2.L(-734657816);
                        LVButtonKt.b(0, 376, composer2, ModifierExtKt.e(PaddingKt.l(WindowInsetsPadding_androidKt.b(SizeKt.d(new DTFunctionNameModifier("EditAvatarScreen$lambda$1"), 1.0f)), LVAppDesignKitTheme.l(composer2).f48417f, LVAppDesignKitTheme.l(composer2).f48416e, LVAppDesignKitTheme.l(composer2).f48417f, LVAppDesignKitTheme.l(composer2).f48417f), "avatarLibrary_avatarSave_button"), LVAppDesignKitTheme.b(composer2).f48446a, null, null, StringResources_androidKt.c(composer2, R.string.save), function1, false, ((EditAvatarViewState.Success) editAvatarViewState).d, false);
                        composer2.F();
                    } else {
                        composer2.L(-733840532);
                        composer2.F();
                    }
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 9:
                ((Integer) obj2).getClass();
                ExclusiveSalesCardKt.a((ExclusiveSalesCategoryUiModel) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 10:
                FaqCategoriesActivity faqCategoriesActivity = (FaqCategoriesActivity) obj4;
                FaqCategory faqCategory = (FaqCategory) obj;
                FaqType faqType = (FaqType) obj2;
                FaqCategoriesActivity.Companion companion = FaqCategoriesActivity.s;
                faqCategory.getClass();
                faqType.getClass();
                FaqActivity.Companion companion2 = FaqActivity.t;
                Context context = ((ActivityFaqCategoryListBinding) obj3).f51200b.getContext();
                context.getClass();
                List<FaqItem> list = faqCategory.d;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
                for (FaqItem faqItem : list) {
                    faqItem.getClass();
                    arrayList.add(new FaqItemUiModel(faqItem.f67311a, faqItem.f67312b));
                }
                String str = faqCategory.f67307a;
                companion2.getClass();
                faqCategoriesActivity.startActivity(FaqActivity.Companion.b(context, arrayList, str, faqType));
                return Unit.f71739a;
            case 11:
                FeedViewModel feedViewModel = (FeedViewModel) obj4;
                String str2 = (String) obj;
                String str3 = (String) obj2;
                str2.getClass();
                str3.getClass();
                List listI1 = feedViewModel.I1(str2);
                boolean zY3 = feedViewModel.y3(str2);
                feedViewModel.Q3(str2);
                AppCompatActivity appCompatActivityB = ContextExtKt.b((Context) obj3);
                if (appCompatActivityB != null) {
                    appCompatActivityB.startActivity(FeedDestinationsKt.a(new FeedDestinations.ToPlpPage(listI1, str3, zY3), appCompatActivityB));
                }
                return Unit.f71739a;
            case 12:
                StoreUiModel storeUiModel = (StoreUiModel) obj4;
                Function1 function2 = (Function1) obj3;
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("FindInStoreRow$lambda$3$2$0$0$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
                    String str4 = storeUiModel.d;
                    boolean zK = composer3.K(function2) | composer3.y(storeUiModel);
                    Object objX3 = composer3.x();
                    if (zK || objX3 == composer$Companion$Empty$1) {
                        objX3 = new xy(function2, storeUiModel, 1);
                        composer3.q(objX3);
                    }
                    LVLinkKt.a(modifierM, str4, false, null, false, (Function0) objX3, composer3, 0, 28);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 13:
                ((Integer) obj2).getClass();
                FindInStoreRowKt.a((Modifier) obj4, (StoreOpeningHoursUiModel) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 14:
                final ForceUpdateActivity forceUpdateActivity = (ForceUpdateActivity) obj4;
                final ForceUpdateType forceUpdateType = (ForceUpdateType) obj3;
                Composer composer4 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                ForceUpdateActivity.Companion companion3 = ForceUpdateActivity.q;
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-2052617371, new Function2() { // from class: com.vuitton.android.presentation.screen.forceupdate.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj5, Object obj6) {
                            Composer composer5 = (Composer) obj5;
                            int iIntValue5 = ((Integer) obj6).intValue();
                            ForceUpdateActivity.Companion companion4 = ForceUpdateActivity.q;
                            if (composer5.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                                ForceUpdateActivity forceUpdateActivity2 = forceUpdateActivity;
                                ForceUpdateViewModel forceUpdateViewModel = (ForceUpdateViewModel) forceUpdateActivity2.p.getF71699b();
                                boolean zY = composer5.y(forceUpdateActivity2);
                                Object objX4 = composer5.x();
                                if (zY || objX4 == Composer.Companion.f7939a) {
                                    ForceUpdateActivity$onCreate$1$1$1$1 forceUpdateActivity$onCreate$1$1$1$1 = new ForceUpdateActivity$onCreate$1$1$1$1(0, forceUpdateActivity2, ForceUpdateActivity.class, "redirectToAppStore", "redirectToAppStore()V", 0);
                                    composer5.q(forceUpdateActivity$onCreate$1$1$1$1);
                                    objX4 = forceUpdateActivity$onCreate$1$1$1$1;
                                }
                                ForceUpdateComposableKt.a(forceUpdateViewModel, forceUpdateType, (Function0) ((KFunction) objX4), composer5, 0);
                            } else {
                                composer5.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer4), composer4, 48);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 15:
                ((Integer) obj2).getClass();
                ForgetPasswordComposableKt.a((ForgetPasswordViewModel) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 16:
                MovableContent movableContent = (MovableContent) obj4;
                Composer composer5 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                if (composer5.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    movableContent.f8022a.A(obj3, composer5, 0);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 17:
                RememberManager rememberManager = (RememberManager) obj4;
                SlotWriter slotWriter = (SlotWriter) obj3;
                int iIntValue6 = ((Integer) obj).intValue();
                if (obj2 instanceof ComposeNodeLifecycleCallback) {
                    rememberManager.c((ComposeNodeLifecycleCallback) obj2);
                } else if (!(obj2 instanceof ReusableRememberObserverHolder)) {
                    if (obj2 instanceof RememberObserverHolder) {
                        GapComposerKt.d(slotWriter, iIntValue6, obj2);
                        rememberManager.g((RememberObserverHolder) obj2);
                    } else if (obj2 instanceof RecomposeScopeImpl) {
                        GapComposerKt.d(slotWriter, iIntValue6, obj2);
                        ((RecomposeScopeImpl) obj2).c();
                    }
                }
                return Unit.f71739a;
            case 18:
                Function1 function3 = (Function1) obj4;
                VideoCtaArticleSectionUiModel videoCtaArticleSectionUiModel = (VideoCtaArticleSectionUiModel) obj3;
                Composer composer6 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer6.L(-1974883735);
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("AssetBlock$lambda$0");
                boolean zK2 = composer6.K(function3) | composer6.y(videoCtaArticleSectionUiModel);
                Object objX4 = composer6.x();
                if (zK2 || objX4 == composer$Companion$Empty$1) {
                    objX4 = new w30(function3, videoCtaArticleSectionUiModel, false ? 1 : 0);
                    composer6.q(objX4);
                }
                Modifier modifierD = ClickableKt.d(dTFunctionNameModifier, false, null, null, (Function0) objX4, 15);
                SolidColor solidColor = AlphaKt.f48327a;
                modifierD.getClass();
                Modifier modifierA = GradientKt.a(modifierD, AlphaKt.f48328b);
                composer6.F();
                return modifierA;
            case 19:
                ((Integer) obj2).getClass();
                InboxErrorScreenKt.a((ComposableLambdaImpl) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(7));
                return Unit.f71739a;
            case 20:
                Function1 function4 = (Function1) obj4;
                AvatarItemUiModel avatarItemUiModel = (AvatarItemUiModel) obj3;
                Composer composer7 = (Composer) obj;
                ((Integer) obj2).getClass();
                float f2 = LVAvatarKt.f50959a;
                composer7.L(-640298243);
                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("LVAvatar$lambda$2");
                boolean zK3 = composer7.K(function4) | composer7.K(avatarItemUiModel);
                Object objX5 = composer7.x();
                if (zK3 || objX5 == composer$Companion$Empty$1) {
                    objX5 = new t30(function4, avatarItemUiModel, 4);
                    composer7.q(objX5);
                }
                Modifier modifierC = ModifierExtKt.c(dTFunctionNameModifier2, false, null, null, (Function0) objX5, 31);
                composer7.F();
                return modifierC;
            case 21:
                DropdownItem dropdownItem = (DropdownItem) obj4;
                ConfigurationTextField configurationTextField = (ConfigurationTextField) obj3;
                Composer composer8 = (Composer) obj;
                int iIntValue7 = ((Integer) obj2).intValue();
                if (composer8.p(iIntValue7 & 1, (iIntValue7 & 3) != 2)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    String str5 = dropdownItem.f48441a;
                    TextStyle textStyle = LVAppDesignKitTheme.n(composer8).g;
                    long j3 = dropdownItem.f48442b ? configurationTextField.u : configurationTextField.v;
                    TextOverflow.f10989a.getClass();
                    TextKt.c(str5, null, j3, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, composer8, 0, 24960, 110586);
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 22:
                MutableFloatState mutableFloatState = (MutableFloatState) obj3;
                float fFloatValue = ((Float) obj).floatValue();
                ((Float) obj2).getClass();
                if (((Boolean) ((MutableState) obj4).getF10755b()).booleanValue()) {
                    fFloatValue = 1.0f - fFloatValue;
                }
                mutableFloatState.w(fFloatValue);
                return Unit.f71739a;
            case 23:
                PagerState pagerState = (PagerState) obj4;
                LVColorScheme lVColorScheme = (LVColorScheme) obj3;
                Composer composer9 = (Composer) obj;
                int iIntValue8 = ((Integer) obj2).intValue();
                if (composer9.p(iIntValue8 & 1, (iIntValue8 & 3) != 2)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    String strB = StringResources_androidKt.b(R.string.alt_mylv_native_register_step_progress, new Object[]{Integer.valueOf(pagerState.k() + 1), Integer.valueOf(pagerState.o())}, composer9);
                    String str6 = (pagerState.k() + 1) + " / " + pagerState.o();
                    int i4 = LVPageNumberIndicatorKt.WhenMappings.f48491a[lVColorScheme.ordinal()];
                    if (i4 == 1) {
                        composer9.L(-1120850721);
                        j2 = LVAppDesignKitTheme.c(composer9).f48361b.m;
                        composer9.F();
                    } else {
                        if (i4 != 2) {
                            throw o60.v(composer9, -1120853620);
                        }
                        composer9.L(-1120847655);
                        j2 = LVAppDesignKitTheme.c(composer9).f48361b.f48382k;
                        composer9.F();
                    }
                    long j4 = j2;
                    TextStyle textStyle2 = LVAppDesignKitTheme.n(composer9).m;
                    DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("LVPageNumberIndicator$lambda$0$0");
                    boolean zK4 = composer9.K(strB);
                    Object objX6 = composer9.x();
                    Object obj5 = objX6;
                    if (zK4 || objX6 == composer$Companion$Empty$1) {
                        lt ltVar = new lt(strB, 14);
                        composer9.q(ltVar);
                        obj5 = ltVar;
                    }
                    TextKt.c(str6, SemanticsModifierKt.b(dTFunctionNameModifier3, false, (Function1) obj5), j4, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle2, composer9, 0, 0, 131064);
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
            case 24:
                GridCells.Fixed fixed = (GridCells.Fixed) obj4;
                Arrangement.Horizontal horizontal = (Arrangement.Horizontal) obj3;
                Density density = (Density) obj;
                Constraints constraints = (Constraints) obj2;
                if (Constraints.h(constraints.f10999a) == Integer.MAX_VALUE) {
                    InlineClassHelperKt.a("LazyVerticalGrid's width should be bound by parent.");
                }
                int iH = Constraints.h(constraints.f10999a);
                int[] iArrX0 = CollectionsKt.x0(fixed.a(iH, density.B0(horizontal.getD())));
                int[] iArr = new int[iArrX0.length];
                horizontal.c(density, iH, iArrX0, LayoutDirection.Ltr, iArr);
                return new LazyGridSlots(iArrX0, iArr);
            case 25:
                GridCells.Fixed fixed2 = (GridCells.Fixed) obj4;
                Arrangement.Vertical vertical = (Arrangement.Vertical) obj3;
                Density density2 = (Density) obj;
                Constraints constraints2 = (Constraints) obj2;
                if (Constraints.g(constraints2.f10999a) == Integer.MAX_VALUE) {
                    InlineClassHelperKt.a("LazyHorizontalGrid's height should be bound by parent.");
                }
                int iG = Constraints.g(constraints2.f10999a);
                int[] iArrX1 = CollectionsKt.x0(fixed2.a(iG, density2.B0(vertical.getD())));
                int[] iArr2 = new int[iArrX1.length];
                vertical.b(density2, iG, iArrX1, iArr2);
                return new LazyGridSlots(iArrX1, iArr2);
            case 26:
                return ((LazyLayoutMeasurePolicy) obj3).a(new LazyLayoutMeasureScopeImpl((LazyLayoutItemContentFactory) obj4, (SubcomposeMeasureScope) obj), ((Constraints) obj2).f10999a);
            case 27:
                return LiveTranslationInteractorImpl.reducerConfigurator$lambda$0$0((LiveTranslationInteractorImpl) obj4, (LiveTranslationSettings.Enabled) obj3, (LiveTranslationInteractor.State) obj, (LiveTranslationInteractor.NewMessage) obj2);
            case 28:
                String str7 = (String) obj;
                FilterType filterType = (FilterType) obj2;
                str7.getClass();
                filterType.getClass();
                ((QuickAccessFiltersViewModel) obj4).Y0(new FilterParams(str7, ((QuickAccessFiltersViewState) ((State) obj3).getF10755b()).f58174h, QafSource.PLP, null, filterType, 8, null));
                return Unit.f71739a;
            default:
                IconLauncherType iconLauncherType = (IconLauncherType) obj;
                ((Integer) obj2).intValue();
                iconLauncherType.getClass();
                HapticFeedbackType.f9193b.getClass();
                int i5 = PlatformHapticFeedbackType.f9196a;
                ((HapticFeedback) obj4).a(0);
                ((MutableState) obj3).setValue(iconLauncherType);
                return Unit.f71739a;
        }
    }

    public /* synthetic */ rs(Object obj, Object obj2, int i2, int i3) {
        this.f79603b = i3;
        this.f79604c = obj;
        this.d = obj2;
    }
}
