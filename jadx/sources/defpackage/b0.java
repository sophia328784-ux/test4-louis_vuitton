package defpackage;

import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionChatMessagesKt;
import com.vuitton.android.presentation.screen.dynamicform.components.fields.FormFieldFreeformKt;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldFreeformUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.LookSkuTypeUiModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.components.TheLookImmersiveArticleLookStepperKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class b0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20686b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f20687c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f20688e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f20689f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f20690h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f20691i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f20692j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f20693k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;

    public /* synthetic */ b0(Modifier modifier, FormFieldUiModel formFieldUiModel, FormFieldFreeformUiModel formFieldFreeformUiModel, boolean z, KeyboardOptions keyboardOptions, Function1 function1, Function1 function2, Function0 function0, LVColorScheme lVColorScheme, int i2, int i3) {
        this.f20686b = 1;
        this.f20687c = modifier;
        this.f20691i = formFieldUiModel;
        this.f20692j = formFieldFreeformUiModel;
        this.d = z;
        this.f20693k = keyboardOptions;
        this.f20688e = function1;
        this.f20689f = function2;
        this.l = function0;
        this.m = lVColorScheme;
        this.g = i2;
        this.f20690h = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f20686b;
        int i3 = this.g;
        Object obj3 = this.f20689f;
        Object obj4 = this.m;
        Object obj5 = this.l;
        Object obj6 = this.f20693k;
        Object obj7 = this.f20692j;
        Object obj8 = this.f20691i;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(i3 | 1);
                AICompanionChatMessagesKt.b(this.f20687c, (List) obj8, this.d, this.f20688e, (Function2) obj4, (Function1) obj3, (Function1) obj7, (Function1) obj6, (Function1) obj5, (Composer) obj, iA, this.f20690h);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(i3 | 1);
                FormFieldFreeformKt.a(this.f20687c, (FormFieldUiModel) obj8, (FormFieldFreeformUiModel) obj7, this.d, (KeyboardOptions) obj6, this.f20688e, (Function1) obj3, (Function0) obj5, (LVColorScheme) obj4, (Composer) obj, iA2, this.f20690h);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(i3 | 1);
                LazyDslKt.a(this.f20687c, (LazyListState) obj8, (PaddingValues) obj3, (Arrangement.Vertical) obj7, (Alignment.Horizontal) obj6, (FlingBehavior) obj5, this.d, (OverscrollEffect) obj4, this.f20688e, (Composer) obj, iA3, this.f20690h);
                break;
            case 3:
                ((Integer) obj2).getClass();
                int iA4 = RecomposeScopeImplKt.a(i3 | 1);
                LazyDslKt.b(this.f20687c, (LazyListState) obj8, (PaddingValues) obj3, (Arrangement.Horizontal) obj7, (Alignment.Vertical) obj6, (FlingBehavior) obj5, this.d, (OverscrollEffect) obj4, this.f20688e, (Composer) obj, iA4, this.f20690h);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA5 = RecomposeScopeImplKt.a(7);
                TheLookImmersiveArticleLookStepperKt.a(this.f20687c, (String) obj8, (String) obj7, this.d, (String) obj6, (LookSkuTypeUiModel) obj5, this.g, this.f20690h, (Function2) obj4, this.f20688e, (Function1) obj3, (Composer) obj, iA5);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ b0(Modifier modifier, LazyListState lazyListState, PaddingValues paddingValues, Object obj, Object obj2, FlingBehavior flingBehavior, boolean z, OverscrollEffect overscrollEffect, Function1 function1, int i2, int i3, int i4) {
        this.f20686b = i4;
        this.f20687c = modifier;
        this.f20691i = lazyListState;
        this.f20689f = paddingValues;
        this.f20692j = obj;
        this.f20693k = obj2;
        this.l = flingBehavior;
        this.d = z;
        this.m = overscrollEffect;
        this.f20688e = function1;
        this.g = i2;
        this.f20690h = i3;
    }

    public /* synthetic */ b0(Modifier modifier, String str, String str2, boolean z, String str3, LookSkuTypeUiModel lookSkuTypeUiModel, int i2, int i3, Function2 function2, Function1 function1, Function1 function3, int i4) {
        this.f20686b = 4;
        this.f20687c = modifier;
        this.f20691i = str;
        this.f20692j = str2;
        this.d = z;
        this.f20693k = str3;
        this.l = lookSkuTypeUiModel;
        this.g = i2;
        this.f20690h = i3;
        this.m = function2;
        this.f20688e = function1;
        this.f20689f = function3;
    }

    public /* synthetic */ b0(Modifier modifier, List list, boolean z, Function1 function1, Function2 function2, Function1 function3, Function1 function4, Function1 function5, Function1 function6, int i2, int i3) {
        this.f20686b = 0;
        this.f20687c = modifier;
        this.f20691i = list;
        this.d = z;
        this.f20688e = function1;
        this.m = function2;
        this.f20689f = function3;
        this.f20692j = function4;
        this.f20693k = function5;
        this.l = function6;
        this.g = i2;
        this.f20690h = i3;
    }
}
