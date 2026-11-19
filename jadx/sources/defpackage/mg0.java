package defpackage;

import androidx.compose.runtime.StaticProvidableCompositionLocal;
import coil3.network.okhttp.internal.CallFactoryNetworkClient;
import com.dynamicyield.sdk.wrapper.core.models.event.NewsletterSubscriptionEventProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.SecondaryIdentifier$$serializer;
import com.vuitton.android.data.dto.account.orders.ChannelDto;
import com.vuitton.android.data.dto.account.orders.OngoingOrdersDtoResponse;
import com.vuitton.android.data.dto.account.orders.OrderDto;
import com.vuitton.android.data.dto.account.orders.OrderDto$$serializer;
import com.vuitton.android.data.dto.pdp.NotSellableReasonDto;
import com.vuitton.android.designkit.ui.theme.OpacityKt;
import com.vuitton.android.domain.usecase.account.accessibility.GetAccessibilityValueUseCase;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationBuilderKt;
import com.vuitton.android.presentation.notification.NotificationBuilderKt$previewNotificationBuilder$2$1;
import com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes;
import com.vuitton.android.presentation.screen.options.OptionsRoutes;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.components.OpOutMenu;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.components.OptOutOthers;
import com.vuitton.foundation.model.domain.model.account.notifications.NotificationPreferenceType;
import java.lang.annotation.Annotation;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.EnumSerializer;
import kotlinx.serialization.internal.EnumsKt;
import kotlinx.serialization.internal.ObjectSerializer;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class mg0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76271b;

    public /* synthetic */ mg0(int i2) {
        this.f76271b = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f76271b) {
            case 0:
                NewsletterSubscriptionEventProperties.Companion companion = NewsletterSubscriptionEventProperties.Companion;
                return new ArrayListSerializer(SecondaryIdentifier$$serializer.f26358a);
            case 1:
                return EnumsKt.a("com.vuitton.android.data.dto.pdp.NotSellableReasonDto", NotSellableReasonDto.values(), new String[]{"not_ecommerce", "mandatory_customization", "web_only", "unavailable"}, new Annotation[][]{null, null, null, null});
            case 2:
                NotificationBuilder notificationBuilder = NotificationBuilderKt.f51837a;
                return new NotificationBuilder(new GetAccessibilityValueUseCase(new NotificationBuilderKt$previewNotificationBuilder$2$1()));
            case 3:
                NotificationPreferenceType[] notificationPreferenceTypeArrValues = NotificationPreferenceType.values();
                notificationPreferenceTypeArrValues.getClass();
                return new EnumSerializer("com.vuitton.foundation.model.domain.model.account.notifications.NotificationPreferenceType", notificationPreferenceTypeArrValues);
            case 4:
                return new CallFactoryNetworkClient(new OkHttpClient());
            case 5:
                return Unit.f71739a;
            case 6:
                return Unit.f71739a;
            case 7:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.Accessibility", OnboardingRoutes.Accessibility.INSTANCE, new Annotation[0]);
            case 8:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.Geolocation", OnboardingRoutes.Geolocation.INSTANCE, new Annotation[0]);
            case 9:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.Icons", OnboardingRoutes.Icons.INSTANCE, new Annotation[0]);
            case 10:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.Login", OnboardingRoutes.Login.INSTANCE, new Annotation[0]);
            case 11:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.Notifications", OnboardingRoutes.Notifications.INSTANCE, new Annotation[0]);
            case 12:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.PiplCbt", OnboardingRoutes.PiplCbt.INSTANCE, new Annotation[0]);
            case 13:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.Privacy", OnboardingRoutes.Privacy.INSTANCE, new Annotation[0]);
            case 14:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.PrivacyPreCompliance", OnboardingRoutes.PrivacyPreCompliance.INSTANCE, new Annotation[0]);
            case 15:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.StartNow", OnboardingRoutes.StartNow.INSTANCE, new Annotation[0]);
            case 16:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.Transition", OnboardingRoutes.Transition.INSTANCE, new Annotation[0]);
            case 17:
                OngoingOrdersDtoResponse.Companion companion2 = OngoingOrdersDtoResponse.Companion;
                return new ArrayListSerializer(OrderDto$$serializer.f44395a);
            case 18:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.options.optoutprivacymenu.components.OpOutMenu", OpOutMenu.INSTANCE, new Annotation[0]);
            case 19:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = OpacityKt.f48431a;
                throw new IllegalStateException("no local opacity provided");
            case 20:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.options.optoutprivacymenu.components.OptOutOthers", OptOutOthers.INSTANCE, new Annotation[0]);
            case 21:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.options.OptionsRoutes.Accessibility", OptionsRoutes.Accessibility.INSTANCE, new Annotation[0]);
            case 22:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.options.OptionsRoutes.AppInfo", OptionsRoutes.AppInfo.INSTANCE, new Annotation[0]);
            case 23:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.options.OptionsRoutes.Dispatch", OptionsRoutes.Dispatch.INSTANCE, new Annotation[0]);
            case 24:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.options.OptionsRoutes.FeatureFlagMenu", OptionsRoutes.FeatureFlagMenu.INSTANCE, new Annotation[0]);
            case 25:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.options.OptionsRoutes.LegalMentions", OptionsRoutes.LegalMentions.INSTANCE, new Annotation[0]);
            case 26:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.options.OptionsRoutes.Menu", OptionsRoutes.Menu.INSTANCE, new Annotation[0]);
            case 27:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.options.OptionsRoutes.Notifications", OptionsRoutes.Notifications.INSTANCE, new Annotation[0]);
            case 28:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.options.OptionsRoutes.PrivacyPolicy", OptionsRoutes.PrivacyPolicy.INSTANCE, new Annotation[0]);
            default:
                OrderDto.Companion companion3 = OrderDto.Companion;
                return ChannelDto.INSTANCE.serializer();
        }
    }
}
