package defpackage;

import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonGroupIndicator;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonGroupKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationLink;
import com.vuitton.android.designkit.ui.theme.molecules.LVSegmentedControlKt;
import com.vuitton.android.designkit.ui.theme.molecules.SegmentedControlState;
import com.vuitton.android.presentation.screen.orders.components.list.OrderItemKt;
import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import com.vuitton.android.presentation.screen.pdp.components.variations.GridVariationKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class c10 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21022b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f21023c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f21024e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f21025f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f21026h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f21027i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f21028j;

    public /* synthetic */ c10(Modifier modifier, SegmentedControlState segmentedControlState, boolean z, LVColorScheme lVColorScheme, boolean z2, Function0 function0, int i2, int i3) {
        this.f21022b = 4;
        this.f21023c = modifier;
        this.f21027i = segmentedControlState;
        this.f21024e = z;
        this.d = lVColorScheme;
        this.f21025f = z2;
        this.f21028j = function0;
        this.g = i2;
        this.f21026h = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f21022b) {
            case 0:
                ((Integer) obj2).getClass();
                GridVariationKt.b(this.f21023c, (List) this.f21027i, (String) this.d, this.f21024e, (Function1) this.f21028j, this.f21025f, this.g, (Composer) obj, RecomposeScopeImplKt.a(this.f21026h | 1));
                break;
            case 1:
                ((Integer) obj2).getClass();
                LVButtonGroupKt.a(this.f21023c, (String) this.d, this.f21024e, this.f21025f, (LVButtonGroupIndicator) this.f21027i, (Function0) this.f21028j, (Composer) obj, RecomposeScopeImplKt.a(this.g | 1), this.f21026h);
                break;
            case 2:
                ((Integer) obj2).getClass();
                LVLinkKt.a(this.f21023c, (String) this.d, this.f21024e, (LVColorScheme) this.f21027i, this.f21025f, (Function0) this.f21028j, (Composer) obj, RecomposeScopeImplKt.a(this.g | 1), this.f21026h);
                break;
            case 3:
                ((Integer) obj2).getClass();
                LVLinkKt.c(this.f21023c, (String) this.d, this.f21024e, this.f21025f, (ConfigurationLink) this.f21027i, (Function0) this.f21028j, (Composer) obj, RecomposeScopeImplKt.a(this.g | 1), this.f21026h);
                break;
            case 4:
                ((Integer) obj2).getClass();
                LVSegmentedControlKt.a(this.f21023c, (SegmentedControlState) this.f21027i, this.f21024e, (LVColorScheme) this.d, this.f21025f, (Function0) this.f21028j, (Composer) obj, RecomposeScopeImplKt.a(this.g | 1), this.f21026h);
                break;
            default:
                ((Integer) obj2).getClass();
                OrderItemKt.a(this.f21023c, (TransactionItemUiModel) this.f21027i, (LVColorScheme) this.d, (RoundedCornerShape) this.f21028j, this.f21024e, this.f21025f, (Composer) obj, RecomposeScopeImplKt.a(this.g | 1), this.f21026h);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ c10(Modifier modifier, TransactionItemUiModel transactionItemUiModel, LVColorScheme lVColorScheme, RoundedCornerShape roundedCornerShape, boolean z, boolean z2, int i2, int i3) {
        this.f21022b = 5;
        this.f21023c = modifier;
        this.f21027i = transactionItemUiModel;
        this.d = lVColorScheme;
        this.f21028j = roundedCornerShape;
        this.f21024e = z;
        this.f21025f = z2;
        this.g = i2;
        this.f21026h = i3;
    }

    public /* synthetic */ c10(Modifier modifier, String str, boolean z, LVColorScheme lVColorScheme, boolean z2, Function0 function0, int i2, int i3) {
        this.f21022b = 2;
        this.f21023c = modifier;
        this.d = str;
        this.f21024e = z;
        this.f21027i = lVColorScheme;
        this.f21025f = z2;
        this.f21028j = function0;
        this.g = i2;
        this.f21026h = i3;
    }

    public /* synthetic */ c10(Modifier modifier, String str, boolean z, boolean z2, Object obj, Function0 function0, int i2, int i3, int i4) {
        this.f21022b = i4;
        this.f21023c = modifier;
        this.d = str;
        this.f21024e = z;
        this.f21025f = z2;
        this.f21027i = obj;
        this.f21028j = function0;
        this.g = i2;
        this.f21026h = i3;
    }

    public /* synthetic */ c10(Modifier modifier, List list, String str, boolean z, Function1 function1, boolean z2, int i2, int i3) {
        this.f21022b = 0;
        this.f21023c = modifier;
        this.f21027i = list;
        this.d = str;
        this.f21024e = z;
        this.f21028j = function1;
        this.f21025f = z2;
        this.g = i2;
        this.f21026h = i3;
    }
}
