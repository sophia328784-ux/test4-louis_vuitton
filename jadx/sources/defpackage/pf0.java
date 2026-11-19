package defpackage;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterCredentialsComposableKt;
import com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterPersonalInfoComposableKt;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterViewState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class pf0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78842b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ColumnScope f78843c;
    public final /* synthetic */ NativeRegisterViewState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function2 f78844e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function1 f78845f;
    public final /* synthetic */ Function0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function1 f78846h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ boolean f78847i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ int f78848j;

    public /* synthetic */ pf0(ColumnScope columnScope, NativeRegisterViewState nativeRegisterViewState, Function2 function2, Function1 function1, Function0 function0, Function1 function3, boolean z, int i2, int i3) {
        this.f78842b = i3;
        this.f78843c = columnScope;
        this.d = nativeRegisterViewState;
        this.f78844e = function2;
        this.f78845f = function1;
        this.g = function0;
        this.f78846h = function3;
        this.f78847i = z;
        this.f78848j = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f78842b) {
            case 0:
                ((Integer) obj2).getClass();
                NativeRegisterCredentialsComposableKt.a(this.f78843c, this.d, this.f78844e, this.f78845f, this.g, this.f78846h, this.f78847i, (Composer) obj, RecomposeScopeImplKt.a(this.f78848j | 1));
                break;
            default:
                ((Integer) obj2).getClass();
                NativeRegisterPersonalInfoComposableKt.a(this.f78843c, this.d, this.f78844e, this.f78845f, this.g, this.f78846h, this.f78847i, (Composer) obj, RecomposeScopeImplKt.a(this.f78848j | 1));
                break;
        }
        return Unit.f71739a;
    }
}
