package com.google.firebase.crashlytics.internal.persistence;

import android.os.Build;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.CrashlyticsAppQualitySessionsSubscriber;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform;
import com.google.firebase.crashlytics.internal.settings.SettingsProvider;
import defpackage.aa;
import defpackage.fc;
import defpackage.jb;
import defpackage.kb;
import defpackage.tq;
import defpackage.x5;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.NavigableSet;
import java.util.Optional;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicInteger;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
public class CrashlyticsReportPersistence {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Charset f35001e = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f35002f = 15;
    public static final CrashlyticsReportJsonTransform g = new CrashlyticsReportJsonTransform();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final x5 f35003h = new x5(5);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final tq f35004i = new tq(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicInteger f35005a = new AtomicInteger(0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FileStore f35006b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SettingsProvider f35007c;
    public final CrashlyticsAppQualitySessionsSubscriber d;

    public CrashlyticsReportPersistence(FileStore fileStore, SettingsProvider settingsProvider, CrashlyticsAppQualitySessionsSubscriber crashlyticsAppQualitySessionsSubscriber) {
        this.f35006b = fileStore;
        this.f35007c = settingsProvider;
        this.d = crashlyticsAppQualitySessionsSubscriber;
    }

    public static void b(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((File) it.next()).delete();
        }
    }

    public static String f(File file) {
        byte[] bArr = new byte[8192];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            try {
                int i2 = fileInputStream.read(bArr);
                if (i2 <= 0) {
                    String str = new String(byteArrayOutputStream.toByteArray(), f35001e);
                    fileInputStream.close();
                    return str;
                }
                byteArrayOutputStream.write(bArr, 0, i2);
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    public static void g(File file, String str) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), f35001e);
        try {
            outputStreamWriter.write(str);
            outputStreamWriter.close();
        } catch (Throwable th) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final CrashlyticsReport.Session.Event a(String str, CrashlyticsReport.Session.Event event) {
        if (Build.VERSION.SDK_INT >= 37) {
            return (event.g().equals("crash") || event.g().equals("ndk-crash")) ? (CrashlyticsReport.Session.Event) Optional.of(this.f35006b.b(str, "profiling-manager-info")).filter(new jb(2)).flatMap(new aa(1)).map(new kb(event, 2)).orElse(event) : event;
        }
        return event;
    }

    public final ArrayList c() {
        ArrayList arrayList = new ArrayList();
        FileStore fileStore = this.f35006b;
        arrayList.addAll(FileStore.e(fileStore.f35012f.listFiles()));
        arrayList.addAll(FileStore.e(fileStore.g.listFiles()));
        x5 x5Var = f35003h;
        Collections.sort(arrayList, x5Var);
        List listE = FileStore.e(fileStore.f35011e.listFiles());
        Collections.sort(listE, x5Var);
        arrayList.addAll(listE);
        return arrayList;
    }

    public final NavigableSet d() {
        return new TreeSet(FileStore.e(this.f35006b.d.list())).descendingSet();
    }

    public final void e(CrashlyticsReport.Session.Event event, String str, boolean z) {
        FileStore fileStore = this.f35006b;
        int i2 = this.f35007c.b().f35036a.f35044a;
        g.getClass();
        try {
            g(fileStore.b(str, fc.h(MvelScriptManager.VAR_EVENT, String.format(Locale.US, "%010d", Integer.valueOf(this.f35005a.getAndIncrement())), z ? "_" : "")), CrashlyticsReportJsonTransform.f34994a.encode(event));
        } catch (IOException unused) {
            Logger.f34483b.a(5);
        }
        tq tqVar = new tq(2);
        fileStore.getClass();
        File file = new File(fileStore.d, str);
        file.mkdirs();
        List<File> listE = FileStore.e(file.listFiles(tqVar));
        Collections.sort(listE, new x5(6));
        int size = listE.size();
        for (File file2 : listE) {
            if (size <= i2) {
                return;
            }
            FileStore.d(file2);
            size--;
        }
    }
}
