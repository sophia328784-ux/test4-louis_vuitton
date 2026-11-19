package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.screen.portal.components.PortalSliderComponentKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class yo0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81399b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f81400c;
    public final /* synthetic */ AssetUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f81401e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f81402f;

    public /* synthetic */ yo0(Modifier modifier, AssetUiModel assetUiModel, boolean z, int i2, int i3) {
        this.f81399b = i3;
        this.f81400c = modifier;
        this.d = assetUiModel;
        this.f81401e = z;
        this.f81402f = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f81399b;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                PortalSliderComponentKt.b(this.f81400c, this.d, this.f81401e, composer, RecomposeScopeImplKt.a(this.f81402f | 1));
                break;
            default:
                PortalSliderComponentKt.a(this.f81400c, this.d, this.f81401e, composer, RecomposeScopeImplKt.a(this.f81402f | 1));
                break;
        }
        return Unit.f71739a;
    }
}
