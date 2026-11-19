package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import com.vuitton.android.platform.extensions.IntentExtensionKt;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import com.vuitton.android.presentation.screen.pdp.PdpDestinations;
import com.vuitton.android.presentation.screen.pdp.PdpDestinationsKt;
import defpackage.be;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class BeautyVtoActivity$onCreate$1$1$18$1 extends FunctionReferenceImpl implements Function1<Boolean, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        BeautyVtoActivity beautyVtoActivity = (BeautyVtoActivity) this.receiver;
        BeautyVtoActivity.Companion companion = BeautyVtoActivity.D;
        beautyVtoActivity.M().ga();
        if (zBooleanValue) {
            beautyVtoActivity.M().F0();
        } else {
            beautyVtoActivity.A = new be(beautyVtoActivity, 4);
            IntentExtensionKt.b(PdpDestinationsKt.a(new PdpDestinations.ToWelcomePage(LoginContext.WISHLIST), beautyVtoActivity), beautyVtoActivity.B);
        }
        return Unit.f71739a;
    }
}
