package defpackage;

import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.ComponentRegistrarProcessor;
import com.google.gson.JsonIOException;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.ObjectConstructor;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g;
import java.io.FileNotFoundException;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class bm implements DoubleFunction, ComponentRegistrarProcessor, ObjectConstructor, Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20901b;

    public /* synthetic */ bm(int i2) {
        this.f20901b = i2;
    }

    public static /* synthetic */ void c(Object obj, Object obj2, Object obj3, Object obj4, String str) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3 + obj4);
    }

    public static /* synthetic */ void d(Object obj, String str) {
        throw new AssertionError(str + obj);
    }

    public static /* synthetic */ void e(Object obj, StringBuilder sb) {
        sb.append(obj);
        throw new IllegalArgumentException(sb.toString());
    }

    public static /* synthetic */ void f(String str, Object obj, Object obj2) throws GeneralSecurityException {
        throw new GeneralSecurityException(str + obj + obj2);
    }

    public static /* synthetic */ void g(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3);
    }

    public static /* synthetic */ void h(String str, Object obj, Object obj2, Throwable th) {
        throw new RuntimeException(str + obj + obj2, th);
    }

    public static /* synthetic */ void i(Throwable th) {
        throw new IllegalStateException(th);
    }

    public static /* synthetic */ void j(Object obj, String str) {
        throw new JsonIOException(str + ((Object) obj.toString()));
    }

    @Override // com.google.firebase.components.ComponentRegistrarProcessor
    public List a(ComponentRegistrar componentRegistrar) {
        return componentRegistrar.getComponents();
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        switch (this.f20901b) {
            case 26:
                Throwable th = (Throwable) obj;
                if (th instanceof FileNotFoundException) {
                    Log.d("ContentPreloader", "[preloadSku] error, please check json files format and void empty(null) item." + th);
                } else {
                    Log.e("ContentPreloader", "[preloadSku] error, please check json files format and void empty(null) item", th);
                }
                return g.f42660b;
            case 27:
                return Arrays.asList((String[]) obj);
            case 28:
                Throwable th2 = (Throwable) obj;
                if (th2 instanceof FileNotFoundException) {
                    Log.d("ContentPreloader", "[preloadSkuSet] error, please check json files format and void empty(null) item." + th2);
                } else {
                    Log.e("ContentPreloader", "[preloadSkuSet] error, please check json files format and void empty(null) item", th2);
                }
                return g.f42660b;
            default:
                Throwable th3 = (Throwable) obj;
                if (th3 instanceof FileNotFoundException) {
                    Log.d("ContentPreloader", "[preloadLook] error, please check json files format and void empty(null) item." + th3);
                } else {
                    Log.e("ContentPreloader", "[preloadLook] error, please check json files format and void empty(null) item", th3);
                }
                return g.f42660b;
        }
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public double b(double d) {
        switch (this.f20901b) {
            case 7:
                float[] fArr = ColorSpaces.f8955a;
                double d2 = d < 0.0d ? -d : d;
                return Math.copySign(d2 >= 0.0031308049535603718d ? (Math.pow(d2, 0.4166666666666667d) - 0.05213270142180095d) / 0.9478672985781991d : d2 / 0.07739938080495357d, d);
            case 8:
                float[] fArr2 = ColorSpaces.f8955a;
                double d3 = d < 0.0d ? -d : d;
                return Math.copySign(d3 >= 0.04045d ? Math.pow((0.9478672985781991d * d3) + 0.05213270142180095d, 2.4d) : d3 * 0.07739938080495357d, d);
            case 9:
                return ColorSpaces.b(ColorSpaces.f8957c, d);
            case 10:
                return ColorSpaces.a(ColorSpaces.f8957c, d);
            case 11:
                return ColorSpaces.d(ColorSpaces.d, d);
            default:
                return ColorSpaces.c(ColorSpaces.d, d);
        }
    }

    @Override // com.google.gson.internal.ObjectConstructor
    public Object construct() {
        switch (this.f20901b) {
            case 16:
                return ConstructorConstructor.lambda$newCollectionConstructor$13();
            case 17:
                return ConstructorConstructor.lambda$newMapConstructor$14();
            case 18:
                return ConstructorConstructor.lambda$newMapConstructor$15();
            case 19:
                return ConstructorConstructor.lambda$newMapConstructor$16();
            case 20:
                return ConstructorConstructor.lambda$newMapConstructor$17();
            case 21:
                return ConstructorConstructor.lambda$newMapConstructor$18();
            case 22:
                return ConstructorConstructor.lambda$newCollectionConstructor$10();
            case 23:
                return ConstructorConstructor.lambda$newCollectionConstructor$11();
            default:
                return ConstructorConstructor.lambda$newCollectionConstructor$12();
        }
    }
}
