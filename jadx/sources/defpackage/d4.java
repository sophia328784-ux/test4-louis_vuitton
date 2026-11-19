package defpackage;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.navigation.NavHostController;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterRegistrationAddressComposableKt;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterViewState;
import com.vuitton.android.presentation.screen.dynamicform.components.fields.FormFieldPasswordKt;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldFreeformUiModel;
import com.vuitton.android.presentation.screen.pdp.bottomsheet.AddToCartBottomSheetKt;
import com.vuitton.android.presentation.screen.privacy.PrivacyViewModelImpl;
import com.vuitton.android.presentation.screen.privacy.components.PrivacyNavHostKt;
import com.vuitton.android.presentation.screen.privacy.components.PrivacyRoutes;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class d4 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68415b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f68416c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f68417e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f68418f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f68419h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f68420i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f68421j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f68422k;
    public final /* synthetic */ Object l;

    public /* synthetic */ d4(ColumnScope columnScope, NativeRegisterViewState nativeRegisterViewState, Function2 function2, Function1 function1, Function0 function0, Function0 function3, Function0 function4, Function1 function5, boolean z, int i2) {
        this.f68418f = columnScope;
        this.g = nativeRegisterViewState;
        this.f68419h = function2;
        this.f68420i = function1;
        this.d = function0;
        this.f68421j = function3;
        this.f68422k = function4;
        this.l = function5;
        this.f68416c = z;
        this.f68417e = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f68415b;
        int i3 = this.f68417e;
        Object obj3 = this.l;
        Object obj4 = this.f68422k;
        Object obj5 = this.f68421j;
        Object obj6 = this.f68420i;
        Object obj7 = this.f68419h;
        Object obj8 = this.g;
        Object obj9 = this.f68418f;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(i3 | 1);
                AddToCartBottomSheetKt.a((String) obj9, (String) obj8, (ProductBackground) obj4, (String) obj7, (ArrayList) obj3, (String) obj6, this.f68416c, (String) obj5, this.d, (Composer) obj, iA);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(i3 | 1);
                FormFieldPasswordKt.a((Modifier) obj9, (FormFieldUiModel) obj8, (FormFieldFreeformUiModel) obj7, this.f68416c, (KeyboardOptions) obj6, (Function1) obj5, (Function1) obj4, this.d, (LVColorScheme) obj3, (Composer) obj, iA2);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(i3 | 1);
                NativeRegisterRegistrationAddressComposableKt.a((ColumnScope) obj9, (NativeRegisterViewState) obj8, (Function2) obj7, (Function1) obj6, this.d, (Function0) obj5, (Function0) obj4, (Function1) obj3, this.f68416c, (Composer) obj, iA3);
                break;
            default:
                ((Integer) obj2).intValue();
                int iA4 = RecomposeScopeImplKt.a(i3 | 1);
                PrivacyNavHostKt.a((NavHostController) obj9, (LVModalBottomSheetState) obj8, (PrivacyRoutes) obj7, this.f68416c, (PrivacyViewModelImpl) obj6, this.d, (Function0) obj5, (Function0) obj4, (Function1) obj3, (Composer) obj, iA4);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ d4(Modifier modifier, FormFieldUiModel formFieldUiModel, FormFieldFreeformUiModel formFieldFreeformUiModel, boolean z, KeyboardOptions keyboardOptions, Function1 function1, Function1 function2, Function0 function0, LVColorScheme lVColorScheme, int i2) {
        this.f68418f = modifier;
        this.g = formFieldUiModel;
        this.f68419h = formFieldFreeformUiModel;
        this.f68416c = z;
        this.f68420i = keyboardOptions;
        this.f68421j = function1;
        this.f68422k = function2;
        this.d = function0;
        this.l = lVColorScheme;
        this.f68417e = i2;
    }

    public /* synthetic */ d4(NavHostController navHostController, LVModalBottomSheetState lVModalBottomSheetState, PrivacyRoutes privacyRoutes, boolean z, PrivacyViewModelImpl privacyViewModelImpl, Function0 function0, Function0 function1, Function0 function2, Function1 function3, int i2) {
        this.f68418f = navHostController;
        this.g = lVModalBottomSheetState;
        this.f68419h = privacyRoutes;
        this.f68416c = z;
        this.f68420i = privacyViewModelImpl;
        this.d = function0;
        this.f68421j = function1;
        this.f68422k = function2;
        this.l = function3;
        this.f68417e = i2;
    }

    public /* synthetic */ d4(String str, String str2, ProductBackground productBackground, String str3, ArrayList arrayList, String str4, boolean z, String str5, Function0 function0, int i2) {
        this.f68418f = str;
        this.g = str2;
        this.f68422k = productBackground;
        this.f68419h = str3;
        this.l = arrayList;
        this.f68420i = str4;
        this.f68416c = z;
        this.f68421j = str5;
        this.d = function0;
        this.f68417e = i2;
    }
}
