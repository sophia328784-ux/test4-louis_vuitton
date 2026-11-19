package com.airbnb.lottie.compose;

import android.graphics.BlendModeColorFilter;
import android.graphics.ColorFilter;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotStateKt;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.value.LottieFrameInfo;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004¨\u0006\u0007²\u00063\u0010\u0006\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u00008\nX\u008a\u0084\u0002"}, d2 = {"T", "Lkotlin/Function1;", "Lcom/airbnb/lottie/value/LottieFrameInfo;", "Lkotlin/ParameterName;", "name", "frameInfo", "callbackState", "lottie-compose_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public abstract class LottieDynamicPropertiesKt {
    public static final LottieDynamicProperties a(LottieDynamicProperty[] lottieDynamicPropertyArr, Composer composer) {
        composer.w(-395574495);
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        int iHashCode = Arrays.hashCode(lottieDynamicPropertyArr);
        composer.w(34468001);
        boolean zD = composer.d(iHashCode);
        Object objX = composer.x();
        if (zD || objX == Composer.Companion.f7939a) {
            objX = new LottieDynamicProperties(ArraysKt.W(lottieDynamicPropertyArr));
            composer.q(objX);
        }
        LottieDynamicProperties lottieDynamicProperties = (LottieDynamicProperties) objX;
        composer.J();
        composer.J();
        return lottieDynamicProperties;
    }

    public static final LottieDynamicProperty b(ColorFilter colorFilter, BlendModeColorFilter blendModeColorFilter, String[] strArr, Composer composer) {
        composer.w(-1788530187);
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        composer.w(1613443961);
        boolean zK = composer.K(strArr);
        Object objX = composer.x();
        Object obj = Composer.Companion.f7939a;
        if (zK || objX == obj) {
            objX = new KeyPath((String[]) Arrays.copyOf(strArr, strArr.length));
            composer.q(objX);
        }
        KeyPath keyPath = (KeyPath) objX;
        composer.J();
        composer.w(1613444012);
        boolean zK2 = composer.K(keyPath) | composer.K(blendModeColorFilter);
        Object objX2 = composer.x();
        if (zK2 || objX2 == obj) {
            objX2 = new LottieDynamicProperty((BlendModeColorFilter) colorFilter, keyPath, blendModeColorFilter);
            composer.q(objX2);
        }
        LottieDynamicProperty lottieDynamicProperty = (LottieDynamicProperty) objX2;
        composer.J();
        composer.J();
        return lottieDynamicProperty;
    }

    public static final LottieDynamicProperty c(ColorFilter colorFilter, String[] strArr, Function1 function1, Composer composer) {
        function1.getClass();
        composer.w(1331897370);
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        int iHashCode = Arrays.hashCode(strArr);
        composer.w(1613445061);
        boolean zD = composer.d(iHashCode);
        Object objX = composer.x();
        Object obj = Composer.Companion.f7939a;
        if (zD || objX == obj) {
            objX = new KeyPath((String[]) Arrays.copyOf(strArr, strArr.length));
            composer.q(objX);
        }
        KeyPath keyPath = (KeyPath) objX;
        composer.J();
        final MutableState mutableStateL = SnapshotStateKt.l(function1, composer);
        composer.w(1613445186);
        boolean zK = composer.K(keyPath);
        Object objX2 = composer.x();
        if (zK || objX2 == obj) {
            objX2 = new LottieDynamicProperty(colorFilter, keyPath, new Function1<LottieFrameInfo<Object>, Object>() { // from class: com.airbnb.lottie.compose.LottieDynamicPropertiesKt$rememberLottieDynamicProperty$2$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    LottieFrameInfo lottieFrameInfo = (LottieFrameInfo) obj2;
                    lottieFrameInfo.getClass();
                    return ((Function1) mutableStateL.getF10755b()).invoke(lottieFrameInfo);
                }
            });
            composer.q(objX2);
        }
        LottieDynamicProperty lottieDynamicProperty = (LottieDynamicProperty) objX2;
        composer.J();
        composer.J();
        return lottieDynamicProperty;
    }
}
