package defpackage;

import androidx.compose.foundation.OverscrollConfiguration;
import androidx.compose.foundation.OverscrollConfiguration_androidKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import com.dynamicyield.sdk.wrapper.core.enums.PageType;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.Page;
import com.vuitton.android.data.dto.account.orders.OrderDto;
import com.vuitton.android.data.dto.account.orders.OrderDto$$serializer;
import com.vuitton.android.data.dto.account.orders.OrderReturnDtoResponse;
import com.vuitton.android.data.dto.account.orders.OrderReturnErrorDto$$serializer;
import com.vuitton.android.data.dto.account.orders.OrdersDtoResponse;
import com.vuitton.android.data.dto.account.orders.ShippingGroupDto$$serializer;
import com.vuitton.android.data.dto.common.CookieDto$$serializer;
import com.vuitton.android.data.dto.common.PageUrlDto;
import com.vuitton.android.data.dto.pdp.PackagingVariationDto;
import com.vuitton.android.presentation.screen.osa.OsaRoutes;
import java.lang.annotation.Annotation;
import java.util.LinkedHashSet;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.EnumSerializer;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ii0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69980b;

    public /* synthetic */ ii0(int i2) {
        this.f69980b = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f69980b) {
            case 0:
                OrderDto.Companion companion = OrderDto.Companion;
                return new ArrayListSerializer(ShippingGroupDto$$serializer.f44433a);
            case 1:
                return new LinkedHashSet();
            case 2:
                return new LinkedHashSet();
            case 3:
                OrderReturnDtoResponse.Companion companion2 = OrderReturnDtoResponse.Companion;
                return new ArrayListSerializer(OrderReturnErrorDto$$serializer.f44406a);
            case 4:
                return Unit.f71739a;
            case 5:
                return SnapshotIntStateKt.a(0);
            case 6:
                OrdersDtoResponse.Companion companion3 = OrdersDtoResponse.Companion;
                return new ArrayListSerializer(OrderDto$$serializer.f44395a);
            case 7:
                OrdersDtoResponse.Companion companion4 = OrdersDtoResponse.Companion;
                return new ArrayListSerializer(OrderDto$$serializer.f44395a);
            case 8:
                return SnapshotStateKt.g(Boolean.FALSE);
            case 9:
                return Unit.f71739a;
            case 10:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.osa.OsaRoutes.ContactForm", OsaRoutes.ContactForm.INSTANCE, new Annotation[0]);
            case 11:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.osa.OsaRoutes.Kisa", OsaRoutes.Kisa.INSTANCE, new Annotation[0]);
            case 12:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.osa.OsaRoutes.List", OsaRoutes.List.INSTANCE, new Annotation[0]);
            case 13:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.osa.OsaRoutes.LocationForm", OsaRoutes.LocationForm.INSTANCE, new Annotation[0]);
            case 14:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.osa.OsaRoutes.Login", OsaRoutes.Login.INSTANCE, new Annotation[0]);
            case 15:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = OverscrollConfiguration_androidKt.f4284a;
                return new OverscrollConfiguration(0L, null, 3, null);
            case 16:
                return null;
            case 17:
                return Unit.f71739a;
            case 18:
                return Unit.f71739a;
            case 19:
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
                PackagingVariationDto[] packagingVariationDtoArrValues = PackagingVariationDto.values();
                packagingVariationDtoArrValues.getClass();
                return new EnumSerializer("com.vuitton.android.data.dto.pdp.PackagingVariationDto", packagingVariationDtoArrValues);
            case 26:
                Page.Companion companion5 = Page.Companion;
                PageType[] pageTypeArrValues = PageType.values();
                pageTypeArrValues.getClass();
                return new EnumSerializer("com.dynamicyield.sdk.wrapper.core.enums.PageType", pageTypeArrValues);
            case 27:
                Page.Companion companion6 = Page.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 28:
                PageUrlDto.Companion companion7 = PageUrlDto.INSTANCE;
                return new ArrayListSerializer(CookieDto$$serializer.f45256a);
            default:
                return Unit.f71739a;
        }
    }
}
