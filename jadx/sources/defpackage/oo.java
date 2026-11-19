package defpackage;

import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.tooling.CompositionErrorContextKt;
import com.vuitton.android.data.dto.connectivity.sync.ConnectedObjectsConfigDto;
import com.vuitton.android.data.dto.distantrepairs.AppointmentTypeDto;
import com.vuitton.android.data.dto.distantrepairs.ConfirmAppointmentDtoRequest;
import com.vuitton.android.data.dto.pdp.ConfigurationDto;
import com.vuitton.android.data.dto.pdp.CustomizationTypeDto;
import com.vuitton.android.presentation.screen.authentication.welcome.components.ComposableSingletons$WelcomeScreenKt;
import com.vuitton.android.presentation.screen.certificates.components.ComposableSingletons$TransferCertificateCardKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.ComposableSingletons$TermsAndConditionsComposableKt;
import com.vuitton.android.presentation.screen.search.components.ComposableSingletons$SuggestionCarouselComposableKt;
import com.vuitton.android.presentation.screen.spotlight.components.ComposableSingletons$SpotlightScreenKt;
import com.vuitton.android.presentation.screen.storemode.components.ComposableSingletons$StoreModeExpiredComposableKt;
import com.vuitton.android.presentation.screen.thankyou.components.ComposableSingletons$ThankYouScreenKt;
import com.vuitton.android.presentation.screen.wishlist.components.ComposableSingletons$WishlistProductItemKt;
import com.vuitton.android.presentation.screen.wishlist.components.ComposableSingletons$WishlistScreenKt;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class oo implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f77511b;

    public /* synthetic */ oo(int i2) {
        this.f77511b = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f77511b) {
            case 0:
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt = ComposableSingletons$SpotlightScreenKt.f64582a;
                return Unit.f71739a;
            case 1:
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt2 = ComposableSingletons$SpotlightScreenKt.f64582a;
                return Unit.f71739a;
            case 2:
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt3 = ComposableSingletons$SpotlightScreenKt.f64582a;
                return Unit.f71739a;
            case 3:
                ComposableSingletons$SpotlightScreenKt composableSingletons$SpotlightScreenKt4 = ComposableSingletons$SpotlightScreenKt.f64582a;
                return Unit.f71739a;
            case 4:
                ComposableSingletons$StoreModeExpiredComposableKt composableSingletons$StoreModeExpiredComposableKt = ComposableSingletons$StoreModeExpiredComposableKt.f64833a;
                return Unit.f71739a;
            case 5:
                ComposableSingletons$SuggestionCarouselComposableKt composableSingletons$SuggestionCarouselComposableKt = ComposableSingletons$SuggestionCarouselComposableKt.f64164a;
                return Unit.f71739a;
            case 6:
                ComposableSingletons$SuggestionCarouselComposableKt composableSingletons$SuggestionCarouselComposableKt2 = ComposableSingletons$SuggestionCarouselComposableKt.f64164a;
                return Unit.f71739a;
            case 7:
                ComposableSingletons$TermsAndConditionsComposableKt composableSingletons$TermsAndConditionsComposableKt = ComposableSingletons$TermsAndConditionsComposableKt.f57076a;
                return Unit.f71739a;
            case 8:
                ComposableSingletons$ThankYouScreenKt composableSingletons$ThankYouScreenKt = ComposableSingletons$ThankYouScreenKt.f65236a;
                return Unit.f71739a;
            case 9:
                ComposableSingletons$TransferCertificateCardKt composableSingletons$TransferCertificateCardKt = ComposableSingletons$TransferCertificateCardKt.f55686a;
                return Unit.f71739a;
            case 10:
                ComposableSingletons$WelcomeScreenKt composableSingletons$WelcomeScreenKt = ComposableSingletons$WelcomeScreenKt.f54269a;
                return Unit.f71739a;
            case 11:
                ComposableSingletons$WelcomeScreenKt composableSingletons$WelcomeScreenKt2 = ComposableSingletons$WelcomeScreenKt.f54269a;
                return Unit.f71739a;
            case 12:
                ComposableSingletons$WelcomeScreenKt composableSingletons$WelcomeScreenKt3 = ComposableSingletons$WelcomeScreenKt.f54269a;
                return Unit.f71739a;
            case 13:
                ComposableSingletons$WelcomeScreenKt composableSingletons$WelcomeScreenKt4 = ComposableSingletons$WelcomeScreenKt.f54269a;
                return Unit.f71739a;
            case 14:
                ComposableSingletons$WelcomeScreenKt composableSingletons$WelcomeScreenKt5 = ComposableSingletons$WelcomeScreenKt.f54269a;
                return Unit.f71739a;
            case 15:
                ComposableSingletons$WelcomeScreenKt composableSingletons$WelcomeScreenKt6 = ComposableSingletons$WelcomeScreenKt.f54269a;
                return Unit.f71739a;
            case 16:
                ComposableSingletons$WelcomeScreenKt composableSingletons$WelcomeScreenKt7 = ComposableSingletons$WelcomeScreenKt.f54269a;
                return Unit.f71739a;
            case 17:
                ComposableSingletons$WishlistProductItemKt composableSingletons$WishlistProductItemKt = ComposableSingletons$WishlistProductItemKt.f65684a;
                return Unit.f71739a;
            case 18:
                ComposableSingletons$WishlistProductItemKt composableSingletons$WishlistProductItemKt2 = ComposableSingletons$WishlistProductItemKt.f65684a;
                return Unit.f71739a;
            case 19:
                ComposableSingletons$WishlistScreenKt composableSingletons$WishlistScreenKt = ComposableSingletons$WishlistScreenKt.f65688a;
                return Unit.f71739a;
            case 20:
                return Unit.f71739a;
            case 21:
                return Unit.f71739a;
            case 22:
                return Unit.f71739a;
            case 23:
                return Unit.f71739a;
            case 24:
                return Unit.f71739a;
            case 25:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = CompositionErrorContextKt.f8561a;
                return null;
            case 26:
                ComposerKt.b("Unexpected call to default provider");
                throw new KotlinNothingValueException();
            case 27:
                ConfigurationDto.Companion companion = ConfigurationDto.Companion;
                return CustomizationTypeDto.INSTANCE.serializer();
            case 28:
                ConfirmAppointmentDtoRequest.Companion companion2 = ConfirmAppointmentDtoRequest.Companion;
                return AppointmentTypeDto.INSTANCE.serializer();
            default:
                ConnectedObjectsConfigDto.Companion companion3 = ConnectedObjectsConfigDto.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
        }
    }
}
