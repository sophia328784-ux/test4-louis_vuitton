package defpackage;

import androidx.lifecycle.SavedStateViewModelFactory;
import coil3.network.CacheStrategy;
import coil3.network.ConcurrentRequestStrategy;
import com.vuitton.android.data.dto.model3dasset.Model3dAssetDto;
import com.vuitton.android.data.dto.model3dasset.Model3dAssetNameDto;
import com.vuitton.android.data.dto.model3dasset.Model3dAssetTypeDto;
import com.vuitton.android.data.dto.pdp.ModelSizeVariationDto;
import com.vuitton.android.data.dto.pdp.WearingDto$$serializer;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationRoute;
import com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterRoutes;
import com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterRoutes$JusoSearch$$serializer;
import com.vuitton.android.presentation.screen.booking.MyBookingsRoutes;
import com.vuitton.android.presentation.screen.cart.NativeCartRoute;
import com.vuitton.android.presentation.screen.main.navigation.MyLvRoute;
import java.lang.annotation.Annotation;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.EnumsKt;
import kotlinx.serialization.internal.ObjectSerializer;
import timber.log.Timber;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class dd0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68553b;

    public /* synthetic */ dd0(int i2) {
        this.f68553b = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f68553b) {
            case 0:
                Model3dAssetDto.Companion companion = Model3dAssetDto.INSTANCE;
                return Model3dAssetNameDto.INSTANCE.serializer();
            case 1:
                return EnumsKt.a("com.vuitton.android.data.dto.model3dasset.Model3dAssetNameDto", Model3dAssetNameDto.values(), new String[]{"LD-R", "background3D"}, new Annotation[][]{null, null});
            case 2:
                return EnumsKt.a("com.vuitton.android.data.dto.model3dasset.Model3dAssetTypeDto", Model3dAssetTypeDto.values(), new String[]{"image", "3D-asset-android", "3D-asset-ios"}, new Annotation[][]{null, null, null});
            case 3:
                ModelSizeVariationDto.Companion companion2 = ModelSizeVariationDto.Companion;
                return new ArrayListSerializer(WearingDto$$serializer.f46303a);
            case 4:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.booking.MyBookingsRoutes.List", MyBookingsRoutes.List.INSTANCE, new Annotation[0]);
            case 5:
                MyInformationRoute.Companion companion3 = MyInformationRoute.Companion;
                ReflectionFactory reflectionFactory = Reflection.f71922a;
                return new SealedClassSerializer("com.vuitton.android.presentation.screen.account.myinformation.MyInformationRoute", reflectionFactory.b(MyInformationRoute.class), new KClass[]{reflectionFactory.b(MyInformationRoute.EditBranchId.class), reflectionFactory.b(MyInformationRoute.EditMyInfo.class), reflectionFactory.b(MyInformationRoute.EditPassword.class), reflectionFactory.b(MyInformationRoute.EditTaxId.class), reflectionFactory.b(MyInformationRoute.MyInfo.class)}, new KSerializer[]{new ObjectSerializer("com.vuitton.android.presentation.screen.account.myinformation.MyInformationRoute.EditBranchId", MyInformationRoute.EditBranchId.INSTANCE, new Annotation[0]), new ObjectSerializer("com.vuitton.android.presentation.screen.account.myinformation.MyInformationRoute.EditMyInfo", MyInformationRoute.EditMyInfo.INSTANCE, new Annotation[0]), new ObjectSerializer("com.vuitton.android.presentation.screen.account.myinformation.MyInformationRoute.EditPassword", MyInformationRoute.EditPassword.INSTANCE, new Annotation[0]), new ObjectSerializer("com.vuitton.android.presentation.screen.account.myinformation.MyInformationRoute.EditTaxId", MyInformationRoute.EditTaxId.INSTANCE, new Annotation[0]), new ObjectSerializer("com.vuitton.android.presentation.screen.account.myinformation.MyInformationRoute.MyInfo", MyInformationRoute.MyInfo.INSTANCE, new Annotation[0])}, new Annotation[0]);
            case 6:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.account.myinformation.MyInformationRoute.EditBranchId", MyInformationRoute.EditBranchId.INSTANCE, new Annotation[0]);
            case 7:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.account.myinformation.MyInformationRoute.EditMyInfo", MyInformationRoute.EditMyInfo.INSTANCE, new Annotation[0]);
            case 8:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.account.myinformation.MyInformationRoute.EditPassword", MyInformationRoute.EditPassword.INSTANCE, new Annotation[0]);
            case 9:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.account.myinformation.MyInformationRoute.EditTaxId", MyInformationRoute.EditTaxId.INSTANCE, new Annotation[0]);
            case 10:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.account.myinformation.MyInformationRoute.MyInfo", MyInformationRoute.MyInfo.INSTANCE, new Annotation[0]);
            case 11:
                Timber.Forest forest = Timber.f80066a;
                forest.g("Recomposition");
                forest.a("onScreenshotDetected...  ", new Object[0]);
                return Unit.f71739a;
            case 12:
                return Unit.f71739a;
            case 13:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.main.navigation.MyLvRoute", MyLvRoute.INSTANCE, new Annotation[0]);
            case 14:
                return Unit.f71739a;
            case 15:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.cart.NativeCartRoute.Cart", NativeCartRoute.Cart.INSTANCE, new Annotation[0]);
            case 16:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.cart.NativeCartRoute.Packaging", NativeCartRoute.Packaging.INSTANCE, new Annotation[0]);
            case 17:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.cart.NativeCartRoute.PerfumeSamples", NativeCartRoute.PerfumeSamples.INSTANCE, new Annotation[0]);
            case 18:
                return Unit.f71739a;
            case 19:
                NativeRegisterRoutes.Companion companion4 = NativeRegisterRoutes.Companion;
                ReflectionFactory reflectionFactory2 = Reflection.f71922a;
                return new SealedClassSerializer("com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterRoutes", reflectionFactory2.b(NativeRegisterRoutes.class), new KClass[]{reflectionFactory2.b(NativeRegisterRoutes.JusoSearch.class), reflectionFactory2.b(NativeRegisterRoutes.Register.class)}, new KSerializer[]{NativeRegisterRoutes$JusoSearch$$serializer.f53863a, new ObjectSerializer("com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterRoutes.Register", NativeRegisterRoutes.Register.INSTANCE, new Annotation[0])}, new Annotation[0]);
            case 20:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterRoutes.Register", NativeRegisterRoutes.Register.INSTANCE, new Annotation[0]);
            case 21:
                return new SavedStateViewModelFactory();
            case 22:
                return Unit.f71739a;
            case 23:
                return Unit.f71739a;
            case 24:
                return Unit.f71739a;
            case 25:
                return Unit.f71739a;
            case 26:
                return ConcurrentRequestStrategy.f21537a;
            case 27:
                return CacheStrategy.f21532a;
            case 28:
                return ConcurrentRequestStrategy.f21537a;
            default:
                return CacheStrategy.f21532a;
        }
    }
}
