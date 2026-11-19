package defpackage;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.ButtonColors;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.SliderColors;
import androidx.compose.material3.SliderKt;
import androidx.compose.material3.SliderState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSearchBarKt;
import com.vuitton.android.presentation.screen.booking.form.components.module.BookingModuleKt;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleUiModel;
import com.vuitton.android.presentation.screen.dynamicform.components.fields.EnumBasedFormFieldKt;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.Scene3DConfiguration;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerComposableKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class bg implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20850b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f20851c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f20852e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f20853f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f20854h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f20855i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f20856j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f20857k;

    public /* synthetic */ bg(Modifier modifier, MutableInteractionSource mutableInteractionSource, String str, String str2, LVColorScheme lVColorScheme, Function0 function0, boolean z, int i2, int i3) {
        this.f20850b = 3;
        this.f20851c = modifier;
        this.g = mutableInteractionSource;
        this.f20854h = str;
        this.f20855i = str2;
        this.f20856j = lVColorScheme;
        this.f20857k = function0;
        this.d = z;
        this.f20852e = i2;
        this.f20853f = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f20850b;
        int i3 = this.f20852e;
        Object obj3 = this.f20857k;
        Object obj4 = this.f20856j;
        Object obj5 = this.f20855i;
        Object obj6 = this.f20854h;
        Object obj7 = this.g;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(this.f20853f | 1);
                BookingModuleKt.a(this.f20851c, (BookingFormModuleUiModel) obj7, this.f20852e, this.d, (Function1) obj6, (Function2) obj4, (Function2) obj3, (Function1) obj5, (Composer) obj, iA);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(i3 | 1);
                ButtonKt.b((Function0) obj7, this.f20851c, this.d, (Shape) obj6, (ButtonColors) obj5, (PaddingValues) obj4, (Function3) obj3, (Composer) obj, iA2, this.f20853f);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(i3 | 1);
                EnumBasedFormFieldKt.a(this.f20851c, (FormFieldUiModel) obj7, (FormFieldTypeUiModel.EnumBasedFormField) obj4, this.d, (Function1) obj6, (Function1) obj5, (LVColorScheme) obj3, (Composer) obj, iA3, this.f20853f);
                break;
            case 3:
                ((Integer) obj2).getClass();
                int iA4 = RecomposeScopeImplKt.a(i3 | 1);
                LVSearchBarKt.b(this.f20851c, (MutableInteractionSource) obj7, (String) obj6, (String) obj5, (LVColorScheme) obj4, (Function0) obj3, this.d, (Composer) obj, iA4, this.f20853f);
                break;
            case 4:
                ((Integer) obj2).getClass();
                int iA5 = RecomposeScopeImplKt.a(i3 | 1);
                Lv3dCardViewerComposableKt.a(this.f20851c, (Lv3dCardViewerUiModel) obj7, this.d, (Function1) obj6, (Function0) obj5, (Scene3DConfiguration.BlossomConfiguration) obj4, (Function0) obj3, (Composer) obj, iA5, this.f20853f);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA6 = RecomposeScopeImplKt.a(i3 | 1);
                SliderKt.b((SliderState) obj7, this.f20851c, this.d, (SliderColors) obj6, (MutableInteractionSource) obj5, (Function3) obj4, (Function3) obj3, (Composer) obj, iA6, this.f20853f);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ bg(Modifier modifier, BookingFormModuleUiModel bookingFormModuleUiModel, int i2, boolean z, Function1 function1, Function2 function2, Function2 function3, Function1 function4, int i3) {
        this.f20850b = 0;
        this.f20851c = modifier;
        this.g = bookingFormModuleUiModel;
        this.f20852e = i2;
        this.d = z;
        this.f20854h = function1;
        this.f20856j = function2;
        this.f20857k = function3;
        this.f20855i = function4;
        this.f20853f = i3;
    }

    public /* synthetic */ bg(Modifier modifier, FormFieldUiModel formFieldUiModel, FormFieldTypeUiModel.EnumBasedFormField enumBasedFormField, boolean z, Function1 function1, Function1 function2, LVColorScheme lVColorScheme, int i2, int i3) {
        this.f20850b = 2;
        this.f20851c = modifier;
        this.g = formFieldUiModel;
        this.f20856j = enumBasedFormField;
        this.d = z;
        this.f20854h = function1;
        this.f20855i = function2;
        this.f20857k = lVColorScheme;
        this.f20852e = i2;
        this.f20853f = i3;
    }

    public /* synthetic */ bg(Modifier modifier, Lv3dCardViewerUiModel lv3dCardViewerUiModel, boolean z, Function1 function1, Function0 function0, Scene3DConfiguration.BlossomConfiguration blossomConfiguration, Function0 function2, int i2, int i3) {
        this.f20850b = 4;
        this.f20851c = modifier;
        this.g = lv3dCardViewerUiModel;
        this.d = z;
        this.f20854h = function1;
        this.f20855i = function0;
        this.f20856j = blossomConfiguration;
        this.f20857k = function2;
        this.f20852e = i2;
        this.f20853f = i3;
    }

    public /* synthetic */ bg(Object obj, Modifier modifier, boolean z, Object obj2, Object obj3, Object obj4, Function3 function3, int i2, int i3, int i4) {
        this.f20850b = i4;
        this.g = obj;
        this.f20851c = modifier;
        this.d = z;
        this.f20854h = obj2;
        this.f20855i = obj3;
        this.f20856j = obj4;
        this.f20857k = function3;
        this.f20852e = i2;
        this.f20853f = i3;
    }
}
