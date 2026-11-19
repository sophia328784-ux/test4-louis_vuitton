package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import com.perfectcorp.perfectlib.MakeupCam;
import com.perfectcorp.perfectlib.VtoApplier;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class BeautyVtoActivity$onCreate$1$1$3$1 extends FunctionReferenceImpl implements Function2<MakeupCam, Function1<? super Boolean, ? extends Unit>, Unit> {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        MakeupCam makeupCam = (MakeupCam) obj;
        final Function1 function1 = (Function1) obj2;
        makeupCam.getClass();
        function1.getClass();
        final BeautyVtoActivity beautyVtoActivity = (BeautyVtoActivity) this.receiver;
        beautyVtoActivity.getClass();
        VtoApplier.create(makeupCam, new VtoApplier.CreateCallback() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity$createVtoApplier$1
            @Override // com.perfectcorp.perfectlib.VtoApplier.CreateCallback
            public final void onFailure(Throwable th) {
                th.getClass();
                beautyVtoActivity.L().c("CreateVtoApplier", "[createVtoApplier] failed.", th);
                function1.invoke(Boolean.FALSE);
            }

            @Override // com.perfectcorp.perfectlib.VtoApplier.CreateCallback
            public final void onSuccess(VtoApplier vtoApplier) {
                vtoApplier.getClass();
                BeautyVtoActivity beautyVtoActivity2 = beautyVtoActivity;
                beautyVtoActivity2.L();
                beautyVtoActivity2.t = vtoApplier;
                function1.invoke(Boolean.TRUE);
            }
        });
        return Unit.f71739a;
    }
}
