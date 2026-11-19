package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import com.vuitton.android.designkit.ui.theme.atoms.LVImageKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeComponentsKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class h60 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69618b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f69619c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ float f69620e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f69621f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f69622h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f69623i;

    public /* synthetic */ h60(Modifier modifier, Painter painter, String str, float f2, ContentScale contentScale, int i2, int i3) {
        this.f69619c = modifier;
        this.f69622h = painter;
        this.d = str;
        this.f69620e = f2;
        this.f69623i = contentScale;
        this.f69621f = i2;
        this.g = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f69618b) {
            case 0:
                ((Integer) obj2).getClass();
                LVImageKt.a(this.f69619c, (Painter) this.f69622h, this.d, this.f69620e, (ContentScale) this.f69623i, (Composer) obj, RecomposeScopeImplKt.a(this.f69621f | 1), this.g);
                break;
            default:
                ((Integer) obj2).getClass();
                OrderReturnOrExchangeComponentsKt.f(this.f69619c, this.d, (String) this.f69622h, this.f69620e, (List) this.f69623i, (Composer) obj, RecomposeScopeImplKt.a(this.f69621f | 1), this.g);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ h60(Modifier modifier, String str, String str2, float f2, List list, int i2, int i3) {
        this.f69619c = modifier;
        this.d = str;
        this.f69622h = str2;
        this.f69620e = f2;
        this.f69623i = list;
        this.f69621f = i2;
        this.g = i3;
    }
}
