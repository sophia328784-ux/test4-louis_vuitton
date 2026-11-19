package defpackage;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteTransactionListener;
import android.os.CancellationSignal;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import com.dynamicyield.sdk.wrapper.core.models.search.payload.Filter;
import com.vuitton.android.R;
import com.vuitton.android.data.database.entity.searchhistory.HistoryEntity;
import com.vuitton.android.data.database.entity.searchhistory.HistoryItemEntity;
import com.vuitton.android.data.database.entity.searchhistory.HistoryItemEntity$$serializer;
import com.vuitton.android.data.database.entity.searchhistory.ProductBackgroundEntity;
import com.vuitton.android.data.dto.account.orders.HistoryOrdersDtoResponse;
import com.vuitton.android.data.dto.account.orders.OrderDto$$serializer;
import com.vuitton.android.data.dto.connectivity.common.FaqCategoryDto$$serializer;
import com.vuitton.android.data.dto.connectivity.horizon.HorizonSpeakerSectionDto;
import com.vuitton.android.data.dto.travel.FlightTravelDto;
import com.vuitton.android.data.dto.travel.Passenger$$serializer;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.feed.components.FeedScreenKt;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.main.navigation.FeedRoute;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.search.mocks.HistoryMockKt;
import com.vuitton.android.presentation.screen.search.models.HistoryItemUiModel;
import com.vuitton.android.presentation.tracking.GA4TrackerEntryPointKt;
import com.vuitton.core.infrastructure.data.forms.models.FormEnumDependentValueDto;
import com.vuitton.core.infrastructure.data.forms.models.FormEnumDependentValueDto$$serializer;
import com.vuitton.core.infrastructure.data.forms.models.FormEnumValueDto$$serializer;
import com.vuitton.core.infrastructure.data.forms.models.FormFieldTypeDependentEnumDto;
import com.vuitton.core.infrastructure.data.forms.models.FormFieldTypeEnumDto;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.time.LocalDateTime;
import kotlin.Lazy;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class tx implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80164b;

    public /* synthetic */ tx(int i2) {
        this.f80164b = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        Class<?> returnType;
        switch (this.f80164b) {
            case 0:
                return Unit.f71739a;
            case 1:
                return Unit.f71739a;
            case 2:
                return Unit.f71739a;
            case 3:
                return Unit.f71739a;
            case 4:
                return SnapshotStateKt.g(Boolean.FALSE);
            case 5:
                return SnapshotStateKt.g(Boolean.FALSE);
            case 6:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.main.navigation.FeedRoute", FeedRoute.INSTANCE, new Annotation[0]);
            case 7:
                return Integer.valueOf(FeedScreenKt.f57835a.size());
            case 8:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = FeedTrackerEntryPointKt.f57934a;
                throw new IllegalStateException("no local FeedTracker provided");
            case 9:
                return StringResourceUiModel.Empty.f51825b;
            case 10:
                Filter.StringFilter.Companion companion = Filter.StringFilter.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 11:
                return Unit.f71739a;
            case 12:
                FlightTravelDto.Companion companion2 = FlightTravelDto.INSTANCE;
                return new ArrayListSerializer(Passenger$$serializer.f46917a);
            case 13:
                return 3;
            case 14:
                FormEnumDependentValueDto.Companion companion3 = FormEnumDependentValueDto.Companion;
                return new ArrayListSerializer(FormEnumValueDto$$serializer.f66063a);
            case 15:
                return Boolean.FALSE;
            case 16:
                return Unit.f71739a;
            case 17:
                FormFieldTypeDependentEnumDto.Companion companion4 = FormFieldTypeDependentEnumDto.Companion;
                return new ArrayListSerializer(FormEnumDependentValueDto$$serializer.f66060a);
            case 18:
                FormFieldTypeEnumDto.Companion companion5 = FormFieldTypeEnumDto.Companion;
                return new ArrayListSerializer(FormEnumValueDto$$serializer.f66063a);
            case 19:
                return new StringResourceUiModel.ResId(R.string.mylv_native_register_password_check5, null, 2, null);
            case 20:
                FrameworkSQLiteDatabase.Companion companion6 = FrameworkSQLiteDatabase.f19883c;
                try {
                    Method declaredMethod = SQLiteDatabase.class.getDeclaredMethod("getThreadSession", null);
                    declaredMethod.setAccessible(true);
                    return declaredMethod;
                } catch (Throwable unused) {
                    return null;
                }
            case 21:
                try {
                    FrameworkSQLiteDatabase.f19883c.getClass();
                    Method method = (Method) FrameworkSQLiteDatabase.f19885f.getF71699b();
                    if (method == null || (returnType = method.getReturnType()) == null) {
                        return null;
                    }
                    Class cls = Integer.TYPE;
                    return returnType.getDeclaredMethod("beginTransaction", cls, SQLiteTransactionListener.class, cls, CancellationSignal.class);
                } catch (Throwable unused2) {
                    return null;
                }
            case 22:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = GA4TrackerEntryPointKt.f65812a;
                throw new IllegalStateException("no local GA4Tracker provided");
            case 23:
                HistoryEntity.Companion companion7 = HistoryEntity.Companion;
                return new ArrayListSerializer(HistoryItemEntity$$serializer.f43612a);
            case 24:
                HistoryItemEntity.Companion companion8 = HistoryItemEntity.Companion;
                return ProductBackgroundEntity.INSTANCE.serializer();
            case 25:
                Lazy lazy = HistoryMockKt.f64234a;
                SkuIdUiModel.Companion companion9 = SkuIdUiModel.f61763c;
                return new HistoryItemUiModel.HistoryProductUiModel("M45985", "Diane", "https://au-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-diane-monogram-canvas-handbags--M45985_PM2_Front view.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}", null, R.drawable.background_product_default, LocalDateTime.now(), null);
            case 26:
                Lazy lazy2 = HistoryMockKt.f64234a;
                return new HistoryItemUiModel.HistoryResearchUiModel("Search 1", LocalDateTime.now());
            case 27:
                HistoryOrdersDtoResponse.Companion companion10 = HistoryOrdersDtoResponse.Companion;
                return new ArrayListSerializer(OrderDto$$serializer.f44395a);
            case 28:
                HorizonSpeakerSectionDto.Companion companion11 = HorizonSpeakerSectionDto.Companion;
                return new ArrayListSerializer(FaqCategoryDto$$serializer.f45564a);
            default:
                HorizonSpeakerSectionDto.Companion companion12 = HorizonSpeakerSectionDto.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
        }
    }
}
