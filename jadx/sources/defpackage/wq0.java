package defpackage;

import androidx.compose.runtime.StaticProvidableCompositionLocal;
import coil3.graphics.Decoder;
import coil3.network.NetworkFetcher;
import coil3.util.DecoderServiceLoaderTarget;
import coil3.util.FetcherServiceLoaderTarget;
import coil3.util.ServiceLoaderComponentRegistry;
import com.dynamicyield.sdk.wrapper.core.enums.ChoiceType;
import com.dynamicyield.sdk.wrapper.core.enums.CurrencyType;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.FilterSerializer;
import com.dynamicyield.sdk.wrapper.core.models.choose.payload.RecsProductDataOptions;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.AssistantResponse;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.AssistantResponse$$serializer;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.ChooseResponse;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.ChooseResponse$$serializer;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.QsrProductRecsChoice;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.QsrProductRecsVariation$$serializer;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.RecsChoice;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.RecsVariation$$serializer;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.Response;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.SemanticSearchResponse;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.SemanticSearchResponse$$serializer;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.VisualSearchResponse;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.VisualSearchResponse$$serializer;
import com.dynamicyield.sdk.wrapper.core.models.event.CartInnerItem$$serializer;
import com.dynamicyield.sdk.wrapper.core.models.event.RemoveFromCartEventProperties;
import com.dynamicyield.sdk.wrapper.core.models.search.payload.Query;
import com.vuitton.android.data.dto.careservices.CancellationReasonDto$$serializer;
import com.vuitton.android.data.dto.careservices.RepairCancellationReasonDto;
import com.vuitton.android.data.dto.common.editorial.RatioDto;
import com.vuitton.android.data.dto.config.cache.RegionCache;
import com.vuitton.android.data.dto.product.reinsurance.ReinsuranceDto;
import com.vuitton.android.data.dto.product.reinsurance.ReinsuranceDto$$serializer;
import com.vuitton.android.data.dto.product.reinsurance.ReinsuranceImageDto$$serializer;
import com.vuitton.android.data.dto.product.reinsurance.ReinsuranceResultDto;
import com.vuitton.android.data.dto.product.reinsurance.ReinsuranceVariationDto;
import com.vuitton.android.data.dto.product.reinsurance.ReinsuranceVariationDto$$serializer;
import com.vuitton.android.data.dto.repair.RepairStatusDto;
import com.vuitton.android.data.dto.repair.RepairStatusTranslationDto;
import com.vuitton.android.data.dto.repair.RepairTypeDto;
import com.vuitton.android.presentation.screen.orders.components.exchange.ReturnOrExchangeRoute;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceTrackerEntryPointKt;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.EnumSerializer;
import kotlinx.serialization.internal.EnumsKt;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class wq0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80927b;

    public /* synthetic */ wq0(int i2) {
        this.f80927b = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = 0;
        switch (this.f80927b) {
            case 0:
                QsrProductRecsChoice.Companion companion = QsrProductRecsChoice.Companion;
                return new ArrayListSerializer(QsrProductRecsVariation$$serializer.f26101a);
            case 1:
                QsrProductRecsChoice.Companion companion2 = QsrProductRecsChoice.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 2:
                Query.SemanticQuery.Companion companion3 = Query.SemanticQuery.INSTANCE;
                return new ArrayListSerializer(FilterSerializer.f25969a);
            case 3:
                Query.VisualQuery.Companion companion4 = Query.VisualQuery.INSTANCE;
                return new ArrayListSerializer(FilterSerializer.f25969a);
            case 4:
                return EnumsKt.a("com.vuitton.android.data.dto.common.editorial.RatioDto", RatioDto.values(), new String[]{"2/3", "4/5", "16/9", "9/16", "1/1", "fullscreen"}, new Annotation[][]{null, null, null, null, null, null});
            case 5:
                List listO0 = CollectionsKt.o0((List) ServiceLoaderComponentRegistry.f21732a.getF71699b(), new Comparator() { // from class: coil3.RealImageLoaderKt$addServiceLoaderComponents$lambda$0$$inlined$sortedByDescending$1
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return Integer.valueOf(((FetcherServiceLoaderTarget) obj2).priority()).compareTo(Integer.valueOf(((FetcherServiceLoaderTarget) obj).priority()));
                    }
                });
                ArrayList arrayList = new ArrayList();
                int size = listO0.size();
                while (i2 < size) {
                    FetcherServiceLoaderTarget fetcherServiceLoaderTarget = (FetcherServiceLoaderTarget) listO0.get(i2);
                    fetcherServiceLoaderTarget.getClass();
                    NetworkFetcher.Factory factoryA = fetcherServiceLoaderTarget.a();
                    KClass kClassType = fetcherServiceLoaderTarget.type();
                    Pair pair = kClassType == null ? null : new Pair(factoryA, kClassType);
                    if (pair != null) {
                        arrayList.add(pair);
                    }
                    i2++;
                }
                return arrayList;
            case 6:
                List listO1 = CollectionsKt.o0((List) ServiceLoaderComponentRegistry.f21733b.getF71699b(), new Comparator() { // from class: coil3.RealImageLoaderKt$addServiceLoaderComponents$lambda$1$$inlined$sortedByDescending$1
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        ((DecoderServiceLoaderTarget) obj2).getClass();
                        Integer num = 0;
                        ((DecoderServiceLoaderTarget) obj).getClass();
                        return num.compareTo(num);
                    }
                });
                ArrayList arrayList2 = new ArrayList();
                int size2 = listO1.size();
                while (i2 < size2) {
                    Decoder.Factory factoryA2 = ((DecoderServiceLoaderTarget) listO1.get(i2)).a();
                    if (factoryA2 != null) {
                        arrayList2.add(factoryA2);
                    }
                    i2++;
                }
                return arrayList2;
            case 7:
                RecsChoice.Companion companion5 = RecsChoice.Companion;
                ChoiceType[] choiceTypeArrValues = ChoiceType.values();
                choiceTypeArrValues.getClass();
                return new EnumSerializer("com.dynamicyield.sdk.wrapper.core.enums.ChoiceType", choiceTypeArrValues);
            case 8:
                RecsChoice.Companion companion6 = RecsChoice.Companion;
                return new ArrayListSerializer(RecsVariation$$serializer.f26116a);
            case 9:
                RecsChoice.Companion companion7 = RecsChoice.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 10:
                RecsProductDataOptions.Companion companion8 = RecsProductDataOptions.INSTANCE;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 11:
                RegionCache[] regionCacheArrValues = RegionCache.values();
                regionCacheArrValues.getClass();
                return new EnumSerializer("com.vuitton.android.data.dto.config.cache.RegionCache", regionCacheArrValues);
            case 12:
                ReinsuranceDto.Companion companion9 = ReinsuranceDto.Companion;
                return new ArrayListSerializer(ReinsuranceVariationDto$$serializer.f46448a);
            case 13:
                ReinsuranceDto.Companion companion10 = ReinsuranceDto.Companion;
                return new ArrayListSerializer(ReinsuranceImageDto$$serializer.f46438a);
            case 14:
                ReinsuranceResultDto.Companion companion11 = ReinsuranceResultDto.Companion;
                return new ArrayListSerializer(ReinsuranceDto$$serializer.f46436a);
            case 15:
                ReinsuranceResultDto.Companion companion12 = ReinsuranceResultDto.Companion;
                return new ArrayListSerializer(ReinsuranceDto$$serializer.f46436a);
            case 16:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = ReinsuranceTrackerEntryPointKt.f63416a;
                throw new IllegalStateException("no local ReinsuranceTracker provided");
            case 17:
                ReinsuranceVariationDto.Companion companion13 = ReinsuranceVariationDto.Companion;
                return new ArrayListSerializer(ReinsuranceImageDto$$serializer.f46438a);
            case 18:
                RemoveFromCartEventProperties.Companion companion14 = RemoveFromCartEventProperties.Companion;
                CurrencyType[] currencyTypeArrValues = CurrencyType.values();
                currencyTypeArrValues.getClass();
                return new EnumSerializer("com.dynamicyield.sdk.wrapper.core.enums.CurrencyType", currencyTypeArrValues);
            case 19:
                RemoveFromCartEventProperties.Companion companion15 = RemoveFromCartEventProperties.Companion;
                return new ArrayListSerializer(CartInnerItem$$serializer.f26300a);
            case 20:
                RepairCancellationReasonDto.Companion companion16 = RepairCancellationReasonDto.INSTANCE;
                return new ArrayListSerializer(CancellationReasonDto$$serializer.f44795a);
            case 21:
                return Unit.f71739a;
            case 22:
                return EnumsKt.a("com.vuitton.android.data.dto.repair.RepairStatusDto", RepairStatusDto.values(), new String[]{"dropped_in_store", "dropped_in_store_s", "routing_to_workshop", "expertise", "restoration", "restoration_not_performed", "ready_for_pick_up", "ready_for_pick_up_s", "home_delivery", "history", "request_submitted", "cancelled", "preliminary_assessment", "preliminary_assessment_acc", "preliminary_assessment_dec", "shipping_to_atelier", "received_at_atelier", "shipped_from_ehub", "under_assessment", "repair_in_progress", "awaiting_payment", "payment_confirmed", "payment_initiated", "payment_contact", "confirm_address", "shipping_in_preparation", "shipping", "delivered_to_client"}, new Annotation[][]{null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null});
            case 23:
                RepairStatusTranslationDto.Companion companion17 = RepairStatusTranslationDto.INSTANCE;
                return RepairStatusDto.INSTANCE.serializer();
            case 24:
                return EnumsKt.a("com.vuitton.android.data.dto.repair.RepairTypeDto", RepairTypeDto.values(), new String[]{"Distant Care Service", "Store Care Service"}, new Annotation[][]{null, null});
            case 25:
                Response.Companion companion18 = Response.INSTANCE;
                ReflectionFactory reflectionFactory = Reflection.f71922a;
                return new SealedClassSerializer("com.dynamicyield.sdk.wrapper.core.models.choose.response.Response", reflectionFactory.b(Response.class), new KClass[]{reflectionFactory.b(AssistantResponse.class), reflectionFactory.b(ChooseResponse.class), reflectionFactory.b(SemanticSearchResponse.class), reflectionFactory.b(VisualSearchResponse.class)}, new KSerializer[]{AssistantResponse$$serializer.f26062a, ChooseResponse$$serializer.f26068a, SemanticSearchResponse$$serializer.f26135a, VisualSearchResponse$$serializer.f26174a}, new Annotation[0]);
            case 26:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.orders.components.exchange.ReturnOrExchangeRoute.ExchangeVariation", ReturnOrExchangeRoute.ExchangeVariation.INSTANCE, new Annotation[0]);
            case 27:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.orders.components.exchange.ReturnOrExchangeRoute.Reason", ReturnOrExchangeRoute.Reason.INSTANCE, new Annotation[0]);
            case 28:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.orders.components.exchange.ReturnOrExchangeRoute.ReturnSummary", ReturnOrExchangeRoute.ReturnSummary.INSTANCE, new Annotation[0]);
            default:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.orders.components.exchange.ReturnOrExchangeRoute.Selection", ReturnOrExchangeRoute.Selection.INSTANCE, new Annotation[0]);
        }
    }
}
