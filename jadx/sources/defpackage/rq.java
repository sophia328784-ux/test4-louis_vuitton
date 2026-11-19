package defpackage;

import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.AlphaKt;
import com.vuitton.android.designkit.ui.theme.GradientKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.LVAvatarKt;
import com.vuitton.android.presentation.screen.account.inbox.models.InboxNotificationUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.feed.components.FeedDiscoverLoadingScreenKt;
import com.vuitton.android.presentation.screen.privacy.components.headers.GdprPrivacyHeaderKt;
import com.vuitton.android.presentation.screen.storemode.components.CreateWishlistCardKt;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import kotlin.Unit;
import kotlin.coroutines.CombinedContext;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CopyableThreadContextElement;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class rq implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79594b;

    public /* synthetic */ rq(int i2) {
        this.f79594b = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        CombinedContext combinedContext;
        boolean z = true;
        switch (this.f79594b) {
            case 0:
                CoroutineContext coroutineContext = (CoroutineContext) obj;
                CoroutineContext.Element element = (CoroutineContext.Element) obj2;
                coroutineContext.getClass();
                element.getClass();
                CoroutineContext coroutineContextMinusKey = coroutineContext.minusKey(element.getKey());
                EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.f71840b;
                if (coroutineContextMinusKey == emptyCoroutineContext) {
                    return element;
                }
                ContinuationInterceptor.Companion companion = ContinuationInterceptor.INSTANCE;
                ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) coroutineContextMinusKey.get(companion);
                if (continuationInterceptor == null) {
                    combinedContext = new CombinedContext(coroutineContextMinusKey, element);
                } else {
                    CoroutineContext coroutineContextMinusKey2 = coroutineContextMinusKey.minusKey(companion);
                    if (coroutineContextMinusKey2 == emptyCoroutineContext) {
                        return new CombinedContext(element, continuationInterceptor);
                    }
                    combinedContext = new CombinedContext(new CombinedContext(coroutineContextMinusKey2, element), continuationInterceptor);
                }
                return combinedContext;
            case 1:
                CoroutineContext.Element element2 = (CoroutineContext.Element) obj2;
                if (!((Boolean) obj).booleanValue() && !(element2 instanceof CopyableThreadContextElement)) {
                    z = false;
                }
                return Boolean.valueOf(z);
            case 2:
                CoroutineContext coroutineContext2 = (CoroutineContext) obj;
                CoroutineContext.Element element3 = (CoroutineContext.Element) obj2;
                return element3 instanceof CopyableThreadContextElement ? coroutineContext2.plus(((CopyableThreadContextElement) element3).n()) : coroutineContext2.plus(element3);
            case 3:
                ((Integer) obj2).getClass();
                CreateWishlistCardKt.a((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 4:
                ((Integer) obj2).getClass();
                DistantRepairFormBottomSheetScreenKt.f((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 5:
                ((FormSectionTypeUiModel) obj).getClass();
                obj2.getClass();
                return Unit.f71739a;
            case 6:
                return Unit.f71739a;
            case 7:
                FormFieldGenericUiModel formFieldGenericUiModel = (FormFieldGenericUiModel) obj2;
                ((FormUiModel) obj).getClass();
                formFieldGenericUiModel.getClass();
                return formFieldGenericUiModel;
            case 8:
                ((FormSectionTypeUiModel) obj).getClass();
                ((String) obj2).getClass();
                return Unit.f71739a;
            case 9:
                ((FormSectionTypeUiModel) obj).getClass();
                ((String) obj2).getClass();
                return Unit.f71739a;
            case 10:
                ((FormSectionTypeUiModel) obj).getClass();
                ((String) obj2).getClass();
                return Unit.f71739a;
            case 11:
                Composer composer = (Composer) obj;
                ((Integer) obj2).getClass();
                composer.L(-786227650);
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Modifier modifierA = GradientKt.a(new DTFunctionNameModifier("EditorialCardBackground$lambda$0$2"), GradientKt.f48342a);
                composer.F();
                return modifierA;
            case 12:
                Composer composer2 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer2.L(719532236);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                Modifier modifierK = PaddingKt.k(new DTFunctionNameModifier("EditorialCard$lambda$11$0"), LVAppDesignKitTheme.l(composer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                composer2.F();
                return modifierK;
            case 13:
                Composer composer3 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer3.L(1862750515);
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                Modifier modifierK2 = PaddingKt.k(new DTFunctionNameModifier("EditorialCard$lambda$11$1"), LVAppDesignKitTheme.l(composer3).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                composer3.F();
                return modifierK2;
            case 14:
                Composer composer4 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer4.L(77297306);
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("EditorialCard$lambda$11$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer4).m, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
                composer4.F();
                return modifierM;
            case 15:
                Composer composer5 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer5.L(387883265);
                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                Modifier modifierO = new DTFunctionNameModifier("EditorialCard$lambda$11$3").o(SizeKt.f5052c);
                composer5.F();
                return modifierO;
            case 16:
                Composer composer6 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer6.L(-1626353560);
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                Modifier modifierA2 = ClipKt.a(new DTFunctionNameModifier("EditorialCard$lambda$11$4"), LVAppDesignKitTheme.j(composer6).f48411c);
                composer6.F();
                return modifierA2;
            case 17:
                return Unit.f71739a;
            case 18:
                ((LVLightUpDeviceType) obj2).getClass();
                return Unit.f71739a;
            case 19:
                ((Integer) obj2).getClass();
                FeedDiscoverLoadingScreenKt.a((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 20:
                return Boolean.valueOf(Intrinsics.c(obj, obj2));
            case 21:
                ((Integer) obj2).getClass();
                GdprPrivacyHeaderKt.a((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 22:
                Composer composer7 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer7.L(898599956);
                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                Modifier modifierB = WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier("GiftOptionComposable$lambda$3"));
                composer7.F();
                return modifierB;
            case 23:
                Composer composer8 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer8.L(1486182195);
                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                Modifier modifierM2 = PaddingKt.m(new DTFunctionNameModifier("ImmersiveArticleAssetView$lambda$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer8).f48417f, 7);
                composer8.F();
                return modifierM2;
            case 24:
                Composer composer9 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer9.L(-151281140);
                OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                Modifier modifierA3 = GradientKt.a(new DTFunctionNameModifier("AssetBlock$lambda$0"), AlphaKt.f48328b);
                composer9.F();
                return modifierA3;
            case 25:
                Composer composer10 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer10.L(1163068664);
                OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                Modifier modifierA4 = GradientKt.a(new DTFunctionNameModifier("TopAssetWithGradients$lambda$0$2"), GradientKt.f48342a);
                composer10.F();
                return modifierA4;
            case 26:
                Composer composer11 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer11.L(-1917784036);
                OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                Modifier modifierM3 = PaddingKt.m(new DTFunctionNameModifier("ImmersiveArticleProductTabsView$lambda$4$0$0$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer11).d, 7);
                composer11.F();
                return modifierM3;
            case 27:
                ((Integer) obj).intValue();
                InboxNotificationUiModel inboxNotificationUiModel = (InboxNotificationUiModel) obj2;
                inboxNotificationUiModel.getClass();
                return inboxNotificationUiModel.f52412a;
            case 28:
                Composer composer12 = (Composer) obj;
                ((Integer) obj2).getClass();
                float f2 = LVAvatarKt.f50959a;
                composer12.L(99297587);
                OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("LVAvatar$lambda$1");
                Dp.Companion companion2 = Dp.f11004c;
                Modifier modifierA5 = BorderKt.a(dTFunctionNameModifier, 1.0f, LVAppDesignKitTheme.c(composer12).f48361b.f48382k, RoundedCornerShapeKt.f5846a);
                composer12.F();
                return modifierA5;
            default:
                Composer composer13 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer13.L(-391775193);
                OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                Modifier modifierA6 = androidx.compose.ui.draw.AlphaKt.a(new DTFunctionNameModifier("LVCardCheck$lambda$0"), 0.5f);
                composer13.F();
                return modifierA6;
        }
    }
}
