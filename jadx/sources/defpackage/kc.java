package defpackage;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.MenuItemColors;
import androidx.compose.material3.MenuKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.common.editorial.components.pushcard.PushCardKt;
import com.vuitton.android.presentation.common.editorial.components.pushcard.PushCardType;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.components.ForgetPasswordResetCodeKt;
import com.vuitton.android.presentation.screen.cart.components.sections.NativeCartItemKt;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import com.vuitton.android.presentation.screen.options.components.OptionsScreenKt;
import com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaLocationFormBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.pdp.bottomsheet.BackInStockBottomSheetKt;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.time.LocalDate;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class kc implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71612b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f71613c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f71614e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f71615f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f71616h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f71617i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f71618j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f71619k;

    public /* synthetic */ kc(ColumnScope columnScope, String str, boolean z, String str2, Function0 function0, Function1 function1, Function0 function2, Function1 function3, int i2) {
        this.f71616h = columnScope;
        this.f71613c = str;
        this.d = z;
        this.f71614e = str2;
        this.f71615f = function0;
        this.f71617i = function1;
        this.f71618j = function2;
        this.f71619k = function3;
        this.g = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f71612b;
        int i3 = this.g;
        Object obj3 = this.f71619k;
        Object obj4 = this.f71618j;
        Object obj5 = this.f71617i;
        Object obj6 = this.f71614e;
        Object obj7 = this.f71613c;
        Object obj8 = this.f71616h;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                BackInStockBottomSheetKt.a((Modifier) obj8, (String) obj7, (String) obj6, (String) obj5, (String) obj4, (String) obj3, this.d, this.f71615f, (Composer) obj, iA, this.g);
                break;
            case 1:
                ((Integer) obj2).intValue();
                int iA2 = RecomposeScopeImplKt.a(i3 | 1);
                ForgetPasswordResetCodeKt.a((ColumnScope) obj8, (String) obj7, this.d, (String) obj6, this.f71615f, (Function1) obj5, (Function0) obj4, (Function1) obj3, (Composer) obj, iA2);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(i3 | 1);
                MenuKt.b((Function2) obj7, this.f71615f, (Modifier) obj8, (Function2) obj6, (Function2) obj5, this.d, (MenuItemColors) obj4, (PaddingValues) obj3, (Composer) obj, iA3);
                break;
            case 3:
                ((Integer) obj2).getClass();
                int iA4 = RecomposeScopeImplKt.a(i3 | 1);
                NativeCartItemKt.b((Modifier) obj8, (Modifier) obj7, (CartItemUiModel) obj6, this.d, this.f71615f, (Function2) obj5, (Function1) obj4, (Function3) obj3, (Composer) obj, iA4);
                break;
            case 4:
                ((Integer) obj2).getClass();
                int iA5 = RecomposeScopeImplKt.a(i3 | 1);
                OptionsScreenKt.e((InAppDispatch) obj8, this.d, this.f71615f, (Function0) obj7, (Function0) obj6, (Function0) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, iA5);
                break;
            case 5:
                ((Integer) obj2).getClass();
                int iA6 = RecomposeScopeImplKt.a(i3 | 1);
                OsaLocationFormBottomSheetScreenKt.a((InAppDispatch) obj8, this.d, (List) obj7, (LocalDate) obj6, this.f71615f, (Function1) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, iA6);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA7 = RecomposeScopeImplKt.a(i3 | 1);
                PushCardKt.a((Modifier) obj8, (String) obj7, (String) obj6, this.d, (Integer) obj5, (AssetImageUiModel) obj4, (PushCardType) obj3, this.f71615f, (Composer) obj, iA7);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ kc(Modifier modifier, Modifier modifier2, CartItemUiModel cartItemUiModel, boolean z, Function0 function0, Function2 function2, Function1 function1, Function3 function3, int i2) {
        this.f71616h = modifier;
        this.f71613c = modifier2;
        this.f71614e = cartItemUiModel;
        this.d = z;
        this.f71615f = function0;
        this.f71617i = function2;
        this.f71618j = function1;
        this.f71619k = function3;
        this.g = i2;
    }

    public /* synthetic */ kc(Modifier modifier, String str, String str2, String str3, String str4, String str5, boolean z, Function0 function0, int i2, int i3) {
        this.f71616h = modifier;
        this.f71613c = str;
        this.f71614e = str2;
        this.f71617i = str3;
        this.f71618j = str4;
        this.f71619k = str5;
        this.d = z;
        this.f71615f = function0;
        this.g = i3;
    }

    public /* synthetic */ kc(Modifier modifier, String str, String str2, boolean z, Integer num, AssetImageUiModel assetImageUiModel, PushCardType pushCardType, Function0 function0, int i2) {
        this.f71616h = modifier;
        this.f71613c = str;
        this.f71614e = str2;
        this.d = z;
        this.f71617i = num;
        this.f71618j = assetImageUiModel;
        this.f71619k = pushCardType;
        this.f71615f = function0;
        this.g = i2;
    }

    public /* synthetic */ kc(InAppDispatch inAppDispatch, boolean z, List list, LocalDate localDate, Function0 function0, Function1 function1, Function0 function2, Function0 function3, int i2) {
        this.f71616h = inAppDispatch;
        this.d = z;
        this.f71613c = list;
        this.f71614e = localDate;
        this.f71615f = function0;
        this.f71617i = function1;
        this.f71618j = function2;
        this.f71619k = function3;
        this.g = i2;
    }

    public /* synthetic */ kc(InAppDispatch inAppDispatch, boolean z, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4, Function0 function5, int i2) {
        this.f71616h = inAppDispatch;
        this.d = z;
        this.f71615f = function0;
        this.f71613c = function1;
        this.f71614e = function2;
        this.f71617i = function3;
        this.f71618j = function4;
        this.f71619k = function5;
        this.g = i2;
    }

    public /* synthetic */ kc(Function2 function2, Function0 function0, Modifier modifier, Function2 function3, Function2 function4, boolean z, MenuItemColors menuItemColors, PaddingValues paddingValues, int i2) {
        this.f71613c = function2;
        this.f71615f = function0;
        this.f71616h = modifier;
        this.f71614e = function3;
        this.f71617i = function4;
        this.d = z;
        this.f71618j = menuItemColors;
        this.f71619k = paddingValues;
        this.g = i2;
    }
}
