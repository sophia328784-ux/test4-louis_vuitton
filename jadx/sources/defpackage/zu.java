package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.compose.components.LVCardKt;
import com.vuitton.android.presentation.screen.cart.models.AutomationTagsCart$CardType;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairPhotoItemKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairPhoto;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.QuickFilterButtonKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class zu implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81717b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f81718c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f81719e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f81720f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f81721h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f81722i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f81723j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f81724k;

    public /* synthetic */ zu(Modifier modifier, int i2, DistantRepairPhoto distantRepairPhoto, boolean z, Function1 function1, Function1 function2, String str, int i3, int i4) {
        this.f81718c = modifier;
        this.f81719e = i2;
        this.f81722i = distantRepairPhoto;
        this.f81720f = z;
        this.f81723j = function1;
        this.f81724k = function2;
        this.d = str;
        this.g = i3;
        this.f81721h = i4;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f81717b) {
            case 0:
                ((Integer) obj2).getClass();
                DistantRepairPhotoItemKt.a(this.f81718c, this.f81719e, (DistantRepairPhoto) this.f81722i, this.f81720f, (Function1) this.f81723j, (Function1) this.f81724k, this.d, (Composer) obj, RecomposeScopeImplKt.a(this.g | 1), this.f81721h);
                break;
            case 1:
                ((Integer) obj2).getClass();
                LVCardKt.a(this.f81718c, this.d, (String) this.f81722i, (String) this.f81723j, this.f81719e, (AutomationTagsCart$CardType) this.f81724k, this.f81720f, (Composer) obj, RecomposeScopeImplKt.a(this.g | 1), this.f81721h);
                break;
            default:
                ((Integer) obj2).getClass();
                QuickFilterButtonKt.a(this.f81718c, this.f81719e, this.d, (FiltersButtonState) this.f81722i, this.f81720f, (Function0) this.f81724k, (Function1) this.f81723j, (Composer) obj, RecomposeScopeImplKt.a(this.g | 1), this.f81721h);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ zu(Modifier modifier, int i2, String str, FiltersButtonState filtersButtonState, boolean z, Function0 function0, Function1 function1, int i3, int i4) {
        this.f81718c = modifier;
        this.f81719e = i2;
        this.d = str;
        this.f81722i = filtersButtonState;
        this.f81720f = z;
        this.f81724k = function0;
        this.f81723j = function1;
        this.g = i3;
        this.f81721h = i4;
    }

    public /* synthetic */ zu(Modifier modifier, String str, String str2, String str3, int i2, AutomationTagsCart$CardType automationTagsCart$CardType, boolean z, int i3, int i4) {
        this.f81718c = modifier;
        this.d = str;
        this.f81722i = str2;
        this.f81723j = str3;
        this.f81719e = i2;
        this.f81724k = automationTagsCart$CardType;
        this.f81720f = z;
        this.g = i3;
        this.f81721h = i4;
    }
}
