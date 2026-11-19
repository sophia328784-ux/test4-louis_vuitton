package defpackage;

import com.appsflyer.AFLogger;
import com.appsflyer.internal.AFc1aSDK;
import com.appsflyer.internal.AFc1jSDK;
import com.appsflyer.internal.AFg1oSDK;
import com.appsflyer.internal.AFj1eSDK;
import com.dynamicyield.sdk.wrapper.core.models.assistant.response.Widget;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.RecsSlot$$serializer;
import com.vuitton.android.data.dto.wishlist.bff.WishlistDto;
import com.vuitton.android.data.dto.wishlist.bff.WishlistErrorAtgDto$$serializer;
import com.vuitton.android.data.dto.wishlist.bff.WishlistErrorsAtgDto;
import com.vuitton.android.data.dto.wishlist.bff.WishlistItemDto$$serializer;
import com.vuitton.android.presentation.screen.main.navigation.WishlistRoute;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.wishlist.WishlistRoutes;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistIdUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistItemUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistMocksKt;
import java.lang.annotation.Annotation;
import kotlin.Lazy;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.ObjectSerializer;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class r61 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79260b;

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f79260b) {
            case 0:
                return Unit.f71739a;
            case 1:
                Widget.Companion companion = Widget.Companion;
                return new ArrayListSerializer(RecsSlot$$serializer.f26114a);
            case 2:
                return Unit.f71739a;
            case 3:
                return Unit.f71739a;
            case 4:
                WishlistDto.Companion companion2 = WishlistDto.Companion;
                return new ArrayListSerializer(WishlistItemDto$$serializer.f46956a);
            case 5:
                WishlistErrorsAtgDto.Companion companion3 = WishlistErrorsAtgDto.Companion;
                return new ArrayListSerializer(WishlistErrorAtgDto$$serializer.f46948a);
            case 6:
                Lazy lazy = WishlistMocksKt.f65744a;
                WishlistIdUiModel.Companion companion4 = WishlistIdUiModel.f65737c;
                SkuIdUiModel.Companion companion5 = SkuIdUiModel.f61763c;
                return new WishlistItemUiModel("tractatos", "sodales", "Wilbur Barr", "libris", "ea", false, 32, null);
            case 7:
                return Unit.f71739a;
            case 8:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.main.navigation.WishlistRoute", WishlistRoute.INSTANCE, new Annotation[0]);
            case 9:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.wishlist.WishlistRoutes.Share", WishlistRoutes.Share.INSTANCE, new Annotation[0]);
            case 10:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.wishlist.WishlistRoutes.Wishlist", WishlistRoutes.Wishlist.INSTANCE, new Annotation[0]);
            case 11:
                throw new IllegalStateException("Expedited WorkRequests require a Worker to provide an implementation for `getForegroundInfo()`");
            case 12:
                return Unit.f71739a;
            case 13:
                return AFLogger.d();
            case 14:
                return AFLogger.AFKeystoreWrapper();
            case 15:
                return AFc1aSDK.setResolveDeepLinkURLs();
            case 16:
                return AFc1jSDK.registerClient();
            case 17:
                return AFg1oSDK.AFLoggerLogLevel();
            default:
                return AFj1eSDK.AFKeystoreWrapper();
        }
    }

    public /* synthetic */ r61(int i2) {
        this.f79260b = i2;
    }
}
