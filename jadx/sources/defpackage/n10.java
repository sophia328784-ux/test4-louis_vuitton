package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.common.hotcontent.components.HotContentCareServiceItemKt;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceHotContentUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class n10 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76414b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f76415c;
    public final /* synthetic */ CareServiceHotContentUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ LVColorScheme f76416e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f76417f;

    public /* synthetic */ n10(Modifier modifier, CareServiceHotContentUiModel careServiceHotContentUiModel, LVColorScheme lVColorScheme, int i2, int i3) {
        this.f76414b = i3;
        this.f76415c = modifier;
        this.d = careServiceHotContentUiModel;
        this.f76416e = lVColorScheme;
        this.f76417f = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76414b;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                HotContentCareServiceItemKt.b(this.f76415c, this.d, this.f76416e, composer, RecomposeScopeImplKt.a(this.f76417f | 1));
                break;
            default:
                HotContentCareServiceItemKt.a(this.f76415c, this.d, this.f76416e, composer, RecomposeScopeImplKt.a(this.f76417f | 1));
                break;
        }
        return Unit.f71739a;
    }
}
