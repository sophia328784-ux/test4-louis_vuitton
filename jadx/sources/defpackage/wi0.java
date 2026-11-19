package defpackage;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.runtime.State;
import com.vuitton.android.presentation.extensions.ActivityExtKt;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.services.components.ServicesComposableKt;
import com.vuitton.android.presentation.screen.services.models.ServicesUrls;
import com.vuitton.android.presentation.screen.services.models.ServicesViewState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class wi0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80882b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f80883c;
    public final /* synthetic */ State d;

    public /* synthetic */ wi0(Context context, State state, int i2) {
        this.f80882b = i2;
        this.f80883c = context;
        this.d = state;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f80882b;
        State state = this.d;
        Context context = this.f80883c;
        switch (i2) {
            case 0:
                AppCompatActivity appCompatActivityB = ContextExtKt.b(context);
                if (appCompatActivityB != null) {
                    ActivityExtKt.f(appCompatActivityB, ((OrderReturnOrExchangeViewState) state.getF10755b()).g);
                }
                break;
            default:
                ServicesUrls servicesUrls = ((ServicesViewState) state.getF10755b()).f64408f;
                ServicesComposableKt.b(context, servicesUrls != null ? servicesUrls.f64403h : null);
                break;
        }
        return Unit.f71739a;
    }
}
