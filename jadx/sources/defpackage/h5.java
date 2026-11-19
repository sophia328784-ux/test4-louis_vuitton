package defpackage;

import android.content.Context;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.semantics.CollectionItemInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.vuitton.android.R;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ColorUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class h5 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69601b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ float f69602c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ List f69603e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f69604f;
    public final /* synthetic */ Object g;

    public /* synthetic */ h5(ArrayList arrayList, MeasureScope measureScope, float f2, int i2, ArrayList arrayList2) {
        this.f69603e = arrayList;
        this.g = measureScope;
        this.f69602c = f2;
        this.d = i2;
        this.f69604f = arrayList2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f69601b;
        int i3 = 0;
        Object obj2 = this.g;
        Object obj3 = this.f69604f;
        float f2 = this.f69602c;
        final List list = this.f69603e;
        switch (i2) {
            case 0:
                ArrayList arrayList = (ArrayList) list;
                MeasureScope measureScope = (MeasureScope) obj2;
                ArrayList arrayList2 = (ArrayList) obj3;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                int size = arrayList.size();
                int i4 = 0;
                while (i4 < size) {
                    List list2 = (List) arrayList.get(i4);
                    int size2 = list2.size();
                    int[] iArr = new int[size2];
                    int i5 = i3;
                    while (i5 < size2) {
                        iArr[i5] = ((Placeable) list2.get(i5)).f9548b + (i5 < list2.size() - 1 ? measureScope.B0(f2) : i3);
                        i5++;
                    }
                    int[] iArr2 = new int[size2];
                    Arrangement.f4919b.c(measureScope, this.d, iArr, measureScope.getF9421c(), iArr2);
                    int size3 = list2.size();
                    for (int i6 = i3; i6 < size3; i6++) {
                        placementScope.j((Placeable) list2.get(i6), iArr2[i6], ((Number) arrayList2.get(i4)).intValue(), Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    }
                    i4++;
                    i3 = 0;
                }
                break;
            default:
                final Function1 function1 = (Function1) obj3;
                final MutableState mutableState = (MutableState) obj2;
                LazyListScope lazyListScope = (LazyListScope) obj;
                lazyListScope.getClass();
                LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(1738856508, true, new td(f2, 0)), 3);
                int size4 = list.size();
                Function1<Integer, Object> function2 = new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyColorSliderKt$BeautyColorSlider$lambda$8$1$0$$inlined$itemsIndexed$default$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj4) {
                        list.get(((Number) obj4).intValue());
                        return null;
                    }
                };
                final int i7 = this.d;
                lazyListScope.h(size4, null, function2, new ComposableLambdaImpl(2039820996, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyColorSliderKt$BeautyColorSlider$lambda$8$1$0$$inlined$itemsIndexed$default$3
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj4, Object obj5, Object obj6, Object obj7) {
                        int i8;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj4;
                        final int iIntValue = ((Number) obj5).intValue();
                        Composer composer = (Composer) obj6;
                        int iIntValue2 = ((Number) obj7).intValue();
                        if ((iIntValue2 & 6) == 0) {
                            i8 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                        } else {
                            i8 = iIntValue2;
                        }
                        if ((iIntValue2 & 48) == 0) {
                            i8 |= composer.d(iIntValue) ? 32 : 16;
                        }
                        if (composer.p(i8 & 1, (i8 & 147) != 146)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            final TryOnProductUiModel tryOnProductUiModel = (TryOnProductUiModel) list.get(iIntValue);
                            composer.L(1866810103);
                            final Context context = (Context) composer.k(AndroidCompositionLocals_androidKt.f9936b);
                            boolean zY = composer.y(tryOnProductUiModel);
                            int i9 = i7;
                            boolean zD = ((((i8 & 112) ^ 48) > 32 && composer.d(iIntValue)) || (i8 & 48) == 32) | zY | composer.d(i9) | composer.y(context);
                            final Function1 function3 = function1;
                            boolean zK = zD | composer.K(function3);
                            Object objX = composer.x();
                            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                            if (zK || objX == composer$Companion$Empty$1) {
                                final Function1 function4 = function1;
                                final MutableState mutableState2 = mutableState;
                                final int i10 = i7;
                                Function1<SemanticsPropertyReceiver, Unit> function5 = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyColorSliderKt$BeautyColorSlider$3$2$1$2$1$1
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj8) {
                                        String str;
                                        SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj8;
                                        semanticsPropertyReceiver.getClass();
                                        final TryOnProductUiModel tryOnProductUiModel2 = tryOnProductUiModel;
                                        tryOnProductUiModel2.getClass();
                                        StringBuilder sb = new StringBuilder();
                                        sb.append(tryOnProductUiModel2.f62187f);
                                        ColorUiModel colorUiModel = tryOnProductUiModel2.g;
                                        if (colorUiModel != null && (str = colorUiModel.f62159a) != null) {
                                            sb.append(", ");
                                            sb.append(str);
                                        }
                                        SemanticsPropertiesKt.i(semanticsPropertyReceiver, sb.toString());
                                        int i11 = i10;
                                        int i12 = iIntValue;
                                        if (i11 == i12) {
                                            String string = context.getString(R.string.alt_selected);
                                            string.getClass();
                                            SemanticsPropertiesKt.r(semanticsPropertyReceiver, string);
                                        } else {
                                            Role.f10289b.getClass();
                                            SemanticsPropertiesKt.o(semanticsPropertyReceiver, 0);
                                        }
                                        SemanticsPropertiesKt.w(semanticsPropertyReceiver, i12);
                                        SemanticsPropertiesKt.g(semanticsPropertyReceiver, new CollectionItemInfo(0, 0, i12, 0));
                                        final Function1 function6 = function4;
                                        final MutableState mutableState3 = mutableState2;
                                        SemanticsPropertiesKt.e(semanticsPropertyReceiver, null, new Function0<Boolean>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyColorSliderKt$BeautyColorSlider$3$2$1$2$1$1.1
                                            @Override // kotlin.jvm.functions.Function0
                                            /* JADX INFO: renamed from: invoke */
                                            public final Object mo47invoke() {
                                                Boolean bool = Boolean.TRUE;
                                                mutableState3.setValue(bool);
                                                function6.invoke(tryOnProductUiModel2);
                                                return bool;
                                            }
                                        });
                                        return Unit.f71739a;
                                    }
                                };
                                composer.q(function5);
                                objX = function5;
                            }
                            Modifier modifierA = ModifierExtKt.a(Modifier.Companion.f8607b, null, (Function1) objX, 3);
                            boolean z = i9 == iIntValue;
                            boolean zK2 = composer.K(function3) | composer.y(tryOnProductUiModel);
                            Object objX2 = composer.x();
                            if (zK2 || objX2 == composer$Companion$Empty$1) {
                                final MutableState mutableState3 = mutableState;
                                objX2 = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyColorSliderKt$BeautyColorSlider$3$2$1$2$2$1
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        mutableState3.setValue(Boolean.TRUE);
                                        function3.invoke(tryOnProductUiModel);
                                        return Unit.f71739a;
                                    }
                                };
                                composer.q(objX2);
                            }
                            BeautyColorSliderKt.b(modifierA, tryOnProductUiModel, z, (Function0) objX2, composer, 0);
                            composer.F();
                        } else {
                            composer.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-892304411, true, new td(f2, 1)), 3);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ h5(List list, float f2, int i2, Function1 function1, MutableState mutableState) {
        this.f69603e = list;
        this.f69602c = f2;
        this.d = i2;
        this.f69604f = function1;
        this.g = mutableState;
    }
}
