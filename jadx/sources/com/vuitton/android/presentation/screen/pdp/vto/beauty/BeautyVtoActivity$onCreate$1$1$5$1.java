package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import com.perfectcorp.perfectlib.PerfectEffect;
import com.perfectcorp.perfectlib.VtoApplier;
import java.util.Collections;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class BeautyVtoActivity$onCreate$1$1$5$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        BeautyVtoActivity beautyVtoActivity = (BeautyVtoActivity) this.receiver;
        BeautyVtoActivity.Companion companion = BeautyVtoActivity.D;
        beautyVtoActivity.getClass();
        Map<PerfectEffect, int[]> mapSingletonMap = Collections.singletonMap(PerfectEffect.SKIN_SMOOTH, new int[]{30});
        VtoApplier vtoApplier = beautyVtoActivity.t;
        if (vtoApplier != null) {
            vtoApplier.setIntensities(mapSingletonMap, new BeautyVtoActivity$configureSkinSmoothEffect$1(beautyVtoActivity));
        }
        return Unit.f71739a;
    }
}
