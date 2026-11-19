package defpackage;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import com.kizitonwose.calendar.compose.CalendarKt;
import com.kizitonwose.calendar.compose.CalendarState;
import com.kizitonwose.calendar.compose.ContentHeightMode;
import com.vuitton.android.designkit.components.components.LVRadioButtonBlockKt;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVImageChipKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVImageChipSize;
import com.vuitton.android.presentation.common.editorial.components.carouselm.CarouselMKt;
import com.vuitton.android.presentation.compose.components.LVDialogListPickerKt;
import com.vuitton.android.presentation.compose.components.ListPickerItem;
import com.vuitton.android.presentation.screen.options.components.OptionsScreenKt;
import com.vuitton.android.presentation.screen.wishlist.components.WishlistProductItemKt;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistItemUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ai implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f515b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f516c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f517e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f518f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f519h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f520i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f521j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f522k;
    public final /* synthetic */ Object l;

    public /* synthetic */ ai(Modifier modifier, String str, String str2, boolean z, boolean z2, Function1 function1, Function2 function2, String str3, int i2, int i3) {
        this.f515b = 4;
        this.f516c = modifier;
        this.f519h = str;
        this.f520i = str2;
        this.d = z;
        this.f517e = z2;
        this.f521j = function1;
        this.f522k = function2;
        this.l = str3;
        this.f518f = i2;
        this.g = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f515b;
        int i3 = this.f518f;
        Object obj3 = this.l;
        Object obj4 = this.f522k;
        Object obj5 = this.f521j;
        Object obj6 = this.f520i;
        Object obj7 = this.f519h;
        Object obj8 = this.f516c;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(i3 | 1);
                int iA2 = RecomposeScopeImplKt.a(this.g);
                CalendarKt.a((Modifier) obj8, (CalendarState) obj7, this.d, this.f517e, (PaddingValues) obj6, (ContentHeightMode) obj5, (ComposableLambdaImpl) obj4, (Function4) obj3, (Composer) obj, iA, iA2);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(i3 | 1);
                CarouselMKt.a((Modifier) obj8, (String) obj7, (List) obj6, (LVColorScheme) obj5, this.d, this.f517e, (Function2) obj4, (Function0) obj3, (Composer) obj, iA3, this.g);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int iA4 = RecomposeScopeImplKt.a(i3 | 1);
                LVDialogListPickerKt.a((Modifier) obj8, (String) obj7, (ListPickerItem) obj6, (List) obj5, this.d, this.f517e, (Function2) obj4, (String) obj3, (Composer) obj, iA4, this.g);
                break;
            case 3:
                ((Integer) obj2).getClass();
                int iA5 = RecomposeScopeImplKt.a(i3 | 1);
                LVImageChipKt.b((Modifier) obj8, this.d, this.f517e, (LVImageChipSize) obj7, (Color) obj6, (LVColorScheme) obj5, (Function1) obj3, (ComposableLambdaImpl) obj4, (Composer) obj, iA5, this.g);
                break;
            case 4:
                ((Integer) obj2).getClass();
                int iA6 = RecomposeScopeImplKt.a(i3 | 1);
                LVRadioButtonBlockKt.a((Modifier) obj8, (String) obj7, (String) obj6, this.d, this.f517e, (Function1) obj5, (Function2) obj4, (String) obj3, (Composer) obj, iA6, this.g);
                break;
            case 5:
                ((Integer) obj2).getClass();
                int iA7 = RecomposeScopeImplKt.a(i3 | 1);
                OptionsScreenKt.b((InAppDispatch) obj8, (String) obj7, (String) obj6, (String) obj5, (String) obj4, this.d, this.f517e, (Function0) obj3, (Composer) obj, iA7, this.g);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA8 = RecomposeScopeImplKt.a(i3 | 1);
                WishlistProductItemKt.a((Modifier) obj8, (WishlistItemUiModel) obj7, this.d, this.f517e, (Function0) obj6, (Function0) obj5, (Function1) obj4, (Function1) obj3, (Composer) obj, iA8, this.g);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ ai(Modifier modifier, String str, Object obj, Object obj2, boolean z, boolean z2, Function2 function2, Object obj3, int i2, int i3, int i4) {
        this.f515b = i4;
        this.f516c = modifier;
        this.f519h = str;
        this.f520i = obj;
        this.f521j = obj2;
        this.d = z;
        this.f517e = z2;
        this.f522k = function2;
        this.l = obj3;
        this.f518f = i2;
        this.g = i3;
    }

    public /* synthetic */ ai(Modifier modifier, Object obj, boolean z, boolean z2, Object obj2, Object obj3, Function function, Function function2, int i2, int i3, int i4) {
        this.f515b = i4;
        this.f516c = modifier;
        this.f519h = obj;
        this.d = z;
        this.f517e = z2;
        this.f520i = obj2;
        this.f521j = obj3;
        this.f522k = function;
        this.l = function2;
        this.f518f = i2;
        this.g = i3;
    }

    public /* synthetic */ ai(Modifier modifier, boolean z, boolean z2, LVImageChipSize lVImageChipSize, Color color, LVColorScheme lVColorScheme, Function1 function1, ComposableLambdaImpl composableLambdaImpl, int i2, int i3) {
        this.f515b = 3;
        this.f516c = modifier;
        this.d = z;
        this.f517e = z2;
        this.f519h = lVImageChipSize;
        this.f520i = color;
        this.f521j = lVColorScheme;
        this.l = function1;
        this.f522k = composableLambdaImpl;
        this.f518f = i2;
        this.g = i3;
    }

    public /* synthetic */ ai(InAppDispatch inAppDispatch, String str, String str2, String str3, String str4, boolean z, boolean z2, Function0 function0, int i2, int i3) {
        this.f515b = 5;
        this.f516c = inAppDispatch;
        this.f519h = str;
        this.f520i = str2;
        this.f521j = str3;
        this.f522k = str4;
        this.d = z;
        this.f517e = z2;
        this.l = function0;
        this.f518f = i2;
        this.g = i3;
    }
}
