package com.google.crypto.tink.integration.android;

import android.content.Context;
import android.preference.PreferenceManager;
import com.google.crypto.tink.BinaryKeysetReader;
import com.google.crypto.tink.KeyTemplate;
import com.google.crypto.tink.KeysetHandle;
import com.google.crypto.tink.KeysetManager;
import com.google.crypto.tink.proto.KeyStatusType;
import com.google.crypto.tink.proto.Keyset;
import com.google.crypto.tink.shaded.protobuf.ExtensionRegistryLite;
import com.google.crypto.tink.subtle.Hex;
import defpackage.az;
import defpackage.fc;
import defpackage.md;
import defpackage.v40;
import java.io.ByteArrayInputStream;
import java.io.CharConversionException;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.KeyStoreException;
import java.security.ProviderException;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidKeysetManager {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object f33968b = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public KeysetManager f33969a;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Context f33970a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f33971b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f33972c = null;
        public String d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public AndroidKeystoreAesGcm f33973e = null;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public KeyTemplate f33974f = null;
        public KeysetManager g;

        /* JADX WARN: Code duplicated, block: B:24:0x0046 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:25:0x0048 A[Catch: all -> 0x0071, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0071, blocks: (B:7:0x0008, B:9:0x0011, B:11:0x0017, B:13:0x0021, B:25:0x0048, B:26:0x004d, B:27:0x0053, B:32:0x005e, B:33:0x006d, B:34:0x006e, B:37:0x0074, B:64:0x0120, B:65:0x0134, B:40:0x007e, B:41:0x008b, B:55:0x00f4, B:44:0x00aa, B:46:0x00b7, B:48:0x00cd, B:49:0x00d0, B:50:0x00d1, B:61:0x00fd, B:63:0x010a, B:69:0x0138, B:70:0x013b, B:52:0x00d3, B:54:0x00e0, B:58:0x00f8, B:59:0x00fb, B:60:0x00fc, B:16:0x0029, B:18:0x002e, B:19:0x003b, B:12:0x001c, B:20:0x003c, B:62:0x0102), top: B:80:0x0008, outer: #10, inners: #1, #2, #4, #5, #8, #9, #11 }] */
        /* JADX WARN: Code duplicated, block: B:39:0x007c A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:61:0x00fd A[Catch: all -> 0x0071, TRY_LEAVE, TryCatch #0 {all -> 0x0071, blocks: (B:7:0x0008, B:9:0x0011, B:11:0x0017, B:13:0x0021, B:25:0x0048, B:26:0x004d, B:27:0x0053, B:32:0x005e, B:33:0x006d, B:34:0x006e, B:37:0x0074, B:64:0x0120, B:65:0x0134, B:40:0x007e, B:41:0x008b, B:55:0x00f4, B:44:0x00aa, B:46:0x00b7, B:48:0x00cd, B:49:0x00d0, B:50:0x00d1, B:61:0x00fd, B:63:0x010a, B:69:0x0138, B:70:0x013b, B:52:0x00d3, B:54:0x00e0, B:58:0x00f8, B:59:0x00fb, B:60:0x00fc, B:16:0x0029, B:18:0x002e, B:19:0x003b, B:12:0x001c, B:20:0x003c, B:62:0x0102), top: B:80:0x0008, outer: #10, inners: #1, #2, #4, #5, #8, #9, #11 }] */
        /* JADX WARN: Code duplicated, block: B:94:0x007e A[EXC_TOP_SPLITTER, SYNTHETIC] */
        public final synchronized AndroidKeysetManager a() {
            byte[] bArrA;
            String str;
            KeysetManager keysetManager;
            ByteArrayInputStream byteArrayInputStream;
            AndroidKeysetManager androidKeysetManager;
            try {
                if (this.f33971b == null) {
                    throw new IllegalArgumentException("keysetName cannot be null");
                }
                synchronized (AndroidKeysetManager.f33968b) {
                    try {
                        Context context = this.f33970a;
                        String str2 = this.f33971b;
                        String str3 = this.f33972c;
                        AndroidKeystoreAesGcm androidKeystoreAesGcmB = null;
                        if (str2 != null) {
                            Context applicationContext = context.getApplicationContext();
                            try {
                                String string = (str3 == null ? PreferenceManager.getDefaultSharedPreferences(applicationContext) : applicationContext.getSharedPreferences(str3, 0)).getString(str2, null);
                                if (string != null) {
                                    bArrA = Hex.a(string);
                                }
                                str = this.d;
                                if (bArrA == null) {
                                    if (str != null) {
                                        AndroidKeystoreKmsClient androidKeystoreKmsClient = new AndroidKeystoreKmsClient();
                                        try {
                                            boolean zC = AndroidKeystoreKmsClient.c(this.d);
                                            try {
                                                androidKeystoreAesGcmB = androidKeystoreKmsClient.b(this.d);
                                            } catch (GeneralSecurityException | ProviderException e2) {
                                                if (!zC) {
                                                    throw new KeyStoreException(fc.h("the master key ", this.d, " exists but is unusable"), e2);
                                                }
                                            }
                                        } catch (GeneralSecurityException | ProviderException unused) {
                                        }
                                        this.f33973e = androidKeystoreAesGcmB;
                                    }
                                    this.g = b();
                                } else if (str != null) {
                                    try {
                                        this.f33973e = new AndroidKeystoreKmsClient().b(this.d);
                                        try {
                                            keysetManager = new KeysetManager((Keyset.Builder) KeysetHandle.d(new BinaryKeysetReader(new ByteArrayInputStream(bArrA)), this.f33973e).f33853a.b());
                                        } catch (IOException | GeneralSecurityException e3) {
                                            try {
                                                ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(bArrA);
                                                try {
                                                    Keyset keysetO = Keyset.O(byteArrayInputStream2, ExtensionRegistryLite.b());
                                                    byteArrayInputStream2.close();
                                                    keysetManager = new KeysetManager((Keyset.Builder) KeysetHandle.a(keysetO).f33853a.b());
                                                } catch (Throwable th) {
                                                    byteArrayInputStream2.close();
                                                    throw th;
                                                }
                                            } catch (IOException unused2) {
                                                throw e3;
                                            }
                                        }
                                    } catch (GeneralSecurityException | ProviderException e4) {
                                        try {
                                            ByteArrayInputStream byteArrayInputStream3 = new ByteArrayInputStream(bArrA);
                                            try {
                                                Keyset keysetO2 = Keyset.O(byteArrayInputStream3, ExtensionRegistryLite.b());
                                                byteArrayInputStream3.close();
                                                keysetManager = new KeysetManager((Keyset.Builder) KeysetHandle.a(keysetO2).f33853a.b());
                                            } catch (Throwable th2) {
                                                byteArrayInputStream3.close();
                                                throw th2;
                                            }
                                        } catch (IOException unused3) {
                                            throw e4;
                                        }
                                    }
                                    this.g = keysetManager;
                                } else {
                                    byteArrayInputStream = new ByteArrayInputStream(bArrA);
                                    try {
                                        Keyset keysetO3 = Keyset.O(byteArrayInputStream, ExtensionRegistryLite.b());
                                        byteArrayInputStream.close();
                                        this.g = new KeysetManager((Keyset.Builder) KeysetHandle.a(keysetO3).f33853a.b());
                                    } catch (Throwable th3) {
                                        byteArrayInputStream.close();
                                        throw th3;
                                    }
                                }
                                androidKeysetManager = new AndroidKeysetManager();
                                new SharedPrefKeysetWriter(this.f33970a, this.f33971b, this.f33972c);
                                androidKeysetManager.f33969a = this.g;
                            } catch (ClassCastException | IllegalArgumentException unused4) {
                                throw new CharConversionException(fc.h("can't read keyset; the pref value ", str2, " is not a valid hex string"));
                            }
                        } else {
                            md.n("keysetName cannot be null");
                        }
                        bArrA = null;
                        str = this.d;
                        if (bArrA == null) {
                            if (str != null) {
                                AndroidKeystoreKmsClient androidKeystoreKmsClient2 = new AndroidKeystoreKmsClient();
                                boolean zC2 = AndroidKeystoreKmsClient.c(this.d);
                                androidKeystoreAesGcmB = androidKeystoreKmsClient2.b(this.d);
                                this.f33973e = androidKeystoreAesGcmB;
                            }
                            this.g = b();
                        } else if (str != null) {
                            this.f33973e = new AndroidKeystoreKmsClient().b(this.d);
                            keysetManager = new KeysetManager((Keyset.Builder) KeysetHandle.d(new BinaryKeysetReader(new ByteArrayInputStream(bArrA)), this.f33973e).f33853a.b());
                            this.g = keysetManager;
                        } else {
                            byteArrayInputStream = new ByteArrayInputStream(bArrA);
                            Keyset keysetO4 = Keyset.O(byteArrayInputStream, ExtensionRegistryLite.b());
                            byteArrayInputStream.close();
                            this.g = new KeysetManager((Keyset.Builder) KeysetHandle.a(keysetO4).f33853a.b());
                        }
                        androidKeysetManager = new AndroidKeysetManager();
                        new SharedPrefKeysetWriter(this.f33970a, this.f33971b, this.f33972c);
                        androidKeysetManager.f33969a = this.g;
                    } catch (Throwable th4) {
                        throw th4;
                    }
                }
            } catch (Throwable th5) {
                throw th5;
            }
            return androidKeysetManager;
        }

        public final KeysetManager b() throws GeneralSecurityException, IOException {
            if (this.f33974f == null) {
                v40.j("cannot read or generate keyset");
                return null;
            }
            KeysetManager keysetManager = new KeysetManager(Keyset.N());
            KeyTemplate keyTemplate = this.f33974f;
            synchronized (keysetManager) {
                keysetManager.a(keyTemplate.f33850a);
            }
            int iL = keysetManager.c().b().J().L();
            synchronized (keysetManager) {
                for (int i2 = 0; i2 < ((Keyset) keysetManager.f33858a.f34188c).K(); i2++) {
                    Keyset.Key keyJ = ((Keyset) keysetManager.f33858a.f34188c).J(i2);
                    if (keyJ.M() == iL) {
                        if (!keyJ.O().equals(KeyStatusType.ENABLED)) {
                            throw new GeneralSecurityException("cannot set key as primary because it's not enabled: " + iL);
                        }
                        Keyset.Builder builder = keysetManager.f33858a;
                        builder.u();
                        Keyset.H((Keyset) builder.f34188c, iL);
                    }
                }
                throw new GeneralSecurityException("key not found: " + iL);
            }
            SharedPrefKeysetWriter sharedPrefKeysetWriter = new SharedPrefKeysetWriter(this.f33970a, this.f33971b, this.f33972c);
            if (this.f33973e != null) {
                keysetManager.c().e(sharedPrefKeysetWriter, this.f33973e);
                return keysetManager;
            }
            if (sharedPrefKeysetWriter.f33981a.putString(sharedPrefKeysetWriter.f33982b, Hex.b(keysetManager.c().f33853a.toByteArray())).commit()) {
                return keysetManager;
            }
            az.o("Failed to write to SharedPreferences");
            return null;
        }

        public final void c(String str) {
            if (str.startsWith("android-keystore://")) {
                this.d = str;
            } else {
                md.n("key URI must start with android-keystore://");
            }
        }
    }
}
