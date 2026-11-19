package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.compose.components.AccessibilityPagerButtonsKt;
import com.vuitton.android.presentation.screen.orders.components.detail.OrderDetailScreenKt;
import com.vuitton.android.presentation.screen.orders.models.AutomationTagsOrders$ShortcutType;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class h2 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69553b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f69554c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f69555e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f69556f;
    public final /* synthetic */ boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f69557h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f69558i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Enum f69559j;

    public /* synthetic */ h2(Modifier modifier, int i2, LVColorScheme lVColorScheme, boolean z, String str, Function0 function0, int i3, int i4) {
        this.f69554c = modifier;
        this.d = i2;
        this.f69559j = lVColorScheme;
        this.g = z;
        this.f69555e = str;
        this.f69556f = function0;
        this.f69557h = i3;
        this.f69558i = i4;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f69553b) {
            case 0:
                ((Integer) obj2).getClass();
                AccessibilityPagerButtonsKt.a(this.f69554c, this.d, (LVColorScheme) this.f69559j, this.g, this.f69555e, this.f69556f, (Composer) obj, RecomposeScopeImplKt.a(this.f69557h | 1), this.f69558i);
                break;
            default:
                ((Integer) obj2).getClass();
                OrderDetailScreenKt.p(this.f69554c, this.d, this.f69555e, this.f69556f, this.g, (AutomationTagsOrders$ShortcutType) this.f69559j, (Composer) obj, RecomposeScopeImplKt.a(this.f69557h | 1), this.f69558i);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ h2(Modifier modifier, int i2, String str, Function0 function0, boolean z, AutomationTagsOrders$ShortcutType automationTagsOrders$ShortcutType, int i3, int i4) {
        this.f69554c = modifier;
        this.d = i2;
        this.f69555e = str;
        this.f69556f = function0;
        this.g = z;
        this.f69559j = automationTagsOrders$ShortcutType;
        this.f69557h = i3;
        this.f69558i = i4;
    }
}
