package com.dynatrace.android.agent;

import android.os.Looper;
import com.dynatrace.agent.common.InstrumentationFlavor;
import com.dynatrace.agent.events.error.ErrorEvent;
import com.dynatrace.android.agent.comm.MonitoringDataPacket;
import com.dynatrace.android.agent.conf.ServerConfiguration;
import com.dynatrace.android.agent.crash.CrashListener;
import com.dynatrace.android.agent.crash.StacktraceData;
import com.dynatrace.android.agent.crash.StacktraceProcessorFactory;
import com.dynatrace.android.agent.data.RandomFactory;
import com.dynatrace.android.agent.data.Session;
import com.dynatrace.android.agent.mixed.SessionInformationGenerator;
import com.dynatrace.android.agent.util.Utility;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class CrashReporter implements CrashListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f27289c = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StacktraceProcessorFactory f27290a = new StacktraceProcessorFactory();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CommunicationManager f27291b;

    static {
        boolean z = Global.f27307a;
    }

    public CrashReporter(CommunicationManager communicationManager) {
        this.f27291b = communicationManager;
    }

    @Override // com.dynatrace.android.agent.crash.CrashListener
    public final synchronized void a() {
    }

    @Override // com.dynatrace.android.agent.crash.CrashListener
    public final synchronized void b(Thread thread, Throwable th) {
        try {
            RandomFactory randomFactory = Session.m;
            Session sessionB = Session.b(TimeLineProvider.f27311c.a(), true);
            int i2 = AdkSettings.f27249k.f27252c;
            this.f27291b.i();
            if (sessionB.e()) {
                c(thread, th, sessionB, i2);
            }
            Core.h();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void c(Thread thread, Throwable th, Session session, int i2) {
        int i3;
        boolean zE;
        JSONObject jSONObject;
        long jA = TimeLineProvider.f27311c.a();
        boolean z = Global.f27307a;
        if (!session.f27481i.a(EventType.CRASH)) {
            Core.e("a crash");
            return;
        }
        InstrumentationFlavor instrumentationFlavor = AdkSettings.f27249k.f27254f.u;
        this.f27290a.getClass();
        StacktraceData stacktraceDataA = StacktraceProcessorFactory.a(th, instrumentationFlavor).a();
        String str = stacktraceDataA.f27451a;
        if (instrumentationFlavor == InstrumentationFlavor.REACT_NATIVE && str != null && str.contains("JavascriptException")) {
            Core.e("a crash");
            return;
        }
        Utility.b("reportCrash, thread: " + thread + ", throwable: " + th + ", serverId: " + i2);
        if (session.f27483k) {
            try {
                JSONObject jSONObjectA = ErrorEvent.a(th, false);
                jSONObjectA.put("characteristics.has_crash", true);
                jSONObjectA.put("error.is_fatal", true);
                Utility.b("crash event: " + jSONObjectA);
                jSONObject = jSONObjectA;
            } catch (JSONException unused) {
                Utility.b("crash event can't be generated");
                jSONObject = null;
            }
            if (jSONObject != null) {
                i3 = 1;
                Core.l.a(jA, SessionInformationGenerator.a(session), jSONObject, false);
            } else {
                i3 = 1;
            }
        } else {
            i3 = 1;
            Utility.b("reportCrash can't be executed: Grail is disabled");
        }
        CrashSegment crashSegment = new CrashSegment(str, stacktraceDataA.f27452b, stacktraceDataA.f27453c, session, i2, stacktraceDataA.d.a(), !session.f27483k);
        Core.e("a crash");
        int i4 = session.d;
        if (i4 == -1) {
            i4 = i3;
        }
        if (!session.e()) {
            boolean z2 = Global.f27307a;
            return;
        }
        CommunicationManager communicationManager = this.f27291b;
        communicationManager.getClass();
        ArrayList arrayList = new ArrayList();
        arrayList.add(crashSegment.h().toString());
        BasicSegment.UpdatableDataGenerator updatableDataGenerator = communicationManager.f27264c;
        long j2 = session.f27475a;
        updatableDataGenerator.getClass();
        MonitoringDataPacket monitoringDataPacket = new MonitoringDataPacket(Core.f(crashSegment.f27297h).concat(BasicSegment.UpdatableDataGenerator.a(i4, null, j2)), arrayList);
        int i5 = Thread.currentThread() == Looper.getMainLooper().getThread() ? i3 : 0;
        boolean z3 = crashSegment.d == 0 ? i3 : 0;
        ServerConfiguration serverConfiguration = AdkSettings.f27249k.g;
        if (i5 != 0) {
            CommunicationManager.PostCrashReportThread postCrashReportThread = new CommunicationManager.PostCrashReportThread(communicationManager, serverConfiguration, monitoringDataPacket, i2, z3, session.f27476b, session.f27477c, null);
            postCrashReportThread.start();
            try {
                postCrashReportThread.join(LiveTranslationEntity.DefaultSentenceTimeOut);
            } catch (InterruptedException unused2) {
                boolean z4 = Global.f27307a;
            }
            zE = postCrashReportThread.hasBeenSuccessfully();
        } else {
            zE = communicationManager.e(serverConfiguration, monitoringDataPacket, i2, z3, session.f27476b, session.f27477c, false);
        }
        if (zE) {
            return;
        }
        crashSegment.z = 0;
        Core.g(crashSegment, crashSegment.p);
    }
}
