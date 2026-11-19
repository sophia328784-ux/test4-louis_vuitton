package androidx.profileinstaller;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.os.Build;
import androidx.concurrent.futures.ResolvableFuture;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class ProfileVerifier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ResolvableFuture f19118a = new ResolvableFuture();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object f19119b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static CompilationStatus f19120c = null;

    public static class Api33Impl {
        public static PackageInfo a(PackageManager packageManager, Context context) {
            return packageManager.getPackageInfo(context.getPackageName(), PackageManager.PackageInfoFlags.of(0L));
        }
    }

    public static class Cache {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f19121a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f19122b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f19123c;
        public final long d;

        public Cache(long j2, long j3, int i2, int i3) {
            this.f19121a = i2;
            this.f19122b = i3;
            this.f19123c = j2;
            this.d = j3;
        }

        public static Cache a(File file) throws IOException {
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
            try {
                Cache cache = new Cache(dataInputStream.readLong(), dataInputStream.readLong(), dataInputStream.readInt(), dataInputStream.readInt());
                dataInputStream.close();
                return cache;
            } catch (Throwable th) {
                try {
                    dataInputStream.close();
                    throw th;
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                    throw th;
                }
            }
        }

        public final void b(File file) throws IOException {
            file.delete();
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file));
            try {
                dataOutputStream.writeInt(this.f19121a);
                dataOutputStream.writeInt(this.f19122b);
                dataOutputStream.writeLong(this.f19123c);
                dataOutputStream.writeLong(this.d);
                dataOutputStream.close();
            } catch (Throwable th) {
                try {
                    dataOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && (obj instanceof Cache)) {
                Cache cache = (Cache) obj;
                if (this.f19122b == cache.f19122b && this.f19123c == cache.f19123c && this.f19121a == cache.f19121a && this.d == cache.d) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(Integer.valueOf(this.f19122b), Long.valueOf(this.f19123c), Integer.valueOf(this.f19121a), Long.valueOf(this.d));
        }
    }

    public static class CompilationStatus {

        @Retention(RetentionPolicy.SOURCE)
        public @interface ResultCode {
        }
    }

    public static long a(Context context) {
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        return Build.VERSION.SDK_INT >= 33 ? Api33Impl.a(packageManager, context).lastUpdateTime : packageManager.getPackageInfo(context.getPackageName(), 0).lastUpdateTime;
    }

    public static CompilationStatus b() {
        CompilationStatus compilationStatus = new CompilationStatus();
        f19120c = compilationStatus;
        f19118a.j(compilationStatus);
        return f19120c;
    }

    /* JADX WARN: Code duplicated, block: B:106:0x00a8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:20:0x002c  */
    /* JADX WARN: Code duplicated, block: B:21:0x002e  */
    /* JADX WARN: Code duplicated, block: B:35:0x0047 A[Catch: all -> 0x0013, TryCatch #2 {, blocks: (B:9:0x000d, B:11:0x0011, B:16:0x001a, B:22:0x002f, B:33:0x0041, B:35:0x0047, B:36:0x004a, B:38:0x004d, B:44:0x0070, B:50:0x0093, B:51:0x0097, B:53:0x00a8, B:61:0x00b6, B:63:0x00bc, B:78:0x00d8, B:81:0x00de, B:84:0x00e5, B:86:0x00f0, B:89:0x00f9, B:90:0x00fc, B:88:0x00f6, B:55:0x00ad, B:56:0x00b0, B:92:0x00fe, B:93:0x0101, B:31:0x003f, B:30:0x003c), top: B:102:0x000d, inners: #5, #6 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x004d A[Catch: all -> 0x0013, TryCatch #2 {, blocks: (B:9:0x000d, B:11:0x0011, B:16:0x001a, B:22:0x002f, B:33:0x0041, B:35:0x0047, B:36:0x004a, B:38:0x004d, B:44:0x0070, B:50:0x0093, B:51:0x0097, B:53:0x00a8, B:61:0x00b6, B:63:0x00bc, B:78:0x00d8, B:81:0x00de, B:84:0x00e5, B:86:0x00f0, B:89:0x00f9, B:90:0x00fc, B:88:0x00f6, B:55:0x00ad, B:56:0x00b0, B:92:0x00fe, B:93:0x0101, B:31:0x003f, B:30:0x003c), top: B:102:0x000d, inners: #5, #6 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x006f  */
    /* JADX WARN: Code duplicated, block: B:49:0x0092  */
    /* JADX WARN: Code duplicated, block: B:58:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:67:0x00c3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:68:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:70:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:71:0x00cc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:72:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:98:0x00f6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static void c(Context context, boolean z) {
        int i2;
        boolean z2;
        File file;
        boolean z3;
        File file2;
        long length;
        boolean z4;
        File file3;
        Cache cacheA;
        Cache cache;
        int i3;
        AssetFileDescriptor assetFileDescriptorOpenFd;
        if (z || f19120c == null) {
            synchronized (f19119b) {
                if (z) {
                    i2 = 0;
                    assetFileDescriptorOpenFd = context.getAssets().openFd("dexopt/baseline.prof");
                    if (assetFileDescriptorOpenFd.getLength() > 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    assetFileDescriptorOpenFd.close();
                    if (Build.VERSION.SDK_INT == 30) {
                        b();
                        return;
                    }
                    file = new File(new File("/data/misc/profiles/ref/", context.getPackageName()), "primary.prof");
                    long length2 = file.length();
                    if (file.exists()) {
                        z3 = false;
                    } else {
                        z3 = false;
                    }
                    file2 = new File(new File("/data/misc/profiles/cur/0/", context.getPackageName()), "primary.prof");
                    length = file2.length();
                    if (file2.exists()) {
                        z4 = false;
                    } else {
                        z4 = false;
                    }
                    long jA = a(context);
                    file3 = new File(context.getFilesDir(), "profileInstalled");
                    if (file3.exists()) {
                        cacheA = Cache.a(file3);
                    } else {
                        cacheA = null;
                    }
                    if (cacheA == null) {
                        if (!z2) {
                            i2 = 327680;
                        } else if (z3) {
                            i2 = 1;
                        } else if (z4) {
                            i2 = 2;
                        }
                    } else if (!z2) {
                        i2 = 327680;
                    } else if (z3) {
                        i2 = 1;
                    } else if (z4) {
                        i2 = 2;
                    }
                    if (z) {
                        i2 = 2;
                    }
                    if (cacheA != null) {
                        i2 = 3;
                    }
                    cache = new Cache(jA, length, 1, i2);
                    if (cacheA != null) {
                        cache.b(file3);
                    } else {
                        cache.b(file3);
                    }
                    b();
                    return;
                }
                if (f19120c != null) {
                    return;
                }
                i2 = 0;
                try {
                    assetFileDescriptorOpenFd = context.getAssets().openFd("dexopt/baseline.prof");
                    try {
                        if (assetFileDescriptorOpenFd.getLength() > 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        assetFileDescriptorOpenFd.close();
                    } catch (Throwable th) {
                        if (assetFileDescriptorOpenFd == null) {
                            throw th;
                        }
                        try {
                            assetFileDescriptorOpenFd.close();
                            throw th;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                            throw th;
                        }
                    }
                } catch (IOException unused) {
                    z2 = false;
                }
                if (Build.VERSION.SDK_INT == 30) {
                    b();
                    return;
                }
                file = new File(new File("/data/misc/profiles/ref/", context.getPackageName()), "primary.prof");
                long length3 = file.length();
                if (file.exists() || length3 <= 0) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                file2 = new File(new File("/data/misc/profiles/cur/0/", context.getPackageName()), "primary.prof");
                length = file2.length();
                if (file2.exists() || length <= 0) {
                    z4 = false;
                } else {
                    z4 = true;
                }
                try {
                    long jA2 = a(context);
                    file3 = new File(context.getFilesDir(), "profileInstalled");
                    if (file3.exists()) {
                        try {
                            cacheA = Cache.a(file3);
                        } catch (IOException unused2) {
                            b();
                            return;
                        }
                    } else {
                        cacheA = null;
                    }
                    if (cacheA == null && cacheA.f19123c == jA2 && (i3 = cacheA.f19122b) != 2) {
                        i2 = i3;
                    } else if (!z2) {
                        i2 = 327680;
                    } else if (z3) {
                        i2 = 1;
                    } else if (z4) {
                        i2 = 2;
                    }
                    if (z && z4 && i2 != 1) {
                        i2 = 2;
                    }
                    if (cacheA != null && cacheA.f19122b == 2 && i2 == 1 && length3 < cacheA.d) {
                        i2 = 3;
                    }
                    cache = new Cache(jA2, length, 1, i2);
                    if (cacheA != null || !cacheA.equals(cache)) {
                        try {
                            cache.b(file3);
                        } catch (IOException unused3) {
                        }
                    }
                    b();
                    return;
                } catch (PackageManager.NameNotFoundException unused4) {
                    b();
                    return;
                }
                throw th;
            }
        }
    }
}
