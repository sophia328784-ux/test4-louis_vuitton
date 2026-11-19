package androidx.profileinstaller;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.os.Build;
import defpackage.md;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.Arrays;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public abstract class ProfileInstaller {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DiagnosticsCallback f19114a = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final DiagnosticsCallback f19115b = new AnonymousClass2();

    /* JADX INFO: renamed from: androidx.profileinstaller.ProfileInstaller$1, reason: invalid class name */
    public class AnonymousClass1 implements DiagnosticsCallback {
        @Override // androidx.profileinstaller.ProfileInstaller.DiagnosticsCallback
        public final void a(int i2, Object obj) {
        }
    }

    /* JADX INFO: renamed from: androidx.profileinstaller.ProfileInstaller$2, reason: invalid class name */
    public class AnonymousClass2 implements DiagnosticsCallback {
        @Override // androidx.profileinstaller.ProfileInstaller.DiagnosticsCallback
        public final void a(int i2, Object obj) {
            if (i2 == 6 || i2 == 7 || i2 == 8) {
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface DiagnosticCode {
    }

    public interface DiagnosticsCallback {
        void a(int i2, Object obj);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ResultCode {
    }

    public static void a(PackageInfo packageInfo, File file) {
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(new File(file, "profileinstaller_profileWrittenFor_lastUpdateTime.dat")));
            try {
                dataOutputStream.writeLong(packageInfo.lastUpdateTime);
                dataOutputStream.close();
            } catch (Throwable th) {
                try {
                    dataOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x015f A[Catch: all -> 0x0175, TRY_LEAVE, TryCatch #12 {all -> 0x0175, blocks: (B:98:0x0153, B:100:0x015f, B:111:0x0178, B:112:0x017d), top: B:256:0x0153 }] */
    /* JADX WARN: Code duplicated, block: B:111:0x0178 A[Catch: all -> 0x0175, TRY_ENTER, TryCatch #12 {all -> 0x0175, blocks: (B:98:0x0153, B:100:0x015f, B:111:0x0178, B:112:0x017d), top: B:256:0x0153 }] */
    /* JADX WARN: Code duplicated, block: B:118:0x0187 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:119:0x0189 A[Catch: IllegalStateException -> 0x016e, IOException -> 0x0170, FileNotFoundException -> 0x0173, TRY_LEAVE, TryCatch #31 {FileNotFoundException -> 0x0173, IOException -> 0x0170, IllegalStateException -> 0x016e, blocks: (B:96:0x014b, B:101:0x0169, B:119:0x0189, B:117:0x0186, B:116:0x0183), top: B:283:0x014b }] */
    /* JADX WARN: Code duplicated, block: B:126:0x019f  */
    /* JADX WARN: Code duplicated, block: B:129:0x01aa A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:136:0x01c2 A[Catch: all -> 0x01d1, TRY_LEAVE, TryCatch #30 {all -> 0x01d1, blocks: (B:134:0x01b6, B:136:0x01c2, B:145:0x01d4), top: B:274:0x01b6 }] */
    /* JADX WARN: Code duplicated, block: B:145:0x01d4 A[Catch: all -> 0x01d1, TRY_ENTER, TRY_LEAVE, TryCatch #30 {all -> 0x01d1, blocks: (B:134:0x01b6, B:136:0x01c2, B:145:0x01d4), top: B:274:0x01b6 }] */
    /* JADX WARN: Code duplicated, block: B:156:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:160:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:161:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:170:0x021c A[Catch: all -> 0x0251, TryCatch #29 {all -> 0x0251, blocks: (B:168:0x0216, B:170:0x021c, B:171:0x0220, B:173:0x0226, B:174:0x022b, B:194:0x0254, B:195:0x025b), top: B:273:0x0216, outer: #28 }] */
    /* JADX WARN: Code duplicated, block: B:173:0x0226 A[Catch: all -> 0x0251, LOOP:0: B:171:0x0220->B:173:0x0226, LOOP_END, TryCatch #29 {all -> 0x0251, blocks: (B:168:0x0216, B:170:0x021c, B:171:0x0220, B:173:0x0226, B:174:0x022b, B:194:0x0254, B:195:0x025b), top: B:273:0x0216, outer: #28 }] */
    /* JADX WARN: Code duplicated, block: B:223:0x0293  */
    /* JADX WARN: Code duplicated, block: B:226:0x029c  */
    /* JADX WARN: Code duplicated, block: B:231:0x02a6 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:233:0x02aa  */
    /* JADX WARN: Code duplicated, block: B:256:0x0153 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:273:0x0216 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:281:0x0200 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:282:0x01b1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:284:0x00e8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:285:0x022b A[EDGE_INSN: B:285:0x022b->B:174:0x022b BREAK  A[LOOP:0: B:171:0x0220->B:173:0x0226], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:41:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:55:0x00f2 A[Catch: all -> 0x0108, IllegalStateException -> 0x010c, IOException -> 0x010e, TRY_LEAVE, TryCatch #30 {IOException -> 0x010e, IllegalStateException -> 0x010c, all -> 0x0108, blocks: (B:53:0x00e8, B:55:0x00f2, B:67:0x0111, B:68:0x0116), top: B:284:0x00e8 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x0111 A[Catch: all -> 0x0108, IllegalStateException -> 0x010c, IOException -> 0x010e, TRY_ENTER, TryCatch #30 {IOException -> 0x010e, IllegalStateException -> 0x010c, all -> 0x0108, blocks: (B:53:0x00e8, B:55:0x00f2, B:67:0x0111, B:68:0x0116), top: B:284:0x00e8 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x0145  */
    public static void b(Context context, Executor executor, DiagnosticsCallback diagnosticsCallback, boolean z) {
        AssetManager assetManager;
        FileInputStream fileInputStreamA;
        byte[] bArr;
        Throwable th;
        int i2;
        DexProfileData[] dexProfileDataArr;
        DexProfileData[] dexProfileDataArr2;
        DiagnosticsCallback diagnosticsCallback2;
        DexProfileData[] dexProfileDataArr3;
        byte[] bArr2;
        byte[] bArr3;
        ByteArrayInputStream byteArrayInputStream;
        FileOutputStream fileOutputStream;
        FileChannel channel;
        FileLock fileLockTryLock;
        byte[] bArr4;
        int i3;
        boolean z2;
        ByteArrayOutputStream byteArrayOutputStream;
        DeviceProfileWriter deviceProfileWriter;
        FileInputStream fileInputStreamA2;
        boolean z3;
        boolean z4;
        Context applicationContext = context.getApplicationContext();
        String packageName = applicationContext.getPackageName();
        ApplicationInfo applicationInfo = applicationContext.getApplicationInfo();
        AssetManager assets = applicationContext.getAssets();
        String name = new File(applicationInfo.sourceDir).getName();
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
            File filesDir = context.getFilesDir();
            if (!z) {
                File file = new File(filesDir, "profileinstaller_profileWrittenFor_lastUpdateTime.dat");
                if (file.exists()) {
                    try {
                        DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
                        try {
                            long j2 = dataInputStream.readLong();
                            dataInputStream.close();
                            z4 = j2 == packageInfo.lastUpdateTime;
                            if (z4) {
                                diagnosticsCallback.a(2, null);
                            }
                        } catch (Throwable th2) {
                            try {
                                dataInputStream.close();
                                throw th2;
                            } catch (Throwable th3) {
                                th2.addSuppressed(th3);
                                throw th2;
                            }
                        }
                    } catch (IOException unused) {
                        z4 = false;
                    }
                } else {
                    z4 = false;
                }
                if (z4) {
                    context.getPackageName();
                    ProfileVerifier.c(context, false);
                    return;
                }
            }
            context.getPackageName();
            DeviceProfileWriter deviceProfileWriter2 = new DeviceProfileWriter(assets, executor, diagnosticsCallback, name, "dexopt/baseline.prof", "dexopt/baseline.profm", new File(new File("/data/misc/profiles/cur/0", packageName), "primary.prof"));
            byte[] bArr5 = deviceProfileWriter2.d;
            if (bArr5 != null) {
                File file2 = deviceProfileWriter2.f19100e;
                if (!file2.exists()) {
                    try {
                        if (file2.createNewFile()) {
                            deviceProfileWriter2.f19103i = true;
                            assetManager = deviceProfileWriter2.f19097a;
                            DiagnosticsCallback diagnosticsCallback3 = deviceProfileWriter2.f19099c;
                            fileInputStreamA = deviceProfileWriter2.a(assetManager, deviceProfileWriter2.g);
                            bArr = ProfileTranscoder.f19116a;
                            if (fileInputStreamA != null) {
                                if (Arrays.equals(bArr, Encoding.b(fileInputStreamA, 4))) {
                                    throw new IllegalStateException("Invalid magic");
                                }
                                DexProfileData[] dexProfileDataArrG = ProfileTranscoder.g(fileInputStreamA, Encoding.b(fileInputStreamA, 4), deviceProfileWriter2.f19101f);
                                fileInputStreamA.close();
                                dexProfileDataArr = dexProfileDataArrG;
                                deviceProfileWriter2.f19104j = dexProfileDataArr;
                            }
                            dexProfileDataArr2 = deviceProfileWriter2.f19104j;
                            if (dexProfileDataArr2 != null) {
                                fileInputStreamA2 = deviceProfileWriter2.a(assetManager, deviceProfileWriter2.f19102h);
                                if (fileInputStreamA2 == null) {
                                    if (fileInputStreamA2 != null) {
                                        fileInputStreamA2.close();
                                    }
                                    deviceProfileWriter = null;
                                } else {
                                    if (Arrays.equals(ProfileTranscoder.f19117b, Encoding.b(fileInputStreamA2, 4))) {
                                        throw new IllegalStateException("Invalid magic");
                                    }
                                    deviceProfileWriter2.f19104j = ProfileTranscoder.d(fileInputStreamA2, Encoding.b(fileInputStreamA2, 4), bArr5, dexProfileDataArr2);
                                    fileInputStreamA2.close();
                                    deviceProfileWriter = deviceProfileWriter2;
                                }
                                if (deviceProfileWriter != null) {
                                    deviceProfileWriter2 = deviceProfileWriter;
                                }
                            }
                            diagnosticsCallback2 = deviceProfileWriter2.f19099c;
                            dexProfileDataArr3 = deviceProfileWriter2.f19104j;
                            bArr2 = deviceProfileWriter2.d;
                            if (dexProfileDataArr3 != null) {
                                if (deviceProfileWriter2.f19103i) {
                                    md.k("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                                    return;
                                }
                                byteArrayOutputStream = new ByteArrayOutputStream();
                                byteArrayOutputStream.write(bArr);
                                byteArrayOutputStream.write(bArr2);
                                if (ProfileTranscoder.i(byteArrayOutputStream, bArr2, dexProfileDataArr3)) {
                                    deviceProfileWriter2.f19105k = byteArrayOutputStream.toByteArray();
                                    byteArrayOutputStream.close();
                                    deviceProfileWriter2.f19104j = null;
                                } else {
                                    diagnosticsCallback2.a(5, null);
                                    deviceProfileWriter2.f19104j = null;
                                    byteArrayOutputStream.close();
                                }
                            }
                            bArr3 = deviceProfileWriter2.f19105k;
                            if (bArr3 != null) {
                                if (deviceProfileWriter2.f19103i) {
                                    md.k("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                                    return;
                                }
                                byteArrayInputStream = new ByteArrayInputStream(bArr3);
                                fileOutputStream = new FileOutputStream(deviceProfileWriter2.f19100e);
                                channel = fileOutputStream.getChannel();
                                fileLockTryLock = channel.tryLock();
                                if (fileLockTryLock != null) {
                                    if (fileLockTryLock.isValid()) {
                                        bArr4 = new byte[512];
                                        while (true) {
                                            i3 = byteArrayInputStream.read(bArr4);
                                            if (i3 > 0) {
                                                break;
                                                break;
                                            }
                                            fileOutputStream.write(bArr4, 0, i3);
                                        }
                                        deviceProfileWriter2.b(1, null);
                                        fileLockTryLock.close();
                                        channel.close();
                                        fileOutputStream.close();
                                        byteArrayInputStream.close();
                                        deviceProfileWriter2.f19105k = null;
                                        deviceProfileWriter2.f19104j = null;
                                        z2 = true;
                                    }
                                }
                                throw new IOException("Unable to acquire a lock on the underlying file channel.");
                            }
                            z2 = false;
                            if (z2) {
                                a(packageInfo, filesDir);
                            }
                        } else {
                            deviceProfileWriter2.b(4, null);
                        }
                    } catch (IOException unused2) {
                        deviceProfileWriter2.b(4, null);
                    }
                } else if (file2.canWrite()) {
                    deviceProfileWriter2.f19103i = true;
                    assetManager = deviceProfileWriter2.f19097a;
                    DiagnosticsCallback diagnosticsCallback4 = deviceProfileWriter2.f19099c;
                    try {
                        fileInputStreamA = deviceProfileWriter2.a(assetManager, deviceProfileWriter2.g);
                    } catch (FileNotFoundException e2) {
                        diagnosticsCallback4.a(6, e2);
                        fileInputStreamA = null;
                    } catch (IOException e3) {
                        diagnosticsCallback4.a(7, e3);
                        fileInputStreamA = null;
                    }
                    bArr = ProfileTranscoder.f19116a;
                    if (fileInputStreamA != null) {
                        try {
                            if (Arrays.equals(bArr, Encoding.b(fileInputStreamA, 4))) {
                                throw new IllegalStateException("Invalid magic");
                            }
                            DexProfileData[] dexProfileDataArrG2 = ProfileTranscoder.g(fileInputStreamA, Encoding.b(fileInputStreamA, 4), deviceProfileWriter2.f19101f);
                            try {
                                fileInputStreamA.close();
                            } catch (IOException e4) {
                                diagnosticsCallback4.a(7, e4);
                            }
                            dexProfileDataArr = dexProfileDataArrG2;
                            deviceProfileWriter2.f19104j = dexProfileDataArr;
                        } catch (IOException e5) {
                            i2 = 7;
                            try {
                                diagnosticsCallback4.a(7, e5);
                                try {
                                    fileInputStreamA.close();
                                } catch (IOException e6) {
                                    e = e6;
                                    diagnosticsCallback4.a(i2, e);
                                    dexProfileDataArr = null;
                                    deviceProfileWriter2.f19104j = dexProfileDataArr;
                                    dexProfileDataArr2 = deviceProfileWriter2.f19104j;
                                    if (dexProfileDataArr2 != null) {
                                        try {
                                            fileInputStreamA2 = deviceProfileWriter2.a(assetManager, deviceProfileWriter2.f19102h);
                                            if (fileInputStreamA2 == null) {
                                                try {
                                                    if (Arrays.equals(ProfileTranscoder.f19117b, Encoding.b(fileInputStreamA2, 4))) {
                                                        throw new IllegalStateException("Invalid magic");
                                                    }
                                                    deviceProfileWriter2.f19104j = ProfileTranscoder.d(fileInputStreamA2, Encoding.b(fileInputStreamA2, 4), bArr5, dexProfileDataArr2);
                                                    fileInputStreamA2.close();
                                                    deviceProfileWriter = deviceProfileWriter2;
                                                } catch (Throwable th4) {
                                                    try {
                                                        fileInputStreamA2.close();
                                                        throw th4;
                                                    } catch (Throwable th5) {
                                                        th4.addSuppressed(th5);
                                                        throw th4;
                                                    }
                                                }
                                            } else {
                                                if (fileInputStreamA2 != null) {
                                                    fileInputStreamA2.close();
                                                }
                                                deviceProfileWriter = null;
                                            }
                                        } catch (FileNotFoundException e7) {
                                            diagnosticsCallback4.a(9, e7);
                                        } catch (IOException e8) {
                                            diagnosticsCallback4.a(7, e8);
                                        } catch (IllegalStateException e9) {
                                            deviceProfileWriter2.f19104j = null;
                                            diagnosticsCallback4.a(8, e9);
                                        }
                                        if (deviceProfileWriter != null) {
                                            deviceProfileWriter2 = deviceProfileWriter;
                                        }
                                    }
                                    diagnosticsCallback2 = deviceProfileWriter2.f19099c;
                                    dexProfileDataArr3 = deviceProfileWriter2.f19104j;
                                    bArr2 = deviceProfileWriter2.d;
                                    if (dexProfileDataArr3 != null) {
                                        if (deviceProfileWriter2.f19103i) {
                                            md.k("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                                            return;
                                        }
                                        try {
                                            byteArrayOutputStream = new ByteArrayOutputStream();
                                            try {
                                                byteArrayOutputStream.write(bArr);
                                                byteArrayOutputStream.write(bArr2);
                                                if (ProfileTranscoder.i(byteArrayOutputStream, bArr2, dexProfileDataArr3)) {
                                                    diagnosticsCallback2.a(5, null);
                                                    deviceProfileWriter2.f19104j = null;
                                                    byteArrayOutputStream.close();
                                                } else {
                                                    deviceProfileWriter2.f19105k = byteArrayOutputStream.toByteArray();
                                                    byteArrayOutputStream.close();
                                                    deviceProfileWriter2.f19104j = null;
                                                }
                                            } catch (Throwable th6) {
                                                try {
                                                    byteArrayOutputStream.close();
                                                    throw th6;
                                                } catch (Throwable th7) {
                                                    th6.addSuppressed(th7);
                                                    throw th6;
                                                }
                                            }
                                        } catch (IOException e10) {
                                            diagnosticsCallback2.a(7, e10);
                                        } catch (IllegalStateException e11) {
                                            diagnosticsCallback2.a(8, e11);
                                        }
                                    }
                                    bArr3 = deviceProfileWriter2.f19105k;
                                    if (bArr3 != null) {
                                        z2 = false;
                                    } else {
                                        try {
                                            if (deviceProfileWriter2.f19103i) {
                                                md.k("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                                                return;
                                            }
                                            try {
                                                byteArrayInputStream = new ByteArrayInputStream(bArr3);
                                                try {
                                                    fileOutputStream = new FileOutputStream(deviceProfileWriter2.f19100e);
                                                    try {
                                                        channel = fileOutputStream.getChannel();
                                                        try {
                                                            fileLockTryLock = channel.tryLock();
                                                            if (fileLockTryLock != null) {
                                                                try {
                                                                    if (fileLockTryLock.isValid()) {
                                                                        bArr4 = new byte[512];
                                                                        while (true) {
                                                                            i3 = byteArrayInputStream.read(bArr4);
                                                                            if (i3 > 0) {
                                                                                break;
                                                                            } else {
                                                                                fileOutputStream.write(bArr4, 0, i3);
                                                                            }
                                                                        }
                                                                        deviceProfileWriter2.b(1, null);
                                                                        fileLockTryLock.close();
                                                                        channel.close();
                                                                        fileOutputStream.close();
                                                                        byteArrayInputStream.close();
                                                                        deviceProfileWriter2.f19105k = null;
                                                                        deviceProfileWriter2.f19104j = null;
                                                                        z2 = true;
                                                                    }
                                                                } catch (Throwable th8) {
                                                                    if (fileLockTryLock == null) {
                                                                        throw th8;
                                                                    }
                                                                    try {
                                                                        fileLockTryLock.close();
                                                                        throw th8;
                                                                    } catch (Throwable th9) {
                                                                        th8.addSuppressed(th9);
                                                                        throw th8;
                                                                    }
                                                                    try {
                                                                        fileOutputStream.close();
                                                                        throw th;
                                                                    } catch (Throwable th10) {
                                                                        th.addSuppressed(th10);
                                                                        throw th;
                                                                    }
                                                                }
                                                            }
                                                            throw new IOException("Unable to acquire a lock on the underlying file channel.");
                                                        } catch (Throwable th11) {
                                                            if (channel == null) {
                                                                throw th11;
                                                            }
                                                            try {
                                                                channel.close();
                                                                throw th11;
                                                            } catch (Throwable th12) {
                                                                th11.addSuppressed(th12);
                                                                throw th11;
                                                            }
                                                            try {
                                                                byteArrayInputStream.close();
                                                                throw th;
                                                            } catch (Throwable th13) {
                                                                th.addSuppressed(th13);
                                                                throw th;
                                                            }
                                                        }
                                                    } catch (Throwable th14) {
                                                        fileOutputStream.close();
                                                        throw th14;
                                                    }
                                                } catch (Throwable th15) {
                                                    byteArrayInputStream.close();
                                                    throw th15;
                                                }
                                            } catch (FileNotFoundException e12) {
                                                deviceProfileWriter2.b(6, e12);
                                                deviceProfileWriter2.f19105k = null;
                                                deviceProfileWriter2.f19104j = null;
                                                z2 = false;
                                            } catch (IOException e13) {
                                                deviceProfileWriter2.b(7, e13);
                                                deviceProfileWriter2.f19105k = null;
                                                deviceProfileWriter2.f19104j = null;
                                                z2 = false;
                                            }
                                        } catch (Throwable th16) {
                                            deviceProfileWriter2.f19105k = null;
                                            deviceProfileWriter2.f19104j = null;
                                            throw th16;
                                        }
                                    }
                                    if (z2) {
                                        a(packageInfo, filesDir);
                                    }
                                    if (z2) {
                                        z3 = false;
                                    } else {
                                        z3 = false;
                                    }
                                    ProfileVerifier.c(context, z3);
                                }
                                dexProfileDataArr = null;
                            } catch (Throwable th17) {
                                th = th17;
                                th = th;
                                try {
                                    fileInputStreamA.close();
                                    throw th;
                                } catch (IOException e14) {
                                    diagnosticsCallback4.a(i2, e14);
                                    throw th;
                                }
                            }
                        } catch (IllegalStateException e15) {
                            try {
                                diagnosticsCallback4.a(8, e15);
                                try {
                                    fileInputStreamA.close();
                                } catch (IOException e16) {
                                    e = e16;
                                    i2 = 7;
                                    diagnosticsCallback4.a(i2, e);
                                    dexProfileDataArr = null;
                                    deviceProfileWriter2.f19104j = dexProfileDataArr;
                                    dexProfileDataArr2 = deviceProfileWriter2.f19104j;
                                    if (dexProfileDataArr2 != null) {
                                        fileInputStreamA2 = deviceProfileWriter2.a(assetManager, deviceProfileWriter2.f19102h);
                                        if (fileInputStreamA2 == null) {
                                            if (fileInputStreamA2 != null) {
                                                fileInputStreamA2.close();
                                            }
                                            deviceProfileWriter = null;
                                        } else {
                                            if (Arrays.equals(ProfileTranscoder.f19117b, Encoding.b(fileInputStreamA2, 4))) {
                                                throw new IllegalStateException("Invalid magic");
                                            }
                                            deviceProfileWriter2.f19104j = ProfileTranscoder.d(fileInputStreamA2, Encoding.b(fileInputStreamA2, 4), bArr5, dexProfileDataArr2);
                                            fileInputStreamA2.close();
                                            deviceProfileWriter = deviceProfileWriter2;
                                        }
                                        if (deviceProfileWriter != null) {
                                            deviceProfileWriter2 = deviceProfileWriter;
                                        }
                                    }
                                    diagnosticsCallback2 = deviceProfileWriter2.f19099c;
                                    dexProfileDataArr3 = deviceProfileWriter2.f19104j;
                                    bArr2 = deviceProfileWriter2.d;
                                    if (dexProfileDataArr3 != null) {
                                        if (deviceProfileWriter2.f19103i) {
                                            md.k("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                                            return;
                                        }
                                        byteArrayOutputStream = new ByteArrayOutputStream();
                                        byteArrayOutputStream.write(bArr);
                                        byteArrayOutputStream.write(bArr2);
                                        if (ProfileTranscoder.i(byteArrayOutputStream, bArr2, dexProfileDataArr3)) {
                                            diagnosticsCallback2.a(5, null);
                                            deviceProfileWriter2.f19104j = null;
                                            byteArrayOutputStream.close();
                                        } else {
                                            deviceProfileWriter2.f19105k = byteArrayOutputStream.toByteArray();
                                            byteArrayOutputStream.close();
                                            deviceProfileWriter2.f19104j = null;
                                        }
                                    }
                                    bArr3 = deviceProfileWriter2.f19105k;
                                    if (bArr3 != null) {
                                        if (deviceProfileWriter2.f19103i) {
                                            md.k("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                                            return;
                                        }
                                        byteArrayInputStream = new ByteArrayInputStream(bArr3);
                                        fileOutputStream = new FileOutputStream(deviceProfileWriter2.f19100e);
                                        channel = fileOutputStream.getChannel();
                                        fileLockTryLock = channel.tryLock();
                                        if (fileLockTryLock != null) {
                                            if (fileLockTryLock.isValid()) {
                                                bArr4 = new byte[512];
                                                while (true) {
                                                    i3 = byteArrayInputStream.read(bArr4);
                                                    if (i3 > 0) {
                                                        break;
                                                        break;
                                                    }
                                                    fileOutputStream.write(bArr4, 0, i3);
                                                }
                                                deviceProfileWriter2.b(1, null);
                                                fileLockTryLock.close();
                                                channel.close();
                                                fileOutputStream.close();
                                                byteArrayInputStream.close();
                                                deviceProfileWriter2.f19105k = null;
                                                deviceProfileWriter2.f19104j = null;
                                                z2 = true;
                                            }
                                        }
                                        throw new IOException("Unable to acquire a lock on the underlying file channel.");
                                    }
                                    z2 = false;
                                    if (z2) {
                                        a(packageInfo, filesDir);
                                    }
                                    if (z2) {
                                        z3 = false;
                                    } else {
                                        z3 = false;
                                    }
                                    ProfileVerifier.c(context, z3);
                                }
                                dexProfileDataArr = null;
                            } catch (Throwable th18) {
                                th = th18;
                                i2 = 7;
                                th = th;
                                fileInputStreamA.close();
                                throw th;
                            }
                        } catch (Throwable th19) {
                            th = th19;
                            i2 = 7;
                            fileInputStreamA.close();
                            throw th;
                        }
                    }
                    dexProfileDataArr2 = deviceProfileWriter2.f19104j;
                    if (dexProfileDataArr2 != null && Build.VERSION.SDK_INT >= 31) {
                        fileInputStreamA2 = deviceProfileWriter2.a(assetManager, deviceProfileWriter2.f19102h);
                        if (fileInputStreamA2 == null) {
                            if (fileInputStreamA2 != null) {
                                fileInputStreamA2.close();
                            }
                            deviceProfileWriter = null;
                        } else {
                            if (Arrays.equals(ProfileTranscoder.f19117b, Encoding.b(fileInputStreamA2, 4))) {
                                throw new IllegalStateException("Invalid magic");
                            }
                            deviceProfileWriter2.f19104j = ProfileTranscoder.d(fileInputStreamA2, Encoding.b(fileInputStreamA2, 4), bArr5, dexProfileDataArr2);
                            fileInputStreamA2.close();
                            deviceProfileWriter = deviceProfileWriter2;
                        }
                        if (deviceProfileWriter != null) {
                            deviceProfileWriter2 = deviceProfileWriter;
                        }
                    }
                    diagnosticsCallback2 = deviceProfileWriter2.f19099c;
                    dexProfileDataArr3 = deviceProfileWriter2.f19104j;
                    bArr2 = deviceProfileWriter2.d;
                    if (dexProfileDataArr3 != null && bArr2 != null) {
                        if (deviceProfileWriter2.f19103i) {
                            md.k("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                            return;
                        }
                        byteArrayOutputStream = new ByteArrayOutputStream();
                        byteArrayOutputStream.write(bArr);
                        byteArrayOutputStream.write(bArr2);
                        if (ProfileTranscoder.i(byteArrayOutputStream, bArr2, dexProfileDataArr3)) {
                            diagnosticsCallback2.a(5, null);
                            deviceProfileWriter2.f19104j = null;
                            byteArrayOutputStream.close();
                        } else {
                            deviceProfileWriter2.f19105k = byteArrayOutputStream.toByteArray();
                            byteArrayOutputStream.close();
                            deviceProfileWriter2.f19104j = null;
                        }
                    }
                    bArr3 = deviceProfileWriter2.f19105k;
                    if (bArr3 != null) {
                        if (deviceProfileWriter2.f19103i) {
                            md.k("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                            return;
                        }
                        byteArrayInputStream = new ByteArrayInputStream(bArr3);
                        fileOutputStream = new FileOutputStream(deviceProfileWriter2.f19100e);
                        channel = fileOutputStream.getChannel();
                        fileLockTryLock = channel.tryLock();
                        if (fileLockTryLock != null) {
                            if (fileLockTryLock.isValid()) {
                                bArr4 = new byte[512];
                                while (true) {
                                    i3 = byteArrayInputStream.read(bArr4);
                                    if (i3 > 0) {
                                        break;
                                        break;
                                    }
                                    fileOutputStream.write(bArr4, 0, i3);
                                }
                                deviceProfileWriter2.b(1, null);
                                fileLockTryLock.close();
                                channel.close();
                                fileOutputStream.close();
                                byteArrayInputStream.close();
                                deviceProfileWriter2.f19105k = null;
                                deviceProfileWriter2.f19104j = null;
                                z2 = true;
                            }
                        }
                        throw new IOException("Unable to acquire a lock on the underlying file channel.");
                    }
                    z2 = false;
                    if (z2) {
                        a(packageInfo, filesDir);
                    }
                } else {
                    deviceProfileWriter2.b(4, null);
                }
                if (z2 || !z) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                ProfileVerifier.c(context, z3);
            }
            deviceProfileWriter2.b(3, Integer.valueOf(Build.VERSION.SDK_INT));
            z2 = false;
            if (z2) {
                z3 = false;
            } else {
                z3 = false;
            }
            ProfileVerifier.c(context, z3);
        } catch (PackageManager.NameNotFoundException e17) {
            diagnosticsCallback.a(7, e17);
            ProfileVerifier.c(context, false);
        }
    }
}
