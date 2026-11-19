package com.vuitton.android.presentation.screen.portal;

import com.vuitton.android.presentation.screen.options.legaltext.LegalTextActivity;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class PortalSliderActivity$onCreate$1$1$1$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        PortalSliderActivity portalSliderActivity = (PortalSliderActivity) this.receiver;
        PortalSliderActivity.Companion companion = PortalSliderActivity.s;
        portalSliderActivity.getClass();
        LegalTextActivity.p.getClass();
        portalSliderActivity.startActivity(LegalTextActivity.Companion.a(portalSliderActivity, false));
        return Unit.f71739a;
    }
}
