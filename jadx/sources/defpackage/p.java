package defpackage;

import android.content.Context;
import android.content.ContextWrapper;
import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.gestures.AnchoredDraggableDefaults;
import androidx.compose.foundation.gestures.AnchoredDraggableKt;
import androidx.compose.material3.SheetValue;
import androidx.compose.material3.internal.AccessibilityUtilKt;
import androidx.compose.material3.internal.AnchoredDraggableState;
import androidx.compose.ui.autofill.ContentType;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.navigation.ActivityNavigator;
import androidx.navigation3.scene.Scene;
import com.appsflyer.sdk_base.util.AndroidExtensionsKt;
import com.vuitton.android.data.repository.AnalyticsWrapperRepositoryImpl;
import com.vuitton.android.domain.repository.AnalyticsRepository;
import com.vuitton.android.presentation.compose.animation.EnterTransitionKt;
import com.vuitton.android.presentation.compose.animation.ExitTransitionKt;
import com.vuitton.android.presentation.compose.animation.Nav3TransitionsKt;
import com.vuitton.android.presentation.extensions.SemanticsPropertyReceiverExtKt;
import com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;
import com.vuitton.android.presentation.screen.aicompanion.components.entrypoint.AICompanionTooltipKt;
import com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModelImpl;
import com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListFragment;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.ActiveFiltersSliderKt;
import com.vuitton.foundation.model.domain.model.connectivity.travel.Airport;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class p implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78711b;

    public /* synthetic */ p(AirportListFragment airportListFragment) {
        this.f78711b = 21;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f78711b) {
            case 0:
                SheetValue sheetValue = (SheetValue) obj;
                sheetValue.getClass();
                return Boolean.valueOf(sheetValue != SheetValue.PartiallyExpanded);
            case 1:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver, 0);
                return Unit.f71739a;
            case 2:
                AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope.getClass();
                return Intrinsics.c(((Scene) animatedContentTransitionScope.getF4004b()).getMetadata().get("fade_transition"), Boolean.TRUE) ? AnimatedContentKt.e(EnterExitTransitionKt.f(AnimationSpecKt.c(1000, 0, null, 6), Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), EnterExitTransitionKt.h(AnimationSpecKt.c(1000, 0, null, 6), 2)) : Nav3TransitionsKt.a(animatedContentTransitionScope);
            case 3:
                AnimatedContentTransitionScope animatedContentTransitionScope2 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope2.getClass();
                return Nav3TransitionsKt.b(animatedContentTransitionScope2);
            case 4:
                Long l = (Long) obj;
                l.longValue();
                return l;
            case 5:
                float f2 = AICompanionTooltipKt.f52836a;
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 6:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                float f3 = AICompanionTooltipKt.f52836a;
                semanticsPropertyReceiver2.getClass();
                SemanticsPropertyReceiverExtKt.a(semanticsPropertyReceiver2);
                return Unit.f71739a;
            case 7:
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                float f4 = AICompanionTooltipKt.f52836a;
                semanticsPropertyReceiver3.getClass();
                SemanticsPropertyReceiverExtKt.a(semanticsPropertyReceiver3);
                return Unit.f71739a;
            case 8:
                float f5 = AccessibilityUtilKt.f7485a;
                return Unit.f71739a;
            case 9:
                float f6 = AccessibilityUtilKt.f7485a;
                return Unit.f71739a;
            case 10:
                SemanticsPropertyReceiver semanticsPropertyReceiver4 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver4.getClass();
                ContentType.f8649a.getClass();
                SemanticsPropertiesKt.j(semanticsPropertyReceiver4, ContentType.Companion.K);
                return Unit.f71739a;
            case 11:
                FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                formSectionTypeUiModel.getClass();
                int i2 = AccountActivationViewModelImpl.WhenMappings.f53344a[formSectionTypeUiModel.ordinal()];
                if (i2 == 1) {
                    return "account_activation_password";
                }
                if (i2 != 2) {
                    return null;
                }
                return "account_activation_privacy_policy";
            case 12:
                ExitTransition exitTransition = ActiveFiltersSliderKt.f58051a;
                return null;
            case 13:
                Context context = (Context) obj;
                int i3 = ActivityNavigator.f18093e;
                context.getClass();
                if (context instanceof ContextWrapper) {
                    return ((ContextWrapper) context).getBaseContext();
                }
                return null;
            case 14:
                SheetValue sheetValue2 = (SheetValue) obj;
                sheetValue2.getClass();
                return Boolean.valueOf(sheetValue2 != SheetValue.PartiallyExpanded);
            case 15:
                ((Boolean) obj).booleanValue();
                return Unit.f71739a;
            case 16:
                AnimatedContentTransitionScope animatedContentTransitionScope3 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope3.getClass();
                return EnterTransitionKt.a(animatedContentTransitionScope3, 0, 3);
            case 17:
                AnimatedContentTransitionScope animatedContentTransitionScope4 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope4.getClass();
                return ExitTransitionKt.a(animatedContentTransitionScope4, 0, 3);
            case 18:
                AnimatedContentTransitionScope animatedContentTransitionScope5 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope5.getClass();
                return EnterTransitionKt.b(animatedContentTransitionScope5, 0, 3);
            case 19:
                AnimatedContentTransitionScope animatedContentTransitionScope6 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope6.getClass();
                return ExitTransitionKt.b(animatedContentTransitionScope6, 0, 3);
            case 20:
                switch (AddressEditorViewModelImpl$loadDynamicAddressFormFor$1.WhenMappings.f52242a[((FormSectionTypeUiModel) obj).ordinal()]) {
                    case 1:
                        return "addAddress_description_textField";
                    case 2:
                        return "addAddress_title_button";
                    case 3:
                        return "addAddress_firstName_textField";
                    case 4:
                        return "addAddress_lastName_textField";
                    case 5:
                        return "addAddress_address_textField";
                    case 6:
                        return "addAddress_addressContinued_textField";
                    case 7:
                        return "addAddress_city_textField";
                    case 8:
                        return "addAddress_zipCode_textField";
                    case 9:
                        return "addAddress_state_button";
                    case 10:
                        return "addAddress_country_button";
                    default:
                        return null;
                }
            case 21:
                AirportListFragment.Companion companion = AirportListFragment.K;
                return Unit.f71739a;
            case 22:
                Airport airport = (Airport) obj;
                AirportListFragment.Companion companion2 = AirportListFragment.K;
                airport.getClass();
                return airport.f67354a;
            case 23:
                AnalyticsRepository analyticsRepository = (AnalyticsRepository) obj;
                int i4 = AnalyticsWrapperRepositoryImpl.f47213i;
                analyticsRepository.getClass();
                return analyticsRepository.getClass().getSimpleName();
            case 24:
                float fFloatValue = ((Float) obj).floatValue();
                TweenSpec tweenSpec = AnchoredDraggableDefaults.f4336a;
                return Float.valueOf(fFloatValue / 2.0f);
            case 25:
                p pVar = AnchoredDraggableKt.f4345a;
                return Boolean.TRUE;
            case 26:
                ((Integer) obj).getClass();
                p pVar2 = AnchoredDraggableKt.f4345a;
                return Float.valueOf(Float.NaN);
            case 27:
                int i5 = AnchoredDraggableState.p;
                return Boolean.TRUE;
            case 28:
                int i6 = androidx.compose.foundation.gestures.AnchoredDraggableState.p;
                return Boolean.TRUE;
            default:
                return AndroidExtensionsKt.bytesToUpperHexString$lambda$0(((Byte) obj).byteValue());
        }
    }

    public /* synthetic */ p(int i2) {
        this.f78711b = i2;
    }
}
