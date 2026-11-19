package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.persistence.FileStore;
import com.google.firebase.sessions.api.SessionSubscriber;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class CrashlyticsAppQualitySessionsSubscriber implements SessionSubscriber {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DataCollectionArbiter f34516a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CrashlyticsAppQualitySessionsStore f34517b;

    public CrashlyticsAppQualitySessionsSubscriber(DataCollectionArbiter dataCollectionArbiter, FileStore fileStore) {
        this.f34516a = dataCollectionArbiter;
        this.f34517b = new CrashlyticsAppQualitySessionsStore(fileStore);
    }

    @Override // com.google.firebase.sessions.api.SessionSubscriber
    public final boolean a() {
        return this.f34516a.a();
    }

    @Override // com.google.firebase.sessions.api.SessionSubscriber
    public final SessionSubscriber.Name b() {
        return SessionSubscriber.Name.CRASHLYTICS;
    }

    @Override // com.google.firebase.sessions.api.SessionSubscriber
    public final void c(SessionSubscriber.SessionDetails sessionDetails) {
        Logger logger = Logger.f34483b;
        Objects.toString(sessionDetails);
        logger.a(3);
        CrashlyticsAppQualitySessionsStore crashlyticsAppQualitySessionsStore = this.f34517b;
        String str = sessionDetails.f35554a;
        synchronized (crashlyticsAppQualitySessionsStore) {
            if (!Objects.equals(crashlyticsAppQualitySessionsStore.f34515c, str)) {
                FileStore fileStore = crashlyticsAppQualitySessionsStore.f34513a;
                String str2 = crashlyticsAppQualitySessionsStore.f34514b;
                if (str2 != null && str != null) {
                    try {
                        fileStore.b(str2, "aqs.".concat(str)).createNewFile();
                    } catch (IOException unused) {
                        Logger.f34483b.a(5);
                    }
                }
                crashlyticsAppQualitySessionsStore.f34515c = str;
            }
        }
    }

    public final void d(String str) {
        CrashlyticsAppQualitySessionsStore crashlyticsAppQualitySessionsStore = this.f34517b;
        synchronized (crashlyticsAppQualitySessionsStore) {
            if (!Objects.equals(crashlyticsAppQualitySessionsStore.f34514b, str)) {
                FileStore fileStore = crashlyticsAppQualitySessionsStore.f34513a;
                String str2 = crashlyticsAppQualitySessionsStore.f34515c;
                if (str != null && str2 != null) {
                    try {
                        fileStore.b(str, "aqs.".concat(str2)).createNewFile();
                    } catch (IOException unused) {
                        Logger.f34483b.a(5);
                    }
                }
                crashlyticsAppQualitySessionsStore.f34514b = str;
            }
        }
    }
}
