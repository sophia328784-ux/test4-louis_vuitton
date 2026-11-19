package com.google.firebase.crashlytics.internal.settings;

import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.persistence.FileStore;
import java.io.File;
import java.io.FileInputStream;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class CachedSettingsIo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final File f35032a;

    public CachedSettingsIo(FileStore fileStore) {
        fileStore.getClass();
        this.f35032a = new File(fileStore.f35010c, "com.crashlytics.settings.json");
    }

    public final JSONObject a() throws Throwable {
        FileInputStream fileInputStream;
        JSONObject jSONObject;
        Logger logger = Logger.f34483b;
        logger.a(3);
        FileInputStream fileInputStream2 = null;
        try {
            File file = this.f35032a;
            if (file.exists()) {
                fileInputStream = new FileInputStream(file);
                try {
                    try {
                        jSONObject = new JSONObject(CommonUtils.j(fileInputStream));
                        fileInputStream2 = fileInputStream;
                    } catch (Exception unused) {
                        Logger.f34483b.b();
                        CommonUtils.b(fileInputStream);
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    fileInputStream2 = fileInputStream;
                    CommonUtils.b(fileInputStream2);
                    throw th;
                }
            } else {
                logger.a(2);
                jSONObject = null;
            }
            CommonUtils.b(fileInputStream2);
            return jSONObject;
        } catch (Exception unused2) {
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            CommonUtils.b(fileInputStream2);
            throw th;
        }
    }
}
