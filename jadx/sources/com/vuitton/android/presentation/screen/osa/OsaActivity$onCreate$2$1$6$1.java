package com.vuitton.android.presentation.screen.osa;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class OsaActivity$onCreate$2$1$6$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        OsaActivity osaActivity = (OsaActivity) this.receiver;
        OsaActivity.Companion companion = OsaActivity.u;
        osaActivity.getClass();
        osaActivity.startActivity(OsaDestinationsKt.a(OsaDestinations.ToPrivacyPolicy.f60569a, osaActivity));
        return Unit.f71739a;
    }
}
