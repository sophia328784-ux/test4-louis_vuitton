package com.dynatrace.android.useraction;

import com.dynatrace.android.agent.DTXActionImpl;
import com.dynatrace.android.agent.DTXAutoAction;
import com.dynatrace.android.agent.data.Session;

/* JADX INFO: loaded from: classes2.dex */
public class DTXAutoActionWrapper implements InternalUserAction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DTXAutoAction f27723a;

    public DTXAutoActionWrapper(DTXAutoAction dTXAutoAction) {
        this.f27723a = dTXAutoAction;
    }

    @Override // com.dynatrace.android.useraction.InternalUserAction
    public final boolean a() {
        return this.f27723a.f27295e;
    }

    @Override // com.dynatrace.android.useraction.InternalUserAction
    public final long b() {
        return this.f27723a.q;
    }

    @Override // com.dynatrace.android.useraction.InternalUserAction
    public final void c() {
        DTXAutoAction dTXAutoAction = this.f27723a;
        if (dTXAutoAction.I == null) {
            dTXAutoAction.H(DTXAutoAction.K);
        }
    }

    @Override // com.dynatrace.android.useraction.InternalUserAction
    public final int d() {
        return this.f27723a.f27298i;
    }

    public final void e(DTXActionImpl dTXActionImpl) {
        this.f27723a.o(dTXActionImpl);
    }

    public final void f(String str, String str2) {
        this.f27723a.d(str, str2);
    }

    public final void g() {
        int i2 = DTXAutoAction.K;
        DTXAutoAction dTXAutoAction = this.f27723a;
        dTXAutoAction.H(i2);
        dTXAutoAction.D();
    }

    @Override // com.dynatrace.android.useraction.InternalUserAction
    public final Session getSession() {
        return this.f27723a.f27297h;
    }
}
