package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import com.perfectcorp.perfectlib.ShadeFinder;
import defpackage.de;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class BeautyVtoActivity$onCreate$1$1$15$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        BeautyVtoActivity beautyVtoActivity = (BeautyVtoActivity) this.receiver;
        ShadeFinder shadeFinder = beautyVtoActivity.u;
        if (shadeFinder != null) {
            shadeFinder.setShadeFinderCallback(new de(beautyVtoActivity, 0));
        }
        return Unit.f71739a;
    }
}
