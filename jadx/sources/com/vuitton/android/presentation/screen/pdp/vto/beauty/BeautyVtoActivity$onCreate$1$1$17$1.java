package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import android.graphics.Bitmap;
import com.perfectcorp.perfectlib.MakeupCam;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class BeautyVtoActivity$onCreate$1$1$17$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        final BeautyVtoActivity beautyVtoActivity = (BeautyVtoActivity) this.receiver;
        MakeupCam makeupCam = beautyVtoActivity.s;
        if (makeupCam != null) {
            makeupCam.takePicture(beautyVtoActivity.w, beautyVtoActivity.x, beautyVtoActivity.y, beautyVtoActivity.z, new MakeupCam.PictureCallback() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity$startFaceAnalysis$1
                @Override // com.perfectcorp.perfectlib.MakeupCam.PictureCallback
                public final void onFailure(Throwable th) {
                    beautyVtoActivity.L().c("BeautyVtoActivity", "onFailure takePicture", th);
                }

                @Override // com.perfectcorp.perfectlib.MakeupCam.PictureCallback
                public final void onPictureTaken(Bitmap bitmap, Bitmap bitmap2) {
                    if (bitmap2 != null) {
                        BeautyVtoActivity.Companion companion = BeautyVtoActivity.D;
                        beautyVtoActivity.M().E9(bitmap2);
                    }
                }
            });
        }
        return Unit.f71739a;
    }
}
