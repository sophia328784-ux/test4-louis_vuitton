package com.networkbench.agent.impl.data.type;

import android.app.Activity;
import com.linkplay.medialib.ContentTree;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.networkbench.agent.impl.harvest.ScreenNameManager;
import com.networkbench.agent.impl.instrumentation.NBSAppInstrumentation;
import com.networkbench.agent.impl.instrumentation.NBSTraceUnit;
import com.networkbench.agent.impl.session.screen.NBSBitmapBeansControl;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ak;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class a extends q implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f36931a = "ActivityTrace";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f36932b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private o f36933c = new o();

    private void b(String str) {
        Logger.debug(f36931a, "resetActivityFeatureData uuid:" + str);
        if (com.networkbench.agent.impl.data.d.j.a(str)) {
            com.networkbench.agent.impl.data.d.b.a().a(new com.networkbench.agent.impl.data.d.d("No_Catched_Action", ContentTree.ROOT_ID, "", -1));
            com.networkbench.agent.impl.c.g.A("resetActivityFeatureData featuresData!");
        }
    }

    private boolean e() {
        return f.f36952a.b(f.a.FIRST_RUN) || f.f36952a.b(f.a.COLD_RUN);
    }

    private boolean f() {
        return f.f36952a.b(f.a.BACKGROUND);
    }

    private void g() {
        p pVar = this.f36995f;
        b.a().b(pVar != null ? pVar.q() : 0L);
    }

    private boolean h() {
        return f.f36952a.b(f.a.HOT_RUN);
    }

    @Override // com.networkbench.agent.impl.data.type.q
    public p a() {
        if (h()) {
            c.a().c();
        }
        if (!com.networkbench.agent.impl.util.r.u().af()) {
            b.a().a(true);
            return null;
        }
        b(com.networkbench.agent.impl.data.d.b.a().b().a());
        p pVarA = super.a();
        if (pVarA != null) {
            com.networkbench.agent.impl.data.d.h hVarA = a(pVarA);
            if (!hVarA.o()) {
                com.networkbench.agent.impl.data.d.h.f36878a = com.networkbench.agent.impl.data.d.b.a().c();
                com.networkbench.agent.impl.asyncaction.a.b.f36406a.a(hVarA);
                com.networkbench.agent.impl.data.d.j.a(hVarA, com.networkbench.agent.impl.data.d.b.a().b().a());
            }
            if (h()) {
                com.networkbench.agent.impl.asyncaction.a.b.f36406a.a(new g(f.f36952a.a(), pVarA, this.f36994e.a()));
            } else {
                Logger.debug(f36931a, "is not hot launch");
            }
        }
        g();
        return pVarA;
    }

    @Override // com.networkbench.agent.impl.data.type.l
    public void c(Activity activity) {
    }

    @Override // com.networkbench.agent.impl.data.type.l
    public void d(Activity activity) {
    }

    @Override // com.networkbench.agent.impl.data.type.l
    public void e(Activity activity) {
    }

    @Override // com.networkbench.agent.impl.data.type.l
    public void b(Activity activity, boolean z) {
    }

    @Override // com.networkbench.agent.impl.data.type.l
    public void b(Activity activity) {
        if (ak.a((Class) activity.getClass())) {
            Logger.debug(f36931a, "activity is instrument, skip");
            return;
        }
        Logger.debug(f36931a, "activity is not instrument, do lifecycle");
        ScreenNameManager.setCurrentActivityName(activity.getClass().getName());
        this.f36933c.c();
        NBSAppInstrumentation.activityResumeBeginIns(activity);
        NBSAppInstrumentation.activityResumeEndIns();
    }

    @Override // com.networkbench.agent.impl.data.type.q
    public p a(NBSTraceUnit nBSTraceUnit, String str) {
        if (!e()) {
            Logger.debug(f36931a, "reset data when activity switch");
            this.f36994e.e();
        }
        if (f()) {
            return new e(nBSTraceUnit);
        }
        return super.a(nBSTraceUnit, str);
    }

    private boolean a(long j2) {
        long hotStartThreshold = HarvestConfiguration.HOT_START_THRESHOLD;
        if (NBSAgent.getImpl() != null && NBSAgent.getImpl().p() != null) {
            hotStartThreshold = NBSAgent.getImpl().p().m().getHotStartThreshold();
        }
        boolean z = System.currentTimeMillis() - j2 >= 1000 * hotStartThreshold;
        Logger.debug(f36931a, "hotStartThreshold is:" + hotStartThreshold + ", isHotStart:" + z);
        return z;
    }

    @Override // com.networkbench.agent.impl.data.type.q
    public void a(String str, r rVar) {
        super.a(str, rVar);
        this.f36932b = str;
    }

    @Override // com.networkbench.agent.impl.data.type.q
    public void a(String str, String str2, r rVar) {
        super.a(str, str2, rVar);
        if (f()) {
            NBSBitmapBeansControl.getInstance().getSessionIdRefresh();
            if (a(f.f36952a.b())) {
                f.f36952a.a(f.a.HOT_RUN);
                this.f36994e.a(new UUID(ak.a().nextLong(), ak.a().nextLong()).toString().replace("-", ""));
            } else {
                f.f36952a.a(f.a.BACKGROUND_SWITCH);
            }
        }
        if (com.networkbench.agent.impl.util.r.u().aK()) {
            com.networkbench.agent.impl.i.f.a().b();
        }
    }

    private com.networkbench.agent.impl.data.d.h a(p pVar) {
        return new com.networkbench.agent.impl.data.d.h(0, this.f36932b, pVar);
    }

    @Override // com.networkbench.agent.impl.data.type.l
    public void a(Activity activity) {
        Logger.debug(f36931a, "onActivityCreated activity name is ".concat(activity.getClass().getName()));
        if (ak.a((Class) activity.getClass())) {
            Logger.debug(f36931a, "activity is instrument, skip");
            return;
        }
        Logger.debug(f36931a, "activity is not instrument, do lifecycle");
        this.f36933c.a();
        NBSAppInstrumentation.activityCreateBeginIns(activity);
        NBSAppInstrumentation.activityCreateEndIns();
    }

    @Override // com.networkbench.agent.impl.data.type.l
    public void a(Activity activity, boolean z) {
        if (ak.a((Class) activity.getClass())) {
            Logger.debug(f36931a, "activity is instrument, skip");
            return;
        }
        Logger.debug(f36931a, "activity is not instrument, do lifecycle");
        this.f36933c.b();
        a((Object) activity);
        NBSAppInstrumentation.activityStartBeginIns(activity);
        NBSAppInstrumentation.activityStartEndIns();
    }

    private void a(Object obj) {
        if (this.f36933c.d() || !f()) {
            return;
        }
        Logger.debug(f36931a, "background return to foreground, not run onCreate, add onRestart invoke");
        NBSAppInstrumentation.activityRestartBeginIns(obj);
        NBSAppInstrumentation.activityRestartEndIns();
    }
}
