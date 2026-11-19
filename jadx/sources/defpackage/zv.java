package defpackage;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.material3.SwipeToDismissBoxKt;
import androidx.compose.material3.SwipeToDismissBoxState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.navigationevent.compose.NavigationEventHandlerKt;
import androidx.navigationevent.compose.NavigationEventState;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.components.ForgetPasswordEmailKt;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.components.ForgetPasswordResetKt;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.models.ForgetPasswordViewState;
import com.vuitton.android.presentation.screen.dynamicform.components.fields.FormFieldReadOnlyKt;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldReadOnlyUiModel;
import com.vuitton.android.presentation.screen.options.settings.components.EditSettingsComposableKt;
import com.vuitton.android.presentation.screen.privacy.PrivacyViewModel;
import com.vuitton.android.presentation.screen.privacy.components.PrivacyComposableKt;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class zv implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81726b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f81727c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f81728e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function f81729f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f81730h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f81731i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f81732j;

    public /* synthetic */ zv(ColumnScope columnScope, ForgetPasswordViewState forgetPasswordViewState, boolean z, boolean z2, Function2 function2, Function0 function0, Function1 function1, int i2) {
        this.f81730h = columnScope;
        this.f81727c = forgetPasswordViewState;
        this.d = z;
        this.f81728e = z2;
        this.f81731i = function2;
        this.f81732j = function0;
        this.f81729f = function1;
        this.g = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f81726b;
        int i3 = this.g;
        Object obj3 = this.f81732j;
        Function function = this.f81729f;
        Object obj4 = this.f81730h;
        Object obj5 = this.f81731i;
        Object obj6 = this.f81727c;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(221185);
                EditSettingsComposableKt.c((Modifier) obj4, (String) obj6, this.d, this.f81728e, (String) obj5, (String) obj3, (Function1) function, (Composer) obj, iA, this.g);
                break;
            case 1:
                ((Integer) obj2).intValue();
                int iA2 = RecomposeScopeImplKt.a(i3 | 1);
                ForgetPasswordEmailKt.a((ColumnScope) obj4, (String) obj6, this.d, this.f81728e, (Function1) function, (Function0) obj5, (Function1) obj3, (Composer) obj, iA2);
                break;
            case 2:
                ((Integer) obj2).intValue();
                int iA3 = RecomposeScopeImplKt.a(i3 | 1);
                ForgetPasswordResetKt.a((ColumnScope) obj4, (ForgetPasswordViewState) obj6, this.d, this.f81728e, (Function2) obj5, (Function0) obj3, (Function1) function, (Composer) obj, iA3);
                break;
            case 3:
                ((Integer) obj2).getClass();
                int iA4 = RecomposeScopeImplKt.a(i3 | 1);
                FormFieldReadOnlyKt.a((Modifier) obj4, (FormFieldUiModel) obj6, (FormFieldReadOnlyUiModel) obj5, this.d, (Function1) function, (LVColorScheme) obj3, this.f81728e, (Composer) obj, iA4);
                break;
            case 4:
                ((Integer) obj2).getClass();
                int iA5 = RecomposeScopeImplKt.a(i3 | 1);
                NavigationEventHandlerKt.b((NavigationEventState) obj4, this.d, (Function0) obj6, (Function0) obj5, this.f81728e, (Function0) obj3, (Function0) function, (Composer) obj, iA5);
                break;
            case 5:
                ((Integer) obj2).getClass();
                int iA6 = RecomposeScopeImplKt.a(i3 | 1);
                PrivacyComposableKt.a((PrivacyViewModel) obj4, this.d, this.f81728e, (LVModalBottomSheetState) obj6, (Function0) obj5, (Function0) obj3, (Function0) function, (Composer) obj, iA6);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA7 = RecomposeScopeImplKt.a(i3 | 1);
                SwipeToDismissBoxKt.a((SwipeToDismissBoxState) obj6, (Function3) obj5, (Modifier) obj4, this.d, this.f81728e, (Function1) function, (ComposableLambdaImpl) obj3, (Composer) obj, iA7);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ zv(ColumnScope columnScope, String str, boolean z, boolean z2, Function1 function1, Function0 function0, Function1 function2, int i2) {
        this.f81730h = columnScope;
        this.f81727c = str;
        this.d = z;
        this.f81728e = z2;
        this.f81729f = function1;
        this.f81731i = function0;
        this.f81732j = function2;
        this.g = i2;
    }

    public /* synthetic */ zv(SwipeToDismissBoxState swipeToDismissBoxState, Function3 function3, Modifier modifier, boolean z, boolean z2, Function1 function1, ComposableLambdaImpl composableLambdaImpl, int i2) {
        this.f81727c = swipeToDismissBoxState;
        this.f81731i = function3;
        this.f81730h = modifier;
        this.d = z;
        this.f81728e = z2;
        this.f81729f = function1;
        this.f81732j = composableLambdaImpl;
        this.g = i2;
    }

    public /* synthetic */ zv(Modifier modifier, FormFieldUiModel formFieldUiModel, FormFieldReadOnlyUiModel formFieldReadOnlyUiModel, boolean z, Function1 function1, LVColorScheme lVColorScheme, boolean z2, int i2) {
        this.f81730h = modifier;
        this.f81727c = formFieldUiModel;
        this.f81731i = formFieldReadOnlyUiModel;
        this.d = z;
        this.f81729f = function1;
        this.f81732j = lVColorScheme;
        this.f81728e = z2;
        this.g = i2;
    }

    public /* synthetic */ zv(Modifier modifier, String str, boolean z, boolean z2, String str2, String str3, Function1 function1, int i2, int i3) {
        this.f81730h = modifier;
        this.f81727c = str;
        this.d = z;
        this.f81728e = z2;
        this.f81731i = str2;
        this.f81732j = str3;
        this.f81729f = function1;
        this.g = i3;
    }

    public /* synthetic */ zv(NavigationEventState navigationEventState, boolean z, Function0 function0, Function0 function1, boolean z2, Function0 function2, Function0 function3, int i2) {
        this.f81730h = navigationEventState;
        this.d = z;
        this.f81727c = function0;
        this.f81731i = function1;
        this.f81728e = z2;
        this.f81732j = function2;
        this.f81729f = function3;
        this.g = i2;
    }

    public /* synthetic */ zv(PrivacyViewModel privacyViewModel, boolean z, boolean z2, LVModalBottomSheetState lVModalBottomSheetState, Function0 function0, Function0 function1, Function0 function2, int i2) {
        this.f81730h = privacyViewModel;
        this.d = z;
        this.f81728e = z2;
        this.f81727c = lVModalBottomSheetState;
        this.f81731i = function0;
        this.f81732j = function1;
        this.f81729f = function2;
        this.g = i2;
    }
}
