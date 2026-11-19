package com.google.firebase.crashlytics.internal.common;

import android.app.ApplicationExitInfo;
import android.content.Context;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.ProcessDetailsProvider;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import com.google.firebase.crashlytics.internal.metadata.EventMetadata;
import com.google.firebase.crashlytics.internal.metadata.LogFileManager;
import com.google.firebase.crashlytics.internal.metadata.RolloutAssignment;
import com.google.firebase.crashlytics.internal.metadata.RolloutAssignmentList;
import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform;
import com.google.firebase.crashlytics.internal.persistence.CrashlyticsReportPersistence;
import com.google.firebase.crashlytics.internal.send.DataTransportCrashlyticsReportSender;
import com.google.firebase.crashlytics.internal.stacktrace.StackTraceTrimmingStrategy;
import com.google.firebase.crashlytics.internal.stacktrace.TrimmedThrowableData;
import com.linkplay.medialib.ContentTree;
import defpackage.az;
import defpackage.ct0;
import defpackage.gr0;
import defpackage.x5;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Stack;
import java.util.concurrent.Executor;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes2.dex */
public class SessionReportingCoordinator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CrashlyticsReportDataCapture f34570a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CrashlyticsReportPersistence f34571b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DataTransportCrashlyticsReportSender f34572c;
    public final LogFileManager d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final UserMetadata f34573e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final IdManager f34574f;
    public final CrashlyticsWorkers g;

    public SessionReportingCoordinator(CrashlyticsReportDataCapture crashlyticsReportDataCapture, CrashlyticsReportPersistence crashlyticsReportPersistence, DataTransportCrashlyticsReportSender dataTransportCrashlyticsReportSender, LogFileManager logFileManager, UserMetadata userMetadata, IdManager idManager, CrashlyticsWorkers crashlyticsWorkers) {
        this.f34570a = crashlyticsReportDataCapture;
        this.f34571b = crashlyticsReportPersistence;
        this.f34572c = dataTransportCrashlyticsReportSender;
        this.d = logFileManager;
        this.f34573e = userMetadata;
        this.f34574f = idManager;
        this.g = crashlyticsWorkers;
    }

    public static CrashlyticsReport.Session.Event a(CrashlyticsReport.Session.Event event, LogFileManager logFileManager, UserMetadata userMetadata, Map map) {
        CrashlyticsReport.Session.Event.Builder builderH = event.h();
        String strA = logFileManager.a();
        if (strA != null) {
            CrashlyticsReport.Session.Event.Log.Builder builderA = CrashlyticsReport.Session.Event.Log.a();
            builderA.b(strA);
            builderH.d(builderA.a());
        } else {
            Logger.f34483b.a(2);
        }
        List listE = e(userMetadata.a(map));
        List listE2 = e(userMetadata.b());
        if (!listE.isEmpty() || !listE2.isEmpty()) {
            CrashlyticsReport.Session.Event.Application.Builder builderI = event.b().i();
            builderI.e(listE);
            builderI.g(listE2);
            builderH.b(builderI.a());
        }
        return builderH.a();
    }

    public static CrashlyticsReport.Session.Event b(CrashlyticsReport.Session.Event event, UserMetadata userMetadata) {
        List listUnmodifiableList;
        RolloutAssignmentList rolloutAssignmentList = userMetadata.f34639f;
        synchronized (rolloutAssignmentList) {
            listUnmodifiableList = Collections.unmodifiableList(new ArrayList(rolloutAssignmentList.f34633a));
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < listUnmodifiableList.size(); i2++) {
            RolloutAssignment rolloutAssignment = (RolloutAssignment) listUnmodifiableList.get(i2);
            rolloutAssignment.getClass();
            CrashlyticsReport.Session.Event.RolloutAssignment.Builder builderA = CrashlyticsReport.Session.Event.RolloutAssignment.a();
            CrashlyticsReport.Session.Event.RolloutAssignment.RolloutVariant.Builder builderA2 = CrashlyticsReport.Session.Event.RolloutAssignment.RolloutVariant.a();
            builderA2.c(rolloutAssignment.f());
            builderA2.b(rolloutAssignment.d());
            builderA.d(builderA2.a());
            builderA.b(rolloutAssignment.b());
            builderA.c(rolloutAssignment.c());
            builderA.e(rolloutAssignment.e());
            arrayList.add(builderA.a());
        }
        if (arrayList.isEmpty()) {
            return event;
        }
        CrashlyticsReport.Session.Event.Builder builderH = event.h();
        CrashlyticsReport.Session.Event.RolloutsState.Builder builderA3 = CrashlyticsReport.Session.Event.RolloutsState.a();
        builderA3.b(arrayList);
        builderH.e(builderA3.a());
        return builderH.a();
    }

    public static String c(InputStream inputStream) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int i2 = bufferedInputStream.read(bArr);
                    if (i2 == -1) {
                        String string = byteArrayOutputStream.toString(StandardCharsets.UTF_8.name());
                        byteArrayOutputStream.close();
                        bufferedInputStream.close();
                        return string;
                    }
                    byteArrayOutputStream.write(bArr, 0, i2);
                    try {
                        bufferedInputStream.close();
                    } catch (Throwable th) {
                        th.addSuppressed(th);
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (Throwable th4) {
            bufferedInputStream.close();
            throw th4;
        }
    }

    public static List e(Map map) {
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(map.size());
        for (Map.Entry entry : map.entrySet()) {
            CrashlyticsReport.CustomAttribute.Builder builderA = CrashlyticsReport.CustomAttribute.a();
            builderA.b((String) entry.getKey());
            builderA.c((String) entry.getValue());
            arrayList.add(builderA.a());
        }
        Collections.sort(arrayList, new x5(15));
        return Collections.unmodifiableList(arrayList);
    }

    public final ApplicationExitInfo d(String str, List list, Predicate predicate) {
        long jLastModified = this.f34571b.f35006b.b(str, "start-time").lastModified();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ApplicationExitInfo applicationExitInfoL = az.l(it.next());
            if (applicationExitInfoL.getTimestamp() >= jLastModified && predicate.test(applicationExitInfoL)) {
                return applicationExitInfoL;
            }
        }
        return null;
    }

    public final void f(Throwable th, Thread thread, String str, EventMetadata eventMetadata, boolean z) {
        boolean zEquals = str.equals("crash");
        long j2 = eventMetadata.f34603b;
        CrashlyticsReportDataCapture crashlyticsReportDataCapture = this.f34570a;
        Context context = crashlyticsReportDataCapture.f34545a;
        int i2 = context.getResources().getConfiguration().orientation;
        StackTraceTrimmingStrategy stackTraceTrimmingStrategy = crashlyticsReportDataCapture.d;
        Stack stack = new Stack();
        for (Throwable cause = th; cause != null; cause = cause.getCause()) {
            stack.push(cause);
        }
        TrimmedThrowableData trimmedThrowableData = null;
        while (!stack.isEmpty()) {
            Throwable th2 = (Throwable) stack.pop();
            trimmedThrowableData = new TrimmedThrowableData(th2.getLocalizedMessage(), th2.getClass().getName(), stackTraceTrimmingStrategy.a(th2.getStackTrace()), trimmedThrowableData);
        }
        CrashlyticsReport.Session.Event.Builder builderA = CrashlyticsReport.Session.Event.a();
        builderA.g(str);
        builderA.f(j2);
        CrashlyticsReport.Session.Event.Application.ProcessDetails processDetailsC = ProcessDetailsProvider.f34485a.c(context);
        Boolean boolValueOf = processDetailsC.b() > 0 ? Boolean.valueOf(processDetailsC.b() != 100) : null;
        CrashlyticsReport.Session.Event.Application.Builder builderA2 = CrashlyticsReport.Session.Event.Application.a();
        builderA2.c(boolValueOf);
        builderA2.d(processDetailsC);
        builderA2.b(ProcessDetailsProvider.b(context));
        builderA2.h(i2);
        CrashlyticsReport.Session.Event.Application.Execution.Builder builderA3 = CrashlyticsReport.Session.Event.Application.Execution.a();
        ArrayList arrayList = new ArrayList();
        StackTraceElement[] stackTraceElementArr = trimmedThrowableData.f35071c;
        CrashlyticsReport.Session.Event.Application.Execution.Thread.Builder builderA4 = CrashlyticsReport.Session.Event.Application.Execution.Thread.a();
        builderA4.d(thread.getName());
        builderA4.c(4);
        builderA4.b(CrashlyticsReportDataCapture.d(stackTraceElementArr, 4));
        arrayList.add(builderA4.a());
        if (z) {
            for (Map.Entry<Thread, StackTraceElement[]> entry : Thread.getAllStackTraces().entrySet()) {
                Thread key = entry.getKey();
                if (!key.equals(thread)) {
                    StackTraceElement[] stackTraceElementArrA = stackTraceTrimmingStrategy.a(entry.getValue());
                    CrashlyticsReport.Session.Event.Application.Execution.Thread.Builder builderA5 = CrashlyticsReport.Session.Event.Application.Execution.Thread.a();
                    builderA5.d(key.getName());
                    builderA5.c(0);
                    builderA5.b(CrashlyticsReportDataCapture.d(stackTraceElementArrA, 0));
                    arrayList.add(builderA5.a());
                }
            }
        }
        builderA3.g(Collections.unmodifiableList(arrayList));
        builderA3.d(CrashlyticsReportDataCapture.c(trimmedThrowableData, 0));
        CrashlyticsReport.Session.Event.Application.Execution.Signal.Builder builderA6 = CrashlyticsReport.Session.Event.Application.Execution.Signal.a();
        builderA6.d(ContentTree.ROOT_ID);
        builderA6.c(ContentTree.ROOT_ID);
        builderA6.b(0L);
        builderA3.f(builderA6.a());
        builderA3.c(crashlyticsReportDataCapture.a());
        builderA2.f(builderA3.a());
        builderA.b(builderA2.a());
        builderA.c(crashlyticsReportDataCapture.b(i2));
        CrashlyticsReport.Session.Event eventA = builderA.a();
        Map map = eventMetadata.f34604c;
        LogFileManager logFileManager = this.d;
        UserMetadata userMetadata = this.f34573e;
        CrashlyticsReport.Session.Event eventB = b(a(eventA, logFileManager, userMetadata, map), userMetadata);
        if (z) {
            this.f34571b.e(eventB, eventMetadata.f34602a, zEquals);
        } else {
            this.g.f34591b.a(new gr0(this, eventB, eventMetadata, zEquals, 1));
        }
    }

    public final Task g(String str, Executor executor) {
        ArrayList<File> arrayListC = this.f34571b.c();
        ArrayList<CrashlyticsReportWithSessionId> arrayList = new ArrayList();
        for (File file : arrayListC) {
            try {
                CrashlyticsReportJsonTransform crashlyticsReportJsonTransform = CrashlyticsReportPersistence.g;
                String strF = CrashlyticsReportPersistence.f(file);
                crashlyticsReportJsonTransform.getClass();
                arrayList.add(new AutoValue_CrashlyticsReportWithSessionId(CrashlyticsReportJsonTransform.j(strF), file.getName(), file));
            } catch (IOException unused) {
                Logger logger = Logger.f34483b;
                Objects.toString(file);
                logger.a(5);
                file.delete();
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (CrashlyticsReportWithSessionId autoValue_CrashlyticsReportWithSessionId : arrayList) {
            if (str == null || str.equals(autoValue_CrashlyticsReportWithSessionId.c())) {
                if (autoValue_CrashlyticsReportWithSessionId.a().g() == null || autoValue_CrashlyticsReportWithSessionId.a().f() == null) {
                    FirebaseInstallationId firebaseInstallationIdC = this.f34574f.c(true);
                    CrashlyticsReport crashlyticsReportA = autoValue_CrashlyticsReportWithSessionId.a();
                    String str2 = firebaseInstallationIdC.f34559a;
                    CrashlyticsReport.Builder builderN = crashlyticsReportA.n();
                    builderN.g(str2);
                    CrashlyticsReport crashlyticsReportA2 = builderN.a();
                    String str3 = firebaseInstallationIdC.f34560b;
                    CrashlyticsReport.Builder builderN2 = crashlyticsReportA2.n();
                    builderN2.f(str3);
                    autoValue_CrashlyticsReportWithSessionId = new AutoValue_CrashlyticsReportWithSessionId(builderN2.a(), autoValue_CrashlyticsReportWithSessionId.c(), autoValue_CrashlyticsReportWithSessionId.b());
                }
                arrayList2.add(this.f34572c.b(autoValue_CrashlyticsReportWithSessionId, str != null).g(executor, new ct0(this)));
            }
        }
        return Tasks.g(arrayList2);
    }
}
