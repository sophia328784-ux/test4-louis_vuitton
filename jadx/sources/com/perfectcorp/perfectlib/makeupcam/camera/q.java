package com.perfectcorp.perfectlib.makeupcam.camera;

import com.perfectcorp.thirdparty.com.google.common.util.concurrent.Uninterruptibles;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class q implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40918b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f40919c;

    public /* synthetic */ q(Object obj, int i2) {
        this.f40918b = i2;
        this.f40919c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f40918b;
        Object obj = this.f40919c;
        switch (i2) {
            case 0:
                ApplyEffectCtrl.EarringsConfiguration earringsConfiguration = (ApplyEffectCtrl.EarringsConfiguration) obj;
                ApplyEffectCtrl.this.f40486e.X(earringsConfiguration.A);
                break;
            case 1:
                LiveMakeupCtrl liveMakeupCtrl = (LiveMakeupCtrl) obj;
                liveMakeupCtrl.f40722k.quit();
                Uninterruptibles.b(liveMakeupCtrl.f40722k);
                i iVar = liveMakeupCtrl.c1;
                i.a aVar = iVar.g;
                for (d dVar : aVar.f40899b) {
                    dVar.f40870i.a(dVar.f40866c);
                }
                for (d dVar2 : aVar.f40900c) {
                    dVar2.f40870i.a(dVar2.f40866c);
                }
                if (!iVar.g.f40899b.isEmpty() || !iVar.g.f40900c.isEmpty()) {
                    i.a.a(iVar.g);
                    iVar.f40895c.s(iVar.f40897f.getAndSet(0));
                }
                c cVar = liveMakeupCtrl.d1;
                if (cVar != null) {
                    c.a aVar2 = cVar.g;
                    for (a aVar3 : aVar2.d) {
                        aVar3.g.a(aVar3.f40846b);
                    }
                    for (a aVar4 : aVar2.f40859c) {
                        aVar4.g.a(aVar4.f40846b);
                    }
                    if (!cVar.g.f40859c.isEmpty() || !cVar.g.d.isEmpty()) {
                        c.a.a(cVar.g, cVar);
                    }
                }
                break;
            default:
                ((LiveMakeupCtrl.d) obj).c();
                break;
        }
    }
}
