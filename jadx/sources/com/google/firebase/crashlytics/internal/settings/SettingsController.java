package com.google.firebase.crashlytics.internal.settings;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.android.gms.tasks.zzw;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.common.DataCollectionArbiter;
import com.google.firebase.crashlytics.internal.common.DeliveryMechanism;
import com.google.firebase.crashlytics.internal.common.IdManager;
import com.google.firebase.crashlytics.internal.common.SystemCurrentTimeProvider;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsTasks;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import com.google.firebase.crashlytics.internal.network.HttpGetRequest;
import com.google.firebase.crashlytics.internal.network.HttpRequestFactory;
import com.google.firebase.crashlytics.internal.network.HttpResponse;
import com.google.firebase.crashlytics.internal.persistence.FileStore;
import defpackage.fc;
import defpackage.tr;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class SettingsController implements SettingsProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f35046a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SettingsRequest f35047b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SettingsJsonParser f35048c;
    public final SystemCurrentTimeProvider d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CachedSettingsIo f35049e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final DefaultSettingsSpiCall f35050f;
    public final DataCollectionArbiter g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AtomicReference f35051h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicReference f35052i;

    /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.settings.SettingsController$1, reason: invalid class name */
    class AnonymousClass1 implements SuccessContinuation<Void, Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ CrashlyticsWorkers f35053a;

        public AnonymousClass1(CrashlyticsWorkers crashlyticsWorkers) {
            this.f35053a = crashlyticsWorkers;
        }

        @Override // com.google.android.gms.tasks.SuccessContinuation
        public final Task a(Object obj) throws Throwable {
            FileWriter fileWriter;
            JSONObject jSONObject = (JSONObject) this.f35053a.f34592c.f34588b.submit(new Callable() { // from class: com.google.firebase.crashlytics.internal.settings.a
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    SettingsController settingsController = SettingsController.this;
                    DefaultSettingsSpiCall defaultSettingsSpiCall = settingsController.f35050f;
                    SettingsRequest settingsRequest = settingsController.f35047b;
                    Logger logger = defaultSettingsSpiCall.f35035c;
                    CrashlyticsWorkers.b();
                    JSONObject jSONObject2 = null;
                    try {
                        HashMap mapB = DefaultSettingsSpiCall.b(settingsRequest);
                        HttpRequestFactory httpRequestFactory = defaultSettingsSpiCall.f35034b;
                        String str = defaultSettingsSpiCall.f35033a;
                        httpRequestFactory.getClass();
                        HttpGetRequest httpGetRequest = new HttpGetRequest(str, mapB);
                        httpGetRequest.c("User-Agent", "Crashlytics Android SDK/20.1.0");
                        httpGetRequest.c("X-CRASHLYTICS-DEVELOPER-TOKEN", "470fa2b4ae81cd56ecbcda9735803434cec591fa");
                        DefaultSettingsSpiCall.a(httpGetRequest, settingsRequest);
                        logger.a(3);
                        mapB.toString();
                        logger.a(2);
                        HttpResponse httpResponseB = httpGetRequest.b();
                        int i2 = httpResponseB.f34999a;
                        logger.a(2);
                        if (i2 == 200 || i2 == 201 || i2 == 202 || i2 == 203) {
                            try {
                                jSONObject2 = new JSONObject(httpResponseB.f35000b);
                            } catch (Exception unused) {
                                logger.a(5);
                                logger.a(5);
                            }
                        } else {
                            logger.b();
                        }
                    } catch (IOException unused2) {
                        logger.b();
                    }
                    return jSONObject2;
                }
            }).get();
            FileWriter fileWriter2 = null;
            if (jSONObject != null) {
                SettingsController settingsController = SettingsController.this;
                Settings settingsA = settingsController.f35048c.a(jSONObject);
                CachedSettingsIo cachedSettingsIo = settingsController.f35049e;
                long j2 = settingsA.f35038c;
                cachedSettingsIo.getClass();
                Logger.f34483b.a(2);
                try {
                    jSONObject.put("expires_at", j2);
                    fileWriter = new FileWriter(cachedSettingsIo.f35032a);
                    try {
                        try {
                            fileWriter.write(jSONObject.toString());
                            fileWriter.flush();
                        } catch (Exception unused) {
                            Logger.f34483b.b();
                        }
                    } catch (Throwable th) {
                        th = th;
                        fileWriter2 = fileWriter;
                        CommonUtils.b(fileWriter2);
                        throw th;
                    }
                } catch (Exception unused2) {
                    fileWriter = null;
                } catch (Throwable th2) {
                    th = th2;
                    CommonUtils.b(fileWriter2);
                    throw th;
                }
                CommonUtils.b(fileWriter);
                Logger logger = Logger.f34483b;
                jSONObject.toString();
                logger.a(3);
                String str = settingsController.f35047b.f35060f;
                SharedPreferences.Editor editorEdit = settingsController.f35046a.getSharedPreferences("com.google.firebase.crashlytics", 0).edit();
                editorEdit.putString("existing_instance_identifier", str);
                editorEdit.apply();
                settingsController.f35051h.set(settingsA);
                ((TaskCompletionSource) settingsController.f35052i.get()).d(settingsA);
            }
            return Tasks.f(null);
        }
    }

    public SettingsController(Context context, SettingsRequest settingsRequest, SystemCurrentTimeProvider systemCurrentTimeProvider, SettingsJsonParser settingsJsonParser, CachedSettingsIo cachedSettingsIo, DefaultSettingsSpiCall defaultSettingsSpiCall, DataCollectionArbiter dataCollectionArbiter) {
        AtomicReference atomicReference = new AtomicReference();
        this.f35051h = atomicReference;
        this.f35052i = new AtomicReference(new TaskCompletionSource());
        this.f35046a = context;
        this.f35047b = settingsRequest;
        this.d = systemCurrentTimeProvider;
        this.f35048c = settingsJsonParser;
        this.f35049e = cachedSettingsIo;
        this.f35050f = defaultSettingsSpiCall;
        this.g = dataCollectionArbiter;
        atomicReference.set(DefaultSettingsJsonTransform.b(systemCurrentTimeProvider));
    }

    public static SettingsController c(Context context, String str, IdManager idManager, HttpRequestFactory httpRequestFactory, String str2, String str3, FileStore fileStore, DataCollectionArbiter dataCollectionArbiter) {
        String strD = idManager.d();
        SystemCurrentTimeProvider systemCurrentTimeProvider = new SystemCurrentTimeProvider();
        SettingsJsonParser settingsJsonParser = new SettingsJsonParser(systemCurrentTimeProvider);
        CachedSettingsIo cachedSettingsIo = new CachedSettingsIo(fileStore);
        Locale locale = Locale.US;
        DefaultSettingsSpiCall defaultSettingsSpiCall = new DefaultSettingsSpiCall(fc.h("https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/", str, "/settings"), httpRequestFactory);
        String str4 = Build.MANUFACTURER;
        String str5 = IdManager.f34561h;
        String strH = tr.h(str4.replaceAll(str5, ""), "/", Build.MODEL.replaceAll(str5, ""));
        String strReplaceAll = Build.VERSION.INCREMENTAL.replaceAll(str5, "");
        String strReplaceAll2 = Build.VERSION.RELEASE.replaceAll(str5, "");
        int iE = CommonUtils.e(context, "com.google.firebase.crashlytics.mapping_file_id", "string");
        if (iE == 0) {
            iE = CommonUtils.e(context, "com.crashlytics.android.build_id", "string");
        }
        String[] strArr = {iE != 0 ? context.getResources().getString(iE) : null, str, str3, str2};
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < 4; i2++) {
            String str6 = strArr[i2];
            if (str6 != null) {
                arrayList.add(str6.replace("-", "").toLowerCase(Locale.US));
            }
        }
        Collections.sort(arrayList);
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            sb.append((String) it.next());
        }
        String string = sb.toString();
        return new SettingsController(context, new SettingsRequest(str, strH, strReplaceAll, strReplaceAll2, idManager, string.length() > 0 ? CommonUtils.i(string) : null, str3, str2, (strD != null ? DeliveryMechanism.APP_STORE : DeliveryMechanism.DEVELOPER).a()), systemCurrentTimeProvider, settingsJsonParser, cachedSettingsIo, defaultSettingsSpiCall, dataCollectionArbiter);
    }

    @Override // com.google.firebase.crashlytics.internal.settings.SettingsProvider
    public final Task a() {
        return ((TaskCompletionSource) this.f35052i.get()).f32085a;
    }

    @Override // com.google.firebase.crashlytics.internal.settings.SettingsProvider
    public final Settings b() {
        return (Settings) this.f35051h.get();
    }

    public final Settings d(SettingsCacheBehavior settingsCacheBehavior) throws Throwable {
        Settings settings = null;
        try {
            if (!SettingsCacheBehavior.SKIP_CACHE_LOOKUP.equals(settingsCacheBehavior)) {
                JSONObject jSONObjectA = this.f35049e.a();
                if (jSONObjectA != null) {
                    Settings settingsA = this.f35048c.a(jSONObjectA);
                    Logger logger = Logger.f34483b;
                    jSONObjectA.toString();
                    logger.a(3);
                    this.d.getClass();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (!SettingsCacheBehavior.IGNORE_CACHE_EXPIRATION.equals(settingsCacheBehavior) && settingsA.f35038c < jCurrentTimeMillis) {
                        logger.a(2);
                        return null;
                    }
                    try {
                        logger.a(2);
                        return settingsA;
                    } catch (Exception unused) {
                        settings = settingsA;
                        Logger.f34483b.b();
                        return settings;
                    }
                }
                Logger.f34483b.a(3);
            }
            return null;
        } catch (Exception unused2) {
        }
    }

    public final Task e(CrashlyticsWorkers crashlyticsWorkers) throws Throwable {
        zzw zzwVar;
        Settings settingsD;
        SettingsCacheBehavior settingsCacheBehavior = SettingsCacheBehavior.USE_CACHE;
        AtomicReference atomicReference = this.f35052i;
        AtomicReference atomicReference2 = this.f35051h;
        if (this.f35046a.getSharedPreferences("com.google.firebase.crashlytics", 0).getString("existing_instance_identifier", "").equals(this.f35047b.f35060f) && (settingsD = d(settingsCacheBehavior)) != null) {
            atomicReference2.set(settingsD);
            ((TaskCompletionSource) atomicReference.get()).d(settingsD);
            return Tasks.f(null);
        }
        Settings settingsD2 = d(SettingsCacheBehavior.IGNORE_CACHE_EXPIRATION);
        if (settingsD2 != null) {
            atomicReference2.set(settingsD2);
            ((TaskCompletionSource) atomicReference.get()).d(settingsD2);
        }
        DataCollectionArbiter dataCollectionArbiter = this.g;
        zzw zzwVar2 = dataCollectionArbiter.g.f32085a;
        synchronized (dataCollectionArbiter.f34555c) {
            zzwVar = dataCollectionArbiter.d.f32085a;
        }
        return CrashlyticsTasks.a(zzwVar2, zzwVar).m(crashlyticsWorkers.f34590a, new AnonymousClass1(crashlyticsWorkers));
    }
}
