package com.google.firebase.installations.local;

import com.google.firebase.FirebaseApp;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class PersistedInstallation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public File f35190a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FirebaseApp f35191b;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class RegistrationStatus {
        private static final /* synthetic */ RegistrationStatus[] $VALUES;
        public static final RegistrationStatus ATTEMPT_MIGRATION;
        public static final RegistrationStatus NOT_GENERATED;
        public static final RegistrationStatus REGISTERED;
        public static final RegistrationStatus REGISTER_ERROR;
        public static final RegistrationStatus UNREGISTERED;

        static {
            RegistrationStatus registrationStatus = new RegistrationStatus("ATTEMPT_MIGRATION", 0);
            ATTEMPT_MIGRATION = registrationStatus;
            RegistrationStatus registrationStatus2 = new RegistrationStatus("NOT_GENERATED", 1);
            NOT_GENERATED = registrationStatus2;
            RegistrationStatus registrationStatus3 = new RegistrationStatus("UNREGISTERED", 2);
            UNREGISTERED = registrationStatus3;
            RegistrationStatus registrationStatus4 = new RegistrationStatus("REGISTERED", 3);
            REGISTERED = registrationStatus4;
            RegistrationStatus registrationStatus5 = new RegistrationStatus("REGISTER_ERROR", 4);
            REGISTER_ERROR = registrationStatus5;
            $VALUES = new RegistrationStatus[]{registrationStatus, registrationStatus2, registrationStatus3, registrationStatus4, registrationStatus5};
        }

        public static RegistrationStatus valueOf(String str) {
            return (RegistrationStatus) Enum.valueOf(RegistrationStatus.class, str);
        }

        public static RegistrationStatus[] values() {
            return (RegistrationStatus[]) $VALUES.clone();
        }
    }

    public PersistedInstallation(FirebaseApp firebaseApp) {
        this.f35191b = firebaseApp;
    }

    public final File a() {
        if (this.f35190a == null) {
            synchronized (this) {
                try {
                    if (this.f35190a == null) {
                        String str = "PersistedInstallation." + this.f35191b.e() + ".json";
                        FirebaseApp firebaseApp = this.f35191b;
                        firebaseApp.a();
                        File file = new File(firebaseApp.f34330a.getNoBackupFilesDir(), str);
                        this.f35190a = file;
                        if (file.exists()) {
                            return this.f35190a;
                        }
                        FirebaseApp firebaseApp2 = this.f35191b;
                        firebaseApp2.a();
                        File file2 = new File(firebaseApp2.f34330a.getFilesDir(), str);
                        if (file2.exists() && !file2.renameTo(this.f35190a)) {
                            new IOException("Unable to move the file from back up to non back up directory");
                            return file2;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f35190a;
    }

    public final void b(PersistedInstallationEntry persistedInstallationEntry) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("Fid", persistedInstallationEntry.c());
            jSONObject.put("Status", persistedInstallationEntry.f().ordinal());
            jSONObject.put("AuthToken", persistedInstallationEntry.a());
            jSONObject.put("RefreshToken", persistedInstallationEntry.e());
            jSONObject.put("TokenCreationEpochInSecs", persistedInstallationEntry.g());
            jSONObject.put("ExpiresInSecs", persistedInstallationEntry.b());
            jSONObject.put("FisError", persistedInstallationEntry.d());
            FirebaseApp firebaseApp = this.f35191b;
            firebaseApp.a();
            File fileCreateTempFile = File.createTempFile("PersistedInstallation", "tmp", firebaseApp.f34330a.getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes("UTF-8"));
            fileOutputStream.close();
            if (fileCreateTempFile.renameTo(a())) {
            } else {
                throw new IOException("unable to rename the tmpfile to PersistedInstallation");
            }
        } catch (IOException | JSONException unused) {
        }
    }

    public final PersistedInstallationEntry c() {
        JSONObject jSONObject;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        try {
            FileInputStream fileInputStream = new FileInputStream(a());
            while (true) {
                try {
                    int i2 = fileInputStream.read(bArr, 0, 16384);
                    if (i2 < 0) {
                        break;
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
            jSONObject = new JSONObject(byteArrayOutputStream.toString());
            fileInputStream.close();
        } catch (IOException | JSONException unused) {
            jSONObject = new JSONObject();
        }
        String strOptString = jSONObject.optString("Fid", null);
        RegistrationStatus registrationStatus = RegistrationStatus.ATTEMPT_MIGRATION;
        int iOptInt = jSONObject.optInt("Status", registrationStatus.ordinal());
        String strOptString2 = jSONObject.optString("AuthToken", null);
        String strOptString3 = jSONObject.optString("RefreshToken", null);
        long jOptLong = jSONObject.optLong("TokenCreationEpochInSecs", 0L);
        long jOptLong2 = jSONObject.optLong("ExpiresInSecs", 0L);
        String strOptString4 = jSONObject.optString("FisError", null);
        int i3 = PersistedInstallationEntry.f35192a;
        AutoValue_PersistedInstallationEntry.Builder builder = new AutoValue_PersistedInstallationEntry.Builder();
        builder.g(0L);
        builder.f(registrationStatus);
        builder.c(0L);
        builder.f35180a = strOptString;
        builder.f(RegistrationStatus.values()[iOptInt]);
        builder.f35182c = strOptString2;
        builder.d = strOptString3;
        builder.g(jOptLong);
        builder.c(jOptLong2);
        builder.g = strOptString4;
        return builder.a();
    }
}
