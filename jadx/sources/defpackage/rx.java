package defpackage;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.feed.components.FeedErrorScreenKt;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailErrorScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class rx implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79635b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SnackbarHostState f79636c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f79637e;

    public /* synthetic */ rx(SnackbarHostState snackbarHostState, Function0 function0, int i2, int i3) {
        this.f79635b = i3;
        this.f79636c = snackbarHostState;
        this.d = function0;
        this.f79637e = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f79635b;
        Composer composer = (Composer) obj;
        ((Integer) obj2).intValue();
        switch (i2) {
            case 0:
                FeedErrorScreenKt.a(this.f79636c, this.d, composer, RecomposeScopeImplKt.a(this.f79637e | 1));
                break;
            default:
                RepairDetailErrorScreenKt.a(this.f79636c, this.d, composer, RecomposeScopeImplKt.a(this.f79637e | 1));
                break;
        }
        return Unit.f71739a;
    }
}
