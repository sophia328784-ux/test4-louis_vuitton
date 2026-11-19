package com.google.firebase.crashlytics.internal.send;

import android.content.Context;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Transformer;
import com.google.android.datatransport.TransportFactory;
import com.google.android.datatransport.cct.CCTDestination;
import com.google.android.datatransport.runtime.TransportRuntime;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.CrashlyticsReportWithSessionId;
import com.google.firebase.crashlytics.internal.common.OnDemandCounter;
import com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform;
import com.google.firebase.crashlytics.internal.settings.SettingsController;
import defpackage.md;
import defpackage.wp;

/* JADX INFO: loaded from: classes2.dex */
public class DataTransportCrashlyticsReportSender {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final CrashlyticsReportJsonTransform f35013c = new CrashlyticsReportJsonTransform();
    public static final String d = c("hts/cahyiseot-agolai.o/1frlglgc/aclg", "tp:/rsltcrprsp.ogepscmv/ieo/eaybtho");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f35014e = c("AzSBpY4F0rHiHFdinTvM", "IayrSTFL9eJ69YeSUO2");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final wp f35015f = new wp(19);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ReportQueue f35016a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Transformer f35017b;

    public DataTransportCrashlyticsReportSender(ReportQueue reportQueue, Transformer transformer) {
        this.f35016a = reportQueue;
        this.f35017b = transformer;
    }

    public static DataTransportCrashlyticsReportSender a(Context context, SettingsController settingsController, OnDemandCounter onDemandCounter) {
        TransportRuntime.b(context);
        TransportFactory transportFactoryC = TransportRuntime.a().c(new CCTDestination(d, f35014e));
        Encoding encoding = new Encoding("json");
        wp wpVar = f35015f;
        return new DataTransportCrashlyticsReportSender(new ReportQueue(transportFactoryC.a("FIREBASE_CRASHLYTICS_REPORT", encoding, wpVar), settingsController.b(), onDemandCounter), wpVar);
    }

    public static String c(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            md.n("Invalid input received");
            return null;
        }
        StringBuilder sb = new StringBuilder(str2.length() + str.length());
        for (int i2 = 0; i2 < str.length(); i2++) {
            sb.append(str.charAt(i2));
            if (str2.length() > i2) {
                sb.append(str2.charAt(i2));
            }
        }
        return sb.toString();
    }

    public final Task b(CrashlyticsReportWithSessionId crashlyticsReportWithSessionId, boolean z) {
        TaskCompletionSource taskCompletionSource;
        ReportQueue reportQueue = this.f35016a;
        synchronized (reportQueue.f35022f) {
            try {
                taskCompletionSource = new TaskCompletionSource();
                if (z) {
                    reportQueue.f35024i.f34568a.getAndIncrement();
                    if (reportQueue.f35022f.size() < reportQueue.f35021e) {
                        Logger logger = Logger.f34483b;
                        logger.a(3);
                        reportQueue.f35022f.size();
                        logger.a(3);
                        reportQueue.g.execute(new ReportQueue.ReportRunnable(crashlyticsReportWithSessionId, taskCompletionSource));
                        logger.a(3);
                        taskCompletionSource.d(crashlyticsReportWithSessionId);
                    } else {
                        reportQueue.a();
                        Logger.f34483b.a(3);
                        reportQueue.f35024i.f34569b.getAndIncrement();
                        taskCompletionSource.d(crashlyticsReportWithSessionId);
                    }
                } else {
                    reportQueue.b(crashlyticsReportWithSessionId, taskCompletionSource);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return taskCompletionSource.f32085a;
    }
}
