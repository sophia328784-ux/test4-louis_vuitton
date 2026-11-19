package defpackage;

import androidx.compose.material3.Shapes;
import androidx.compose.material3.ShapesKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.navigation3.scene.SharedEntryInSceneNavEntryDecoratorKt;
import coil3.util.Collections_jvmCommonKt;
import coil3.util.DecoderServiceLoaderTarget;
import coil3.util.FetcherServiceLoaderTarget;
import coil3.util.ServiceLoaderComponentRegistry;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.FacetSerializer;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.Cookie$$serializer;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.RecsSlot$$serializer;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.SemanticSearchChoice;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.SemanticSearchData;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.SemanticSearchResponse;
import com.dynamicyield.sdk.wrapper.core.models.event.SecondaryIdentifier$$serializer;
import com.dynamicyield.sdk.wrapper.core.models.event.SignupProperties;
import com.google.firebase.sessions.ProcessData$$serializer;
import com.google.firebase.sessions.SessionData;
import com.vuitton.android.data.dto.account.orders.ItemDto$$serializer;
import com.vuitton.android.data.dto.account.orders.ShippingGroupDto;
import com.vuitton.android.data.dto.account.orders.ShippingTypeDto;
import com.vuitton.android.data.dto.booking.SingleTextLayoutDto;
import com.vuitton.android.data.dto.pdp.NotSellableReasonDto;
import com.vuitton.android.data.dto.pdp.SellableStatusDto;
import com.vuitton.android.data.dto.product.sizeguide.MediaCategoryDto$$serializer;
import com.vuitton.android.data.dto.product.sizeguide.SizeGuideDropDownDto;
import com.vuitton.android.data.dto.product.sizeguide.SizeGuideDropDownDto$$serializer;
import com.vuitton.android.data.dto.product.sizeguide.SizeGuideRowDto;
import com.vuitton.android.data.dto.product.sizeguide.SizeGuideRowDto$$serializer;
import com.vuitton.android.data.dto.product.sizeguide.SizeGuideTableDto;
import com.vuitton.android.data.dto.product.vto.RecommendationDto$$serializer;
import com.vuitton.android.data.dto.product.vto.ShadeFinderRequestDto;
import com.vuitton.android.data.dto.product.vto.ShadeFinderResponseDto;
import com.vuitton.android.designkit.ui.theme.ShapeKt;
import com.vuitton.android.presentation.screen.main.navigation.ServiceRoute;
import com.vuitton.android.presentation.screen.options.settings.SettingsRoutes;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTrackerKt;
import java.lang.annotation.Annotation;
import java.util.ServiceLoader;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlin.sequences.SequencesKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.EnumsKt;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class zu0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81725b;

    public /* synthetic */ zu0(int i2) {
        this.f81725b = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f81725b) {
            case 0:
                SellableStatusDto.Companion companion = SellableStatusDto.Companion;
                return NotSellableReasonDto.INSTANCE.serializer();
            case 1:
                SemanticSearchData.Companion companion2 = SemanticSearchData.INSTANCE;
                return new ArrayListSerializer(FacetSerializer.f25967a);
            case 2:
                SemanticSearchData.Companion companion3 = SemanticSearchData.INSTANCE;
                return new ArrayListSerializer(RecsSlot$$serializer.f26114a);
            case 3:
                SemanticSearchResponse.Companion companion4 = SemanticSearchResponse.Companion;
                return new ArrayListSerializer(SemanticSearchChoice.INSTANCE.serializer());
            case 4:
                SemanticSearchResponse.Companion companion5 = SemanticSearchResponse.Companion;
                return new ArrayListSerializer(Cookie$$serializer.f26072a);
            case 5:
                Lazy lazy = ServiceLoaderComponentRegistry.f21732a;
                return Collections_jvmCommonKt.a(SequencesKt.x(SequencesKt.b(ServiceLoader.load(FetcherServiceLoaderTarget.class, FetcherServiceLoaderTarget.class.getClassLoader()).iterator())));
            case 6:
                Lazy lazy2 = ServiceLoaderComponentRegistry.f21732a;
                return Collections_jvmCommonKt.a(SequencesKt.x(SequencesKt.b(ServiceLoader.load(DecoderServiceLoaderTarget.class, DecoderServiceLoaderTarget.class.getClassLoader()).iterator())));
            case 7:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.main.navigation.ServiceRoute", ServiceRoute.INSTANCE, new Annotation[0]);
            case 8:
                SessionData.Companion companion6 = SessionData.INSTANCE;
                return new LinkedHashMapSerializer(StringSerializer.f75684a, ProcessData$$serializer.f35449a);
            case 9:
                SettingsRoutes.Companion companion7 = SettingsRoutes.Companion;
                ReflectionFactory reflectionFactory = Reflection.f71922a;
                return new SealedClassSerializer("com.vuitton.android.presentation.screen.options.settings.SettingsRoutes", reflectionFactory.b(SettingsRoutes.class), new KClass[]{reflectionFactory.b(SettingsRoutes.EditConsents.class), reflectionFactory.b(SettingsRoutes.EditProfile.class), reflectionFactory.b(SettingsRoutes.EditSettings.class), reflectionFactory.b(SettingsRoutes.Home.class)}, new KSerializer[]{new ObjectSerializer("com.vuitton.android.presentation.screen.options.settings.SettingsRoutes.EditConsents", SettingsRoutes.EditConsents.INSTANCE, new Annotation[0]), new ObjectSerializer("com.vuitton.android.presentation.screen.options.settings.SettingsRoutes.EditProfile", SettingsRoutes.EditProfile.INSTANCE, new Annotation[0]), new ObjectSerializer("com.vuitton.android.presentation.screen.options.settings.SettingsRoutes.EditSettings", SettingsRoutes.EditSettings.INSTANCE, new Annotation[0]), new ObjectSerializer("com.vuitton.android.presentation.screen.options.settings.SettingsRoutes.Home", SettingsRoutes.Home.INSTANCE, new Annotation[0])}, new Annotation[0]);
            case 10:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.options.settings.SettingsRoutes.EditConsents", SettingsRoutes.EditConsents.INSTANCE, new Annotation[0]);
            case 11:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.options.settings.SettingsRoutes.EditProfile", SettingsRoutes.EditProfile.INSTANCE, new Annotation[0]);
            case 12:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.options.settings.SettingsRoutes.EditSettings", SettingsRoutes.EditSettings.INSTANCE, new Annotation[0]);
            case 13:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.options.settings.SettingsRoutes.Home", SettingsRoutes.Home.INSTANCE, new Annotation[0]);
            case 14:
                ShadeFinderRequestDto.Companion companion8 = ShadeFinderRequestDto.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 15:
                ShadeFinderResponseDto.Companion companion9 = ShadeFinderResponseDto.Companion;
                return new ArrayListSerializer(RecommendationDto$$serializer.f46543a);
            case 16:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = ShadeFinderTrackerKt.f62295a;
                throw new IllegalStateException("no local ShadeFinderTracker provided");
            case 17:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = ShapeKt.f48433a;
                throw new IllegalStateException("no local LV shapes provided");
            case 18:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = ShapesKt.f7199a;
                return new Shapes(null, null, null, null, null, 31, null);
            case 19:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = SharedEntryInSceneNavEntryDecoratorKt.f18416a;
                return null;
            case 20:
                ShippingGroupDto.Companion companion10 = ShippingGroupDto.Companion;
                return ShippingTypeDto.Companion.serializer();
            case 21:
                ShippingGroupDto.Companion companion11 = ShippingGroupDto.Companion;
                return new ArrayListSerializer(ItemDto$$serializer.f44382a);
            case 22:
                return EnumsKt.a("com.vuitton.android.data.dto.account.orders.ShippingTypeDto", ShippingTypeDto.values(), new String[]{"clickAndCollect", "standard"}, new Annotation[][]{null, null});
            case 23:
                SignupProperties.Companion companion12 = SignupProperties.Companion;
                return new ArrayListSerializer(SecondaryIdentifier$$serializer.f26358a);
            case 24:
                return EnumsKt.a("com.vuitton.android.data.dto.booking.SingleTextLayoutDto", SingleTextLayoutDto.values(), new String[]{"small", "large"}, new Annotation[][]{null, null});
            case 25:
                SizeGuideDropDownDto.Companion companion13 = SizeGuideDropDownDto.INSTANCE;
                return new ArrayListSerializer(SizeGuideRowDto$$serializer.f46471a);
            case 26:
                SizeGuideRowDto.Companion companion14 = SizeGuideRowDto.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 27:
                SizeGuideTableDto.Companion companion15 = SizeGuideTableDto.INSTANCE;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 28:
                SizeGuideTableDto.Companion companion16 = SizeGuideTableDto.INSTANCE;
                return new ArrayListSerializer(MediaCategoryDto$$serializer.f46461a);
            default:
                SizeGuideTableDto.Companion companion17 = SizeGuideTableDto.INSTANCE;
                return new ArrayListSerializer(SizeGuideDropDownDto$$serializer.f46465a);
        }
    }
}
