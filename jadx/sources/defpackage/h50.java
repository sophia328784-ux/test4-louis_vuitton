package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class h50 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69605b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f69606c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Integer f69607e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Integer f69608f;
    public final /* synthetic */ boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ boolean f69609h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ ConfigurationButton f69610i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ boolean f69611j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Function0 f69612k;
    public final /* synthetic */ int l;
    public final /* synthetic */ int m;

    public /* synthetic */ h50(Modifier modifier, ConfigurationButton configurationButton, String str, Integer num, Integer num2, boolean z, boolean z2, boolean z3, Function0 function0, int i2, int i3) {
        this.f69606c = modifier;
        this.f69610i = configurationButton;
        this.d = str;
        this.f69607e = num;
        this.f69608f = num2;
        this.g = z;
        this.f69609h = z2;
        this.f69611j = z3;
        this.f69612k = function0;
        this.l = i2;
        this.m = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f69605b) {
            case 0:
                ((Integer) obj2).getClass();
                LVButtonKt.b(RecomposeScopeImplKt.a(this.l | 1), this.m, (Composer) obj, this.f69606c, this.f69610i, this.f69607e, this.f69608f, this.d, this.f69612k, this.g, this.f69609h, this.f69611j);
                break;
            default:
                ((Integer) obj2).getClass();
                LVButtonKt.a(RecomposeScopeImplKt.a(this.l | 1), RecomposeScopeImplKt.a(this.m), (Composer) obj, this.f69606c, this.f69610i, this.f69607e, this.f69608f, this.d, this.f69612k, this.g, this.f69609h, this.f69611j);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ h50(Modifier modifier, String str, Integer num, Integer num2, boolean z, boolean z2, ConfigurationButton configurationButton, boolean z3, Function0 function0, int i2, int i3) {
        this.f69606c = modifier;
        this.d = str;
        this.f69607e = num;
        this.f69608f = num2;
        this.g = z;
        this.f69609h = z2;
        this.f69610i = configurationButton;
        this.f69611j = z3;
        this.f69612k = function0;
        this.l = i2;
        this.m = i3;
    }
}
