package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.options.settings.components.SettingsComposableKt;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class lv0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76102b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f76103c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f76104e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f76105f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f76106h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f76107i;

    public /* synthetic */ lv0(Modifier modifier, int i2, String str, String str2, Function0 function0, int i3, int i4) {
        this.f76103c = modifier;
        this.f76105f = i2;
        this.d = str;
        this.f76104e = str2;
        this.f76107i = function0;
        this.g = i3;
        this.f76106h = i4;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f76102b) {
            case 0:
                ((Integer) obj2).getClass();
                SettingsComposableKt.g(this.f76103c, this.f76105f, this.d, this.f76104e, (Function0) this.f76107i, (Composer) obj, RecomposeScopeImplKt.a(this.g | 1), this.f76106h);
                break;
            default:
                ((Integer) obj2).getClass();
                ThankYouScreenKt.c(this.f76103c, this.d, this.f76104e, this.f76105f, (String) this.f76107i, (Composer) obj, RecomposeScopeImplKt.a(this.g | 1), this.f76106h);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ lv0(Modifier modifier, String str, String str2, int i2, String str3, int i3, int i4) {
        this.f76103c = modifier;
        this.d = str;
        this.f76104e = str2;
        this.f76105f = i2;
        this.f76107i = str3;
        this.g = i3;
        this.f76106h = i4;
    }
}
