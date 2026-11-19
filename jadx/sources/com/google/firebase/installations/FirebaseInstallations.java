package com.google.firebase.installations;

import android.text.TextUtils;
import android.util.Base64;
import androidx.datastore.preferences.core.Preferences;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.android.gms.tasks.zzw;
import com.google.firebase.FirebaseApp;
import com.google.firebase.components.Lazy;
import com.google.firebase.datastorage.JavaDataStorage;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.internal.FidListener;
import com.google.firebase.installations.internal.FidListenerHandle;
import com.google.firebase.installations.local.IidStore;
import com.google.firebase.installations.local.PersistedInstallation;
import com.google.firebase.installations.local.PersistedInstallationEntry;
import com.google.firebase.installations.remote.FirebaseInstallationServiceClient;
import com.google.firebase.installations.remote.InstallationResponse;
import com.google.firebase.installations.remote.TokenResult;
import com.google.firebase.installations.time.SystemClock;
import defpackage.bz;
import defpackage.cz;
import defpackage.fc;
import defpackage.gn;
import java.io.IOException;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class FirebaseInstallations implements FirebaseInstallationsApi {
    public static final Object m = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FirebaseApp f35154a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FirebaseInstallationServiceClient f35155b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PersistedInstallation f35156c;
    public final Utils d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Lazy f35157e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RandomFidGenerator f35158f;
    public final Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ExecutorService f35159h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Executor f35160i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f35161j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final HashSet f35162k;
    public final ArrayList l;

    /* JADX INFO: renamed from: com.google.firebase.installations.FirebaseInstallations$2, reason: invalid class name */
    class AnonymousClass2 implements FidListenerHandle {
    }

    /* JADX INFO: renamed from: com.google.firebase.installations.FirebaseInstallations$3, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass3 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f35164a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f35165b;

        static {
            int[] iArr = new int[TokenResult.ResponseCode.values().length];
            f35165b = iArr;
            try {
                iArr[TokenResult.ResponseCode.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f35165b[TokenResult.ResponseCode.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f35165b[TokenResult.ResponseCode.AUTH_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[InstallationResponse.ResponseCode.values().length];
            f35164a = iArr2;
            try {
                iArr2[InstallationResponse.ResponseCode.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f35164a[InstallationResponse.ResponseCode.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    static {
        new ThreadFactory() { // from class: com.google.firebase.installations.FirebaseInstallations.1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final AtomicInteger f35163b = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return new Thread(runnable, String.format("firebase-installations-executor-%d", Integer.valueOf(this.f35163b.getAndIncrement())));
            }
        };
    }

    public FirebaseInstallations(FirebaseApp firebaseApp, Provider provider, ExecutorService executorService, Executor executor) {
        firebaseApp.a();
        FirebaseInstallationServiceClient firebaseInstallationServiceClient = new FirebaseInstallationServiceClient(firebaseApp.f34330a, provider);
        PersistedInstallation persistedInstallation = new PersistedInstallation(firebaseApp);
        if (SystemClock.f35213a == null) {
            Pattern pattern = Utils.f35171b;
            SystemClock.f35213a = new SystemClock();
        }
        SystemClock systemClock = SystemClock.f35213a;
        if (Utils.f35172c == null) {
            Utils.f35172c = new Utils(systemClock);
        }
        Utils utils = Utils.f35172c;
        Lazy lazy = new Lazy(new gn(firebaseApp, 1));
        RandomFidGenerator randomFidGenerator = new RandomFidGenerator();
        this.g = new Object();
        this.f35162k = new HashSet();
        this.l = new ArrayList();
        this.f35154a = firebaseApp;
        this.f35155b = firebaseInstallationServiceClient;
        this.f35156c = persistedInstallation;
        this.d = utils;
        this.f35157e = lazy;
        this.f35158f = randomFidGenerator;
        this.f35159h = executorService;
        this.f35160i = executor;
    }

    @Override // com.google.firebase.installations.FirebaseInstallationsApi
    public final Task a() {
        e();
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        GetAuthTokenListener getAuthTokenListener = new GetAuthTokenListener(this.d, taskCompletionSource);
        synchronized (this.g) {
            this.l.add(getAuthTokenListener);
        }
        zzw zzwVar = taskCompletionSource.f32085a;
        this.f35159h.execute(new bz(this, 1));
        return zzwVar;
    }

    @Override // com.google.firebase.installations.FirebaseInstallationsApi
    public final synchronized FidListenerHandle b(cz czVar) {
        this.f35162k.add(czVar);
        return new AnonymousClass2();
    }

    public final void c() {
        PersistedInstallationEntry persistedInstallationEntryC;
        synchronized (m) {
            try {
                FirebaseApp firebaseApp = this.f35154a;
                firebaseApp.a();
                CrossProcessLock crossProcessLockA = CrossProcessLock.a(firebaseApp.f34330a);
                try {
                    persistedInstallationEntryC = this.f35156c.c();
                    if (persistedInstallationEntryC.f() == PersistedInstallation.RegistrationStatus.NOT_GENERATED || persistedInstallationEntryC.f() == PersistedInstallation.RegistrationStatus.ATTEMPT_MIGRATION) {
                        String strF = f(persistedInstallationEntryC);
                        PersistedInstallation persistedInstallation = this.f35156c;
                        PersistedInstallationEntry.Builder builderI = persistedInstallationEntryC.i();
                        builderI.d(strF);
                        builderI.f(PersistedInstallation.RegistrationStatus.UNREGISTERED);
                        persistedInstallationEntryC = builderI.a();
                        persistedInstallation.b(persistedInstallationEntryC);
                    }
                    if (crossProcessLockA != null) {
                        crossProcessLockA.b();
                    }
                } catch (Throwable th) {
                    if (crossProcessLockA != null) {
                        crossProcessLockA.b();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        i(persistedInstallationEntryC);
        this.f35160i.execute(new Runnable() { // from class: com.google.firebase.installations.a
            @Override // java.lang.Runnable
            public final void run() {
                PersistedInstallationEntry persistedInstallationEntryC2;
                PersistedInstallationEntry persistedInstallationEntryG;
                FirebaseInstallations firebaseInstallations = this.f35174b;
                Object obj = FirebaseInstallations.m;
                synchronized (obj) {
                    try {
                        FirebaseApp firebaseApp2 = firebaseInstallations.f35154a;
                        firebaseApp2.a();
                        CrossProcessLock crossProcessLockA2 = CrossProcessLock.a(firebaseApp2.f34330a);
                        try {
                            persistedInstallationEntryC2 = firebaseInstallations.f35156c.c();
                            if (crossProcessLockA2 != null) {
                                crossProcessLockA2.b();
                            }
                        } catch (Throwable th3) {
                            if (crossProcessLockA2 != null) {
                                crossProcessLockA2.b();
                            }
                            throw th3;
                        }
                    } catch (Throwable th4) {
                        throw th4;
                    }
                }
                try {
                    boolean z = false;
                    if (persistedInstallationEntryC2.f() == PersistedInstallation.RegistrationStatus.REGISTER_ERROR) {
                        persistedInstallationEntryG = firebaseInstallations.g(persistedInstallationEntryC2);
                    } else {
                        if (persistedInstallationEntryC2.f() == PersistedInstallation.RegistrationStatus.UNREGISTERED) {
                            persistedInstallationEntryG = firebaseInstallations.g(persistedInstallationEntryC2);
                        } else if (!firebaseInstallations.d.a(persistedInstallationEntryC2)) {
                            return;
                        } else {
                            persistedInstallationEntryG = firebaseInstallations.d(persistedInstallationEntryC2);
                        }
                    }
                    synchronized (obj) {
                        try {
                            FirebaseApp firebaseApp3 = firebaseInstallations.f35154a;
                            firebaseApp3.a();
                            CrossProcessLock crossProcessLockA3 = CrossProcessLock.a(firebaseApp3.f34330a);
                            try {
                                firebaseInstallations.f35156c.b(persistedInstallationEntryG);
                                if (crossProcessLockA3 != null) {
                                    crossProcessLockA3.b();
                                }
                            } catch (Throwable th5) {
                                if (crossProcessLockA3 != null) {
                                    crossProcessLockA3.b();
                                }
                                throw th5;
                            }
                        } catch (Throwable th6) {
                            throw th6;
                        }
                    }
                    synchronized (firebaseInstallations) {
                        if (persistedInstallationEntryG.h() && !TextUtils.isEmpty(persistedInstallationEntryG.c())) {
                            z = !TextUtils.equals(persistedInstallationEntryC2.c(), persistedInstallationEntryG.c()) ? true : !persistedInstallationEntryC2.h();
                        }
                        if (z) {
                            Iterator it = firebaseInstallations.f35162k.iterator();
                            while (it.hasNext()) {
                                ((FidListener) it.next()).a();
                            }
                        }
                    }
                    if (persistedInstallationEntryG.h()) {
                        String strC = persistedInstallationEntryG.c();
                        synchronized (firebaseInstallations) {
                            firebaseInstallations.f35161j = strC;
                        }
                    }
                    if (persistedInstallationEntryG.f() == PersistedInstallation.RegistrationStatus.REGISTER_ERROR) {
                        firebaseInstallations.h(new FirebaseInstallationsException(FirebaseInstallationsException.Status.BAD_CONFIG));
                    } else if (persistedInstallationEntryG.f() == PersistedInstallation.RegistrationStatus.NOT_GENERATED || persistedInstallationEntryG.f() == PersistedInstallation.RegistrationStatus.ATTEMPT_MIGRATION) {
                        firebaseInstallations.h(new IOException("Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."));
                    } else {
                        firebaseInstallations.i(persistedInstallationEntryG);
                    }
                } catch (FirebaseInstallationsException e2) {
                    firebaseInstallations.h(e2);
                }
            }
        });
    }

    public final PersistedInstallationEntry d(PersistedInstallationEntry persistedInstallationEntry) throws FirebaseInstallationsException {
        FirebaseInstallationServiceClient firebaseInstallationServiceClient = this.f35155b;
        FirebaseApp firebaseApp = this.f35154a;
        firebaseApp.a();
        String str = firebaseApp.f34332c.f34345a;
        String strC = persistedInstallationEntry.c();
        FirebaseApp firebaseApp2 = this.f35154a;
        firebaseApp2.a();
        TokenResult tokenResultB = firebaseInstallationServiceClient.b(str, strC, firebaseApp2.f34332c.f34350h, persistedInstallationEntry.e());
        int i2 = AnonymousClass3.f35165b[tokenResultB.a().ordinal()];
        if (i2 == 1) {
            String strB = tokenResultB.b();
            long jC = tokenResultB.c();
            long jA = this.d.f35173a.a() / 1000;
            PersistedInstallationEntry.Builder builderI = persistedInstallationEntry.i();
            builderI.b(strB);
            builderI.c(jC);
            builderI.g(jA);
            return builderI.a();
        }
        if (i2 == 2) {
            return persistedInstallationEntry.j();
        }
        if (i2 != 3) {
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
        }
        synchronized (this) {
            this.f35161j = null;
        }
        PersistedInstallationEntry.Builder builderI2 = persistedInstallationEntry.i();
        builderI2.f(PersistedInstallation.RegistrationStatus.NOT_GENERATED);
        return builderI2.a();
    }

    public final void e() {
        FirebaseApp firebaseApp = this.f35154a;
        firebaseApp.a();
        Preconditions.f(firebaseApp.f34332c.f34346b, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        firebaseApp.a();
        Preconditions.f(firebaseApp.f34332c.f34350h, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        firebaseApp.a();
        Preconditions.f(firebaseApp.f34332c.f34345a, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        firebaseApp.a();
        String str = firebaseApp.f34332c.f34346b;
        Pattern pattern = Utils.f35171b;
        Preconditions.b(str.contains(":"), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        firebaseApp.a();
        Preconditions.b(Utils.f35171b.matcher(firebaseApp.f34332c.f34345a).matches(), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0039  */
    /* JADX WARN: Code duplicated, block: B:11:0x003b  */
    /* JADX WARN: Code duplicated, block: B:14:0x0046  */
    /* JADX WARN: Code duplicated, block: B:21:0x0064  */
    /* JADX WARN: Code duplicated, block: B:25:0x008a  */
    /* JADX WARN: Code duplicated, block: B:34:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:6:0x001c  */
    /* JADX WARN: Code duplicated, block: B:8:0x0024  */
    public final String f(PersistedInstallationEntry persistedInstallationEntry) {
        JavaDataStorage javaDataStorage;
        String strEncodeToString;
        String str;
        String str2;
        PublicKey publicKeyGeneratePublic;
        FirebaseApp firebaseApp = this.f35154a;
        firebaseApp.a();
        String str3 = firebaseApp.f34331b;
        boolean zEquals = str3.equals("CHIME_ANDROID_SDK");
        RandomFidGenerator randomFidGenerator = this.f35158f;
        if (!zEquals) {
            firebaseApp.a();
            if ("[DEFAULT]".equals(str3)) {
                if (persistedInstallationEntry.f() == PersistedInstallation.RegistrationStatus.ATTEMPT_MIGRATION) {
                    javaDataStorage = ((IidStore) this.f35157e.get()).f35188a;
                    strEncodeToString = null;
                    str = (String) javaDataStorage.c(IidStore.d, null);
                    if (str != null) {
                        strEncodeToString = str;
                    } else {
                        str2 = (String) javaDataStorage.c(IidStore.f35186c, null);
                        if (str2 != null) {
                            try {
                                publicKeyGeneratePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str2, 8)));
                            } catch (IllegalArgumentException | NoSuchAlgorithmException | InvalidKeySpecException e2) {
                                e2.toString();
                                publicKeyGeneratePublic = null;
                            }
                            if (publicKeyGeneratePublic != null) {
                                try {
                                    byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(publicKeyGeneratePublic.getEncoded());
                                    bArrDigest[0] = (byte) (((bArrDigest[0] & 15) + 112) & 255);
                                    strEncodeToString = Base64.encodeToString(bArrDigest, 0, 8, 11);
                                } catch (NoSuchAlgorithmException unused) {
                                }
                            }
                        }
                    }
                    if (TextUtils.isEmpty(strEncodeToString)) {
                        return strEncodeToString;
                    }
                    randomFidGenerator.getClass();
                    return RandomFidGenerator.a();
                }
            }
        } else if (persistedInstallationEntry.f() == PersistedInstallation.RegistrationStatus.ATTEMPT_MIGRATION) {
            javaDataStorage = ((IidStore) this.f35157e.get()).f35188a;
            strEncodeToString = null;
            str = (String) javaDataStorage.c(IidStore.d, null);
            if (str != null) {
                strEncodeToString = str;
            } else {
                str2 = (String) javaDataStorage.c(IidStore.f35186c, null);
                if (str2 != null) {
                    publicKeyGeneratePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str2, 8)));
                    if (publicKeyGeneratePublic != null) {
                        byte[] bArrDigest2 = MessageDigest.getInstance("SHA1").digest(publicKeyGeneratePublic.getEncoded());
                        bArrDigest2[0] = (byte) (((bArrDigest2[0] & 15) + 112) & 255);
                        strEncodeToString = Base64.encodeToString(bArrDigest2, 0, 8, 11);
                    }
                }
            }
            if (TextUtils.isEmpty(strEncodeToString)) {
                return strEncodeToString;
            }
            randomFidGenerator.getClass();
            return RandomFidGenerator.a();
        }
        randomFidGenerator.getClass();
        return RandomFidGenerator.a();
    }

    public final PersistedInstallationEntry g(PersistedInstallationEntry persistedInstallationEntry) throws FirebaseInstallationsException {
        String string = null;
        if (persistedInstallationEntry.c() != null && persistedInstallationEntry.c().length() == 11) {
            IidStore iidStore = (IidStore) this.f35157e.get();
            iidStore.getClass();
            for (String str : IidStore.f35187e) {
                String str2 = (String) iidStore.f35188a.c(new Preferences.Key(fc.i("|T|", iidStore.f35189b, "|", str)), null);
                if (str2 != null && !str2.isEmpty()) {
                    if (!str2.startsWith("{")) {
                        string = str2;
                        break;
                    }
                    try {
                        string = new JSONObject(str2).getString("token");
                        break;
                    } catch (JSONException unused) {
                        break;
                    }
                }
            }
        }
        FirebaseApp firebaseApp = this.f35154a;
        firebaseApp.a();
        String str3 = firebaseApp.f34332c.f34345a;
        String strC = persistedInstallationEntry.c();
        firebaseApp.a();
        String str4 = firebaseApp.f34332c.f34350h;
        firebaseApp.a();
        InstallationResponse installationResponseA = this.f35155b.a(str3, strC, str4, firebaseApp.f34332c.f34346b, string);
        int i2 = AnonymousClass3.f35164a[installationResponseA.d().ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                return persistedInstallationEntry.j();
            }
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
        }
        String strB = installationResponseA.b();
        String strC2 = installationResponseA.c();
        long jA = this.d.f35173a.a() / 1000;
        String strB2 = installationResponseA.a().b();
        long jC = installationResponseA.a().c();
        PersistedInstallationEntry.Builder builderI = persistedInstallationEntry.i();
        builderI.d(strB);
        builderI.f(PersistedInstallation.RegistrationStatus.REGISTERED);
        builderI.b(strB2);
        builderI.e(strC2);
        builderI.c(jC);
        builderI.g(jA);
        return builderI.a();
    }

    @Override // com.google.firebase.installations.FirebaseInstallationsApi
    public final Task getId() {
        String str;
        e();
        synchronized (this) {
            str = this.f35161j;
        }
        if (str != null) {
            return Tasks.f(str);
        }
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        GetIdListener getIdListener = new GetIdListener(taskCompletionSource);
        synchronized (this.g) {
            this.l.add(getIdListener);
        }
        zzw zzwVar = taskCompletionSource.f32085a;
        this.f35159h.execute(new bz(this, 0));
        return zzwVar;
    }

    public final void h(Exception exc) {
        synchronized (this.g) {
            try {
                Iterator it = this.l.iterator();
                while (it.hasNext()) {
                    if (((StateListener) it.next()).a(exc)) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void i(PersistedInstallationEntry persistedInstallationEntry) {
        synchronized (this.g) {
            try {
                Iterator it = this.l.iterator();
                while (it.hasNext()) {
                    if (((StateListener) it.next()).b(persistedInstallationEntry)) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
