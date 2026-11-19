package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import com.perfectcorp.perfectlib.ShadeFinder;
import defpackage.de;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class BeautyVtoActivity$onCreate$1$1$2$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        final BeautyVtoActivity beautyVtoActivity = (BeautyVtoActivity) this.receiver;
        if (beautyVtoActivity.u != null) {
            beautyVtoActivity.L();
        } else {
            ShadeFinder.create(new ShadeFinder.CreateCallback() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity$initShadeFinder$1
                @Override // com.perfectcorp.perfectlib.ShadeFinder.CreateCallback
                public final void onFailure(Throwable th) {
                    th.getClass();
                    beautyVtoActivity.L().c("BeautyVtoActivity", "ShadeFinder create failed.", th);
                }

                @Override // com.perfectcorp.perfectlib.ShadeFinder.CreateCallback
                public final void onSuccess(ShadeFinder shadeFinder) {
                    ShadeFinder shadeFinder2;
                    shadeFinder.getClass();
                    BeautyVtoActivity beautyVtoActivity2 = beautyVtoActivity;
                    beautyVtoActivity2.u = shadeFinder;
                    if (Intrinsics.c(beautyVtoActivity2.M().z6(), BeautyVtoRoutes.ShadeFinderScan.INSTANCE) && (shadeFinder2 = beautyVtoActivity2.u) != null) {
                        shadeFinder2.setShadeFinderCallback(new de(beautyVtoActivity2, 0));
                    }
                    beautyVtoActivity2.L();
                }
            });
        }
        return Unit.f71739a;
    }
}
