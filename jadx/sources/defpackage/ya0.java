package defpackage;

import android.content.Context;
import android.view.SurfaceView;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerComposableKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerComposableKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerUiModel;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ya0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81335b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SurfaceView f81336c;

    public /* synthetic */ ya0(SurfaceView surfaceView, int i2) {
        this.f81335b = i2;
        this.f81336c = surfaceView;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f81335b;
        SurfaceView surfaceView = this.f81336c;
        Context context = (Context) obj;
        switch (i2) {
            case 0:
                Lv3dCardViewerUiModel lv3dCardViewerUiModel = Lv3dCardViewerComposableKt.f58553a;
                context.getClass();
                break;
            default:
                Lv3dViewerUiModel lv3dViewerUiModel = Lv3dViewerComposableKt.f58587a;
                context.getClass();
                break;
        }
        return surfaceView;
    }
}
