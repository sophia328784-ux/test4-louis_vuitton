package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationTextField;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldInternal;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class i80 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69900b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LVTextFieldInternal f69901c;
    public final /* synthetic */ Modifier d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ConfigurationTextField f69902e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f69903f;
    public final /* synthetic */ boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ boolean f69904h;

    public /* synthetic */ i80(LVTextFieldInternal lVTextFieldInternal, Modifier modifier, ConfigurationTextField configurationTextField, String str, boolean z, boolean z2, int i2, int i3) {
        this.f69900b = i3;
        this.f69901c = lVTextFieldInternal;
        this.d = modifier;
        this.f69902e = configurationTextField;
        this.f69903f = str;
        this.g = z;
        this.f69904h = z2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f69900b) {
            case 0:
                Composer composer = (Composer) obj;
                ((Integer) obj2).getClass();
                LVTextFieldInternal lVTextFieldInternal = LVTextFieldInternal.f48624a;
                this.f69901c.c(RecomposeScopeImplKt.a(196609), composer, this.d, this.f69902e, this.f69903f, this.g, this.f69904h);
                break;
            default:
                Composer composer2 = (Composer) obj;
                ((Integer) obj2).getClass();
                LVTextFieldInternal lVTextFieldInternal2 = LVTextFieldInternal.f48624a;
                this.f69901c.d(RecomposeScopeImplKt.a(196609), composer2, this.d, this.f69902e, this.f69903f, this.g, this.f69904h);
                break;
        }
        return Unit.f71739a;
    }
}
