package defpackage;

import com.perfectcorp.perfectlib.MakeupCam;
import com.perfectcorp.perfectlib.PerfectEffect;
import com.perfectcorp.perfectlib.VtoApplier;
import com.vuitton.android.platform.extensions.IntentExtensionKt;
import com.vuitton.android.presentation.screen.pdp.PdpDestinations;
import com.vuitton.android.presentation.screen.pdp.PdpDestinationsKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity$configureSkinSmoothEffect$1;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyPictureUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoViewState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.utils.CameraController;
import com.vuitton.android.presentation.utils.ShareUtilsKt;
import com.vuitton.core.infrastructure.perfectcorp.CameraFacing;
import com.vuitton.core.infrastructure.perfectcorp.CameraLibrary;
import java.util.Collections;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class be implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20839b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BeautyVtoActivity f20840c;

    public /* synthetic */ be(BeautyVtoActivity beautyVtoActivity, int i2) {
        this.f20839b = i2;
        this.f20840c = beautyVtoActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f20839b;
        int i3 = 1;
        BeautyVtoActivity beautyVtoActivity = this.f20840c;
        switch (i2) {
            case 0:
                BeautyVtoActivity.Companion companion = BeautyVtoActivity.D;
                IntentExtensionKt.b(PdpDestinationsKt.a(new PdpDestinations.ToWishlistPage(false, i3, null), beautyVtoActivity), beautyVtoActivity.C);
                break;
            case 1:
                BeautyVtoActivity.Companion companion2 = BeautyVtoActivity.D;
                BeautyVtoActivity beautyVtoActivity2 = this.f20840c;
                beautyVtoActivity2.M().ia();
                BeautyPictureUiModel beautyPictureUiModel = ((BeautyVtoViewState) beautyVtoActivity2.M().getK0().getValue()).f62153f;
                if (beautyPictureUiModel != null) {
                    ShareUtilsKt.a(beautyVtoActivity2, beautyPictureUiModel.f62147a, null, null, beautyPictureUiModel.f62148b, 44);
                }
                break;
            case 2:
                BeautyVtoActivity.Companion companion3 = BeautyVtoActivity.D;
                MakeupCam makeupCam = beautyVtoActivity.s;
                if (makeupCam != null) {
                    makeupCam.enableComparison(true);
                }
                beautyVtoActivity.M().E6();
                break;
            case 3:
                BeautyVtoActivity.Companion companion4 = BeautyVtoActivity.D;
                MakeupCam makeupCam2 = beautyVtoActivity.s;
                if (makeupCam2 != null) {
                    makeupCam2.enableComparison(true);
                }
                beautyVtoActivity.M().E6();
                break;
            case 4:
                BeautyVtoActivity.Companion companion5 = BeautyVtoActivity.D;
                beautyVtoActivity.M().F0();
                break;
            case 5:
                CameraController cameraController = beautyVtoActivity.v;
                if (cameraController != null) {
                    cameraController.b();
                }
                break;
            case 6:
                CameraController cameraController2 = beautyVtoActivity.v;
                if (cameraController2 != null) {
                    int i4 = CameraController.f62313i;
                    cameraController2.a(CameraLibrary.CAMERA_2, CameraFacing.FRONT);
                }
                break;
            default:
                BeautyVtoActivity.Companion companion6 = BeautyVtoActivity.D;
                Map<PerfectEffect, int[]> mapSingletonMap = Collections.singletonMap(PerfectEffect.SKIN_SMOOTH, new int[]{30});
                VtoApplier vtoApplier = beautyVtoActivity.t;
                if (vtoApplier != null) {
                    vtoApplier.setIntensities(mapSingletonMap, new BeautyVtoActivity$configureSkinSmoothEffect$1(beautyVtoActivity));
                }
                break;
        }
        return Unit.f71739a;
    }
}
