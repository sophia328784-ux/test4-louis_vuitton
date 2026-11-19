package com.vuitton.android.presentation.screen.pdp;

import androidx.core.content.ContextCompat;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.LegalConsentContextUiModel;
import defpackage.xl0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class PdpActivity$onCreate$3$1$1$6$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        PdpActivity pdpActivity = (PdpActivity) this.receiver;
        PdpActivity.Companion companion = PdpActivity.D;
        pdpActivity.getClass();
        if (ContextCompat.checkSelfPermission(pdpActivity, "android.permission.CAMERA") != 0) {
            pdpActivity.C = new xl0(pdpActivity, 10);
            pdpActivity.B.a("android.permission.CAMERA");
        } else if (pdpActivity.I().N7()) {
            pdpActivity.startActivity(PdpDestinationsKt.a(PdpDestinations.ToShadeFinderPage.f61114a, pdpActivity));
        } else {
            pdpActivity.I().d5(LegalConsentContextUiModel.SHADE_FINDER);
        }
        return Unit.f71739a;
    }
}
