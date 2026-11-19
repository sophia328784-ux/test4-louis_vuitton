package defpackage;

import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.pager.PagerScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.ContentScale;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.storemode.components.StoreModeHomeSlideshowKt;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class zk implements Function4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81654b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f81655c;

    public /* synthetic */ zk(List list, int i2) {
        this.f81654b = i2;
        this.f81655c = list;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        String str;
        int i2 = this.f81654b;
        List list = this.f81655c;
        switch (i2) {
            case 0:
                int iIntValue = ((Integer) obj2).intValue();
                ((Integer) obj4).getClass();
                ((PagerScope) obj).getClass();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Modifier modifierA = AspectRatioKt.a(new DTFunctionNameModifier("CapucineSlideShow$lambda$2$0"), 0.8f, true);
                Object obj5 = list.get(iIntValue);
                obj5.getClass();
                ContentScale.f9447a.getClass();
                ImageLoaderKt.b(modifierA, obj5, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, (Composer) obj3, 390, 2040);
                break;
            default:
                int iIntValue2 = ((Integer) obj2).intValue();
                Composer composer = (Composer) obj3;
                ((Integer) obj4).getClass();
                float f2 = StoreModeHomeSlideshowKt.f64837a;
                ((PagerScope) obj).getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("StoreModeHomeSlideshow_DzVHIIc$lambda$0$1$3$0");
                AssetImage assetImage = ((Asset) list.get(iIntValue2)).f67106a;
                if (assetImage == null || (str = assetImage.f67108a) == null) {
                    str = null;
                }
                String str2 = str;
                ContentScale.f9447a.getClass();
                ImageLoaderKt.b(dTFunctionNameModifier, str2, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, composer, 390, 2040);
                break;
        }
        return Unit.f71739a;
    }
}
