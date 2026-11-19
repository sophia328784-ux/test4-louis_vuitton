package defpackage;

import androidx.compose.foundation.text.AutofillHighlightKt;
import androidx.compose.foundation.text.BasicText_androidKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.SolidColor;
import com.dynamicyield.sdk.wrapper.core.models.assistant.response.Widget$$serializer;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.AssistantChoice;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.AssistantData;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.AssistantResponse;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.Cookie$$serializer;
import com.vuitton.android.data.dto.address.autocomplete.AutocompleteContextDto;
import com.vuitton.android.data.dto.audioguide.AudioGuideDto;
import com.vuitton.android.data.dto.audioguide.AudioGuideDto$AvailableLanguageDto$$serializer;
import com.vuitton.android.data.dto.audioguide.AudioGuideDto$TrackDto$$serializer;
import com.vuitton.android.data.dto.avatar.AvatarItemDto$$serializer;
import com.vuitton.android.data.dto.avatar.AvatarResponseDto;
import com.vuitton.android.data.dto.avatar.AvatarSectionDto;
import com.vuitton.android.data.dto.avatar.AvatarSectionDto$$serializer;
import com.vuitton.android.data.dto.booking.BookingActionDto;
import com.vuitton.android.data.dto.booking.BookingActionTypeDto;
import com.vuitton.android.data.dto.common.FeatureThemeDto;
import com.vuitton.android.data.dto.product.stock.shared.AvailabilityTimeFormatDto;
import com.vuitton.android.data.dto.product.vto.BeautyProductTypeDto;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoRoutes;
import com.vuitton.foundation.model.domain.model.audioguide.AudioGuideAccessData;
import com.vuitton.foundation.model.domain.model.common.FeatureTheme;
import java.lang.annotation.Annotation;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.EnumSerializer;
import kotlinx.serialization.internal.EnumsKt;
import kotlinx.serialization.internal.ObjectSerializer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class w9 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80802b;

    public /* synthetic */ w9(int i2) {
        this.f80802b = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f80802b) {
            case 0:
                AssistantData.Companion companion = AssistantData.Companion;
                return new ArrayListSerializer(Widget$$serializer.f26013a);
            case 1:
                AssistantResponse.Companion companion2 = AssistantResponse.Companion;
                return new ArrayListSerializer(AssistantChoice.INSTANCE.serializer());
            case 2:
                AssistantResponse.Companion companion3 = AssistantResponse.Companion;
                return new ArrayListSerializer(Cookie$$serializer.f26072a);
            case 3:
                AudioGuideAccessData.Companion companion4 = AudioGuideAccessData.INSTANCE;
                FeatureTheme[] featureThemeArrValues = FeatureTheme.values();
                featureThemeArrValues.getClass();
                return new EnumSerializer("com.vuitton.foundation.model.domain.model.common.FeatureTheme", featureThemeArrValues);
            case 4:
                AudioGuideDto.Companion companion5 = AudioGuideDto.Companion;
                return EnumsKt.a("com.vuitton.android.data.dto.common.FeatureThemeDto", FeatureThemeDto.values(), new String[]{"light", "dark"}, new Annotation[][]{null, null});
            case 5:
                AudioGuideDto.Companion companion6 = AudioGuideDto.Companion;
                return new ArrayListSerializer(AudioGuideDto$AvailableLanguageDto$$serializer.f44512a);
            case 6:
                AudioGuideDto.Companion companion7 = AudioGuideDto.Companion;
                return new ArrayListSerializer(AudioGuideDto$TrackDto$$serializer.f44524a);
            case 7:
                return Unit.f71739a;
            case 8:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = AudioGuideTrackerEntryPointKt.f52977a;
                throw new IllegalStateException("no local AudioGuideTracker provided");
            case 9:
                return EnumsKt.a("com.vuitton.android.data.dto.address.autocomplete.AutocompleteContextDto", AutocompleteContextDto.values(), new String[]{"register", "addressBook", "onlineStoreAppointment", "travel", "findInStore"}, new Annotation[][]{null, null, null, null, null});
            case 10:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AutofillHighlightKt.f5851a;
                return new SolidColor(ColorKt.b(1308617531), null);
            case 11:
                return EnumsKt.a("com.vuitton.android.data.dto.product.stock.shared.AvailabilityTimeFormatDto", AvailabilityTimeFormatDto.values(), new String[]{"day", "week", "month"}, new Annotation[][]{null, null, null});
            case 12:
                AvatarResponseDto.Companion companion8 = AvatarResponseDto.INSTANCE;
                return new ArrayListSerializer(AvatarSectionDto$$serializer.f44619a);
            case 13:
                AvatarSectionDto.Companion companion9 = AvatarSectionDto.INSTANCE;
                return new ArrayListSerializer(AvatarItemDto$$serializer.f44611a);
            case 14:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = BasicText_androidKt.f5855a;
                return null;
            case 15:
                return Unit.f71739a;
            case 16:
                return Unit.f71739a;
            case 17:
                return EnumsKt.a("com.vuitton.android.data.dto.product.vto.BeautyProductTypeDto", BeautyProductTypeDto.values(), new String[]{"lipstick", "eyeShadow", "lipLiner"}, new Annotation[][]{null, null, null});
            case 18:
                BeautyVtoActivity.Companion companion10 = BeautyVtoActivity.D;
                return Unit.f71739a;
            case 19:
                BeautyVtoActivity.Companion companion11 = BeautyVtoActivity.D;
                return Unit.f71739a;
            case 20:
                BeautyVtoActivity.Companion companion12 = BeautyVtoActivity.D;
                return Unit.f71739a;
            case 21:
                return Unit.f71739a;
            case 22:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoRoutes.PicturePreview", BeautyVtoRoutes.PicturePreview.INSTANCE, new Annotation[0]);
            case 23:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoRoutes.ShadeFinderIntro", BeautyVtoRoutes.ShadeFinderIntro.INSTANCE, new Annotation[0]);
            case 24:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoRoutes.ShadeFinderResult", BeautyVtoRoutes.ShadeFinderResult.INSTANCE, new Annotation[0]);
            case 25:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoRoutes.ShadeFinderResultEmpty", BeautyVtoRoutes.ShadeFinderResultEmpty.INSTANCE, new Annotation[0]);
            case 26:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoRoutes.ShadeFinderScan", BeautyVtoRoutes.ShadeFinderScan.INSTANCE, new Annotation[0]);
            case 27:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoRoutes.Vto", BeautyVtoRoutes.Vto.INSTANCE, new Annotation[0]);
            case 28:
                return Unit.f71739a;
            default:
                BookingActionDto.Companion companion13 = BookingActionDto.Companion;
                return BookingActionTypeDto.INSTANCE.serializer();
        }
    }
}
