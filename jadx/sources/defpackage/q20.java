package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.imageviewer.components.ImageViewerComposableKt;
import com.vuitton.android.presentation.screen.imageviewer.components.ImageViewerScreenKt;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class q20 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78984b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f78985c;
    public final /* synthetic */ ArrayList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ProductBackground f78986e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f78987f;
    public final /* synthetic */ Function0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function0 f78988h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function0 f78989i;

    public /* synthetic */ q20(int i2, ArrayList arrayList, ProductBackground productBackground, boolean z, Function0 function0, Function0 function1, Function0 function2, int i3, int i4) {
        this.f78984b = i4;
        this.f78985c = i2;
        this.d = arrayList;
        this.f78986e = productBackground;
        this.f78987f = z;
        this.g = function0;
        this.f78988h = function1;
        this.f78989i = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f78984b) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                ImageViewerComposableKt.a(this.f78985c, this.d, this.f78986e, this.f78987f, this.g, this.f78988h, this.f78989i, (Composer) obj, iA);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                ImageViewerScreenKt.a(this.f78985c, this.d, this.f78986e, this.f78987f, this.g, this.f78988h, this.f78989i, (Composer) obj, iA2);
                break;
        }
        return Unit.f71739a;
    }
}
