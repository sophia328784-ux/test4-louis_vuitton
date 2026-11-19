package com.google.android.gms.dynamite;

import android.content.ContentProviderClient;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.SystemClock;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.common.zzc;
import com.sightcall.universal.media.offline.FileUtils;
import dalvik.system.DelegateLastClassLoader;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes2.dex */
public final class DynamiteModule {
    public static Boolean g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static String f29391h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static boolean f29392i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f29393j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static Boolean f29394k;
    public static zzp o;
    public static zzq p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f29395a;
    public static final ThreadLocal l = new ThreadLocal();
    public static final ThreadLocal m = new zze();
    public static final VersionPolicy.IVersions n = new zzf();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final VersionPolicy f29387b = new zzg();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final VersionPolicy f29388c = new zzh();
    public static final VersionPolicy d = new zzj();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final VersionPolicy f29389e = new zzk();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final VersionPolicy f29390f = new zzl();

    public static class DynamiteLoaderClassLoader {
        public static ClassLoader sClassLoader;
    }

    public static class LoadingException extends Exception {
    }

    public interface VersionPolicy {

        public interface IVersions {
            int a(Context context, String str, boolean z);

            int b(Context context, String str);
        }

        public static class SelectionResult {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f29396a = 0;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f29397b = 0;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f29398c = 0;
        }

        SelectionResult a(Context context, String str, IVersions iVersions);
    }

    public DynamiteModule(Context context) {
        this.f29395a = context;
    }

    public static int a(Context context, String str) {
        try {
            ClassLoader classLoader = context.getApplicationContext().getClassLoader();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 61);
            sb.append("com.google.android.gms.dynamite.descriptors.");
            sb.append(str);
            sb.append(".ModuleDescriptor");
            Class<?> clsLoadClass = classLoader.loadClass(sb.toString());
            Field declaredField = clsLoadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = clsLoadClass.getDeclaredField("MODULE_VERSION");
            if (Objects.a(declaredField.get(null), str)) {
                return declaredField2.getInt(null);
            }
            new StringBuilder(String.valueOf(declaredField.get(null)).length() + 50 + String.valueOf(str).length() + 1);
            return 0;
        } catch (ClassNotFoundException unused) {
            new StringBuilder(String.valueOf(str).length() + 45);
            return 0;
        } catch (Exception e2) {
            "Failed to load module descriptor class: ".concat(String.valueOf(e2.getMessage()));
            return 0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01e9 A[Catch: all -> 0x0130, LoadingException -> 0x0133, RemoteException -> 0x0136, TryCatch #8 {RemoteException -> 0x0136, LoadingException -> 0x0133, all -> 0x0130, blocks: (B:37:0x00c9, B:43:0x00d5, B:45:0x00dc, B:46:0x00f6, B:50:0x00fc, B:52:0x0104, B:54:0x0108, B:55:0x0116, B:62:0x0121, B:70:0x0147, B:72:0x014f, B:73:0x0156, B:74:0x015d, B:69:0x0139, B:77:0x0160, B:78:0x0161, B:79:0x0168, B:80:0x0169, B:81:0x0170, B:84:0x0173, B:85:0x0174, B:87:0x0192, B:89:0x01a5, B:91:0x01ad, B:97:0x01db, B:99:0x01e1, B:100:0x01e9, B:101:0x01f0, B:92:0x01be, B:93:0x01c5, B:95:0x01c8, B:96:0x01d2, B:102:0x01f1, B:103:0x01f8, B:104:0x01f9, B:105:0x0200, B:111:0x020c), top: B:161:0x00c9 }] */
    /* JADX WARN: Code duplicated, block: B:102:0x01f1 A[Catch: all -> 0x0130, LoadingException -> 0x0133, RemoteException -> 0x0136, TryCatch #8 {RemoteException -> 0x0136, LoadingException -> 0x0133, all -> 0x0130, blocks: (B:37:0x00c9, B:43:0x00d5, B:45:0x00dc, B:46:0x00f6, B:50:0x00fc, B:52:0x0104, B:54:0x0108, B:55:0x0116, B:62:0x0121, B:70:0x0147, B:72:0x014f, B:73:0x0156, B:74:0x015d, B:69:0x0139, B:77:0x0160, B:78:0x0161, B:79:0x0168, B:80:0x0169, B:81:0x0170, B:84:0x0173, B:85:0x0174, B:87:0x0192, B:89:0x01a5, B:91:0x01ad, B:97:0x01db, B:99:0x01e1, B:100:0x01e9, B:101:0x01f0, B:92:0x01be, B:93:0x01c5, B:95:0x01c8, B:96:0x01d2, B:102:0x01f1, B:103:0x01f8, B:104:0x01f9, B:105:0x0200, B:111:0x020c), top: B:161:0x00c9 }] */
    /* JADX WARN: Code duplicated, block: B:104:0x01f9 A[Catch: all -> 0x0130, LoadingException -> 0x0133, RemoteException -> 0x0136, TryCatch #8 {RemoteException -> 0x0136, LoadingException -> 0x0133, all -> 0x0130, blocks: (B:37:0x00c9, B:43:0x00d5, B:45:0x00dc, B:46:0x00f6, B:50:0x00fc, B:52:0x0104, B:54:0x0108, B:55:0x0116, B:62:0x0121, B:70:0x0147, B:72:0x014f, B:73:0x0156, B:74:0x015d, B:69:0x0139, B:77:0x0160, B:78:0x0161, B:79:0x0168, B:80:0x0169, B:81:0x0170, B:84:0x0173, B:85:0x0174, B:87:0x0192, B:89:0x01a5, B:91:0x01ad, B:97:0x01db, B:99:0x01e1, B:100:0x01e9, B:101:0x01f0, B:92:0x01be, B:93:0x01c5, B:95:0x01c8, B:96:0x01d2, B:102:0x01f1, B:103:0x01f8, B:104:0x01f9, B:105:0x0200, B:111:0x020c), top: B:161:0x00c9 }] */
    /* JADX WARN: Code duplicated, block: B:108:0x0203 A[Catch: all -> 0x0201, TRY_ENTER, TryCatch #2 {, blocks: (B:38:0x00ca, B:40:0x00d0, B:41:0x00d2, B:108:0x0203, B:109:0x020a), top: B:154:0x00ca }] */
    /* JADX WARN: Code duplicated, block: B:126:0x0257  */
    /* JADX WARN: Code duplicated, block: B:127:0x025d  */
    /* JADX WARN: Code duplicated, block: B:130:0x0266  */
    /* JADX WARN: Code duplicated, block: B:135:0x0277 A[Catch: all -> 0x0091, TryCatch #3 {all -> 0x0091, blocks: (B:7:0x003a, B:11:0x008a, B:18:0x0096, B:22:0x009d, B:35:0x00c5, B:112:0x020d, B:113:0x0214, B:116:0x0217, B:117:0x0218, B:118:0x021f, B:119:0x0220, B:121:0x0237, B:123:0x0245, B:133:0x026f, B:134:0x0276, B:135:0x0277, B:136:0x0295, B:137:0x0296, B:138:0x02e1), top: B:155:0x003a, inners: #5 }] */
    /* JADX WARN: Code duplicated, block: B:152:0x00f7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:154:0x00ca A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:22:0x009d A[Catch: all -> 0x0091, TRY_LEAVE, TryCatch #3 {all -> 0x0091, blocks: (B:7:0x003a, B:11:0x008a, B:18:0x0096, B:22:0x009d, B:35:0x00c5, B:112:0x020d, B:113:0x0214, B:116:0x0217, B:117:0x0218, B:118:0x021f, B:119:0x0220, B:121:0x0237, B:123:0x0245, B:133:0x026f, B:134:0x0276, B:135:0x0277, B:136:0x0295, B:137:0x0296, B:138:0x02e1), top: B:155:0x003a, inners: #5 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x00af  */
    /* JADX WARN: Code duplicated, block: B:26:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:29:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:32:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:34:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:40:0x00d0 A[Catch: all -> 0x0201, TryCatch #2 {, blocks: (B:38:0x00ca, B:40:0x00d0, B:41:0x00d2, B:108:0x0203, B:109:0x020a), top: B:154:0x00ca }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00d5 A[Catch: all -> 0x0130, LoadingException -> 0x0133, RemoteException -> 0x0136, TRY_ENTER, TryCatch #8 {RemoteException -> 0x0136, LoadingException -> 0x0133, all -> 0x0130, blocks: (B:37:0x00c9, B:43:0x00d5, B:45:0x00dc, B:46:0x00f6, B:50:0x00fc, B:52:0x0104, B:54:0x0108, B:55:0x0116, B:62:0x0121, B:70:0x0147, B:72:0x014f, B:73:0x0156, B:74:0x015d, B:69:0x0139, B:77:0x0160, B:78:0x0161, B:79:0x0168, B:80:0x0169, B:81:0x0170, B:84:0x0173, B:85:0x0174, B:87:0x0192, B:89:0x01a5, B:91:0x01ad, B:97:0x01db, B:99:0x01e1, B:100:0x01e9, B:101:0x01f0, B:92:0x01be, B:93:0x01c5, B:95:0x01c8, B:96:0x01d2, B:102:0x01f1, B:103:0x01f8, B:104:0x01f9, B:105:0x0200, B:111:0x020c), top: B:161:0x00c9 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00dc A[Catch: all -> 0x0130, LoadingException -> 0x0133, RemoteException -> 0x0136, TryCatch #8 {RemoteException -> 0x0136, LoadingException -> 0x0133, all -> 0x0130, blocks: (B:37:0x00c9, B:43:0x00d5, B:45:0x00dc, B:46:0x00f6, B:50:0x00fc, B:52:0x0104, B:54:0x0108, B:55:0x0116, B:62:0x0121, B:70:0x0147, B:72:0x014f, B:73:0x0156, B:74:0x015d, B:69:0x0139, B:77:0x0160, B:78:0x0161, B:79:0x0168, B:80:0x0169, B:81:0x0170, B:84:0x0173, B:85:0x0174, B:87:0x0192, B:89:0x01a5, B:91:0x01ad, B:97:0x01db, B:99:0x01e1, B:100:0x01e9, B:101:0x01f0, B:92:0x01be, B:93:0x01c5, B:95:0x01c8, B:96:0x01d2, B:102:0x01f1, B:103:0x01f8, B:104:0x01f9, B:105:0x0200, B:111:0x020c), top: B:161:0x00c9 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00fc A[Catch: all -> 0x0130, LoadingException -> 0x0133, RemoteException -> 0x0136, TRY_ENTER, TryCatch #8 {RemoteException -> 0x0136, LoadingException -> 0x0133, all -> 0x0130, blocks: (B:37:0x00c9, B:43:0x00d5, B:45:0x00dc, B:46:0x00f6, B:50:0x00fc, B:52:0x0104, B:54:0x0108, B:55:0x0116, B:62:0x0121, B:70:0x0147, B:72:0x014f, B:73:0x0156, B:74:0x015d, B:69:0x0139, B:77:0x0160, B:78:0x0161, B:79:0x0168, B:80:0x0169, B:81:0x0170, B:84:0x0173, B:85:0x0174, B:87:0x0192, B:89:0x01a5, B:91:0x01ad, B:97:0x01db, B:99:0x01e1, B:100:0x01e9, B:101:0x01f0, B:92:0x01be, B:93:0x01c5, B:95:0x01c8, B:96:0x01d2, B:102:0x01f1, B:103:0x01f8, B:104:0x01f9, B:105:0x0200, B:111:0x020c), top: B:161:0x00c9 }] */
    /* JADX WARN: Code duplicated, block: B:80:0x0169 A[Catch: all -> 0x0130, LoadingException -> 0x0133, RemoteException -> 0x0136, TryCatch #8 {RemoteException -> 0x0136, LoadingException -> 0x0133, all -> 0x0130, blocks: (B:37:0x00c9, B:43:0x00d5, B:45:0x00dc, B:46:0x00f6, B:50:0x00fc, B:52:0x0104, B:54:0x0108, B:55:0x0116, B:62:0x0121, B:70:0x0147, B:72:0x014f, B:73:0x0156, B:74:0x015d, B:69:0x0139, B:77:0x0160, B:78:0x0161, B:79:0x0168, B:80:0x0169, B:81:0x0170, B:84:0x0173, B:85:0x0174, B:87:0x0192, B:89:0x01a5, B:91:0x01ad, B:97:0x01db, B:99:0x01e1, B:100:0x01e9, B:101:0x01f0, B:92:0x01be, B:93:0x01c5, B:95:0x01c8, B:96:0x01d2, B:102:0x01f1, B:103:0x01f8, B:104:0x01f9, B:105:0x0200, B:111:0x020c), top: B:161:0x00c9 }] */
    /* JADX WARN: Code duplicated, block: B:85:0x0174 A[Catch: all -> 0x0130, LoadingException -> 0x0133, RemoteException -> 0x0136, TryCatch #8 {RemoteException -> 0x0136, LoadingException -> 0x0133, all -> 0x0130, blocks: (B:37:0x00c9, B:43:0x00d5, B:45:0x00dc, B:46:0x00f6, B:50:0x00fc, B:52:0x0104, B:54:0x0108, B:55:0x0116, B:62:0x0121, B:70:0x0147, B:72:0x014f, B:73:0x0156, B:74:0x015d, B:69:0x0139, B:77:0x0160, B:78:0x0161, B:79:0x0168, B:80:0x0169, B:81:0x0170, B:84:0x0173, B:85:0x0174, B:87:0x0192, B:89:0x01a5, B:91:0x01ad, B:97:0x01db, B:99:0x01e1, B:100:0x01e9, B:101:0x01f0, B:92:0x01be, B:93:0x01c5, B:95:0x01c8, B:96:0x01d2, B:102:0x01f1, B:103:0x01f8, B:104:0x01f9, B:105:0x0200, B:111:0x020c), top: B:161:0x00c9 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x0192 A[Catch: all -> 0x0130, LoadingException -> 0x0133, RemoteException -> 0x0136, TryCatch #8 {RemoteException -> 0x0136, LoadingException -> 0x0133, all -> 0x0130, blocks: (B:37:0x00c9, B:43:0x00d5, B:45:0x00dc, B:46:0x00f6, B:50:0x00fc, B:52:0x0104, B:54:0x0108, B:55:0x0116, B:62:0x0121, B:70:0x0147, B:72:0x014f, B:73:0x0156, B:74:0x015d, B:69:0x0139, B:77:0x0160, B:78:0x0161, B:79:0x0168, B:80:0x0169, B:81:0x0170, B:84:0x0173, B:85:0x0174, B:87:0x0192, B:89:0x01a5, B:91:0x01ad, B:97:0x01db, B:99:0x01e1, B:100:0x01e9, B:101:0x01f0, B:92:0x01be, B:93:0x01c5, B:95:0x01c8, B:96:0x01d2, B:102:0x01f1, B:103:0x01f8, B:104:0x01f9, B:105:0x0200, B:111:0x020c), top: B:161:0x00c9 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x01a5 A[Catch: all -> 0x0130, LoadingException -> 0x0133, RemoteException -> 0x0136, TryCatch #8 {RemoteException -> 0x0136, LoadingException -> 0x0133, all -> 0x0130, blocks: (B:37:0x00c9, B:43:0x00d5, B:45:0x00dc, B:46:0x00f6, B:50:0x00fc, B:52:0x0104, B:54:0x0108, B:55:0x0116, B:62:0x0121, B:70:0x0147, B:72:0x014f, B:73:0x0156, B:74:0x015d, B:69:0x0139, B:77:0x0160, B:78:0x0161, B:79:0x0168, B:80:0x0169, B:81:0x0170, B:84:0x0173, B:85:0x0174, B:87:0x0192, B:89:0x01a5, B:91:0x01ad, B:97:0x01db, B:99:0x01e1, B:100:0x01e9, B:101:0x01f0, B:92:0x01be, B:93:0x01c5, B:95:0x01c8, B:96:0x01d2, B:102:0x01f1, B:103:0x01f8, B:104:0x01f9, B:105:0x0200, B:111:0x020c), top: B:161:0x00c9 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x01ad A[Catch: all -> 0x0130, LoadingException -> 0x0133, RemoteException -> 0x0136, TryCatch #8 {RemoteException -> 0x0136, LoadingException -> 0x0133, all -> 0x0130, blocks: (B:37:0x00c9, B:43:0x00d5, B:45:0x00dc, B:46:0x00f6, B:50:0x00fc, B:52:0x0104, B:54:0x0108, B:55:0x0116, B:62:0x0121, B:70:0x0147, B:72:0x014f, B:73:0x0156, B:74:0x015d, B:69:0x0139, B:77:0x0160, B:78:0x0161, B:79:0x0168, B:80:0x0169, B:81:0x0170, B:84:0x0173, B:85:0x0174, B:87:0x0192, B:89:0x01a5, B:91:0x01ad, B:97:0x01db, B:99:0x01e1, B:100:0x01e9, B:101:0x01f0, B:92:0x01be, B:93:0x01c5, B:95:0x01c8, B:96:0x01d2, B:102:0x01f1, B:103:0x01f8, B:104:0x01f9, B:105:0x0200, B:111:0x020c), top: B:161:0x00c9 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x01be A[Catch: all -> 0x0130, LoadingException -> 0x0133, RemoteException -> 0x0136, TryCatch #8 {RemoteException -> 0x0136, LoadingException -> 0x0133, all -> 0x0130, blocks: (B:37:0x00c9, B:43:0x00d5, B:45:0x00dc, B:46:0x00f6, B:50:0x00fc, B:52:0x0104, B:54:0x0108, B:55:0x0116, B:62:0x0121, B:70:0x0147, B:72:0x014f, B:73:0x0156, B:74:0x015d, B:69:0x0139, B:77:0x0160, B:78:0x0161, B:79:0x0168, B:80:0x0169, B:81:0x0170, B:84:0x0173, B:85:0x0174, B:87:0x0192, B:89:0x01a5, B:91:0x01ad, B:97:0x01db, B:99:0x01e1, B:100:0x01e9, B:101:0x01f0, B:92:0x01be, B:93:0x01c5, B:95:0x01c8, B:96:0x01d2, B:102:0x01f1, B:103:0x01f8, B:104:0x01f9, B:105:0x0200, B:111:0x020c), top: B:161:0x00c9 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x01c6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:95:0x01c8 A[Catch: all -> 0x0130, LoadingException -> 0x0133, RemoteException -> 0x0136, TryCatch #8 {RemoteException -> 0x0136, LoadingException -> 0x0133, all -> 0x0130, blocks: (B:37:0x00c9, B:43:0x00d5, B:45:0x00dc, B:46:0x00f6, B:50:0x00fc, B:52:0x0104, B:54:0x0108, B:55:0x0116, B:62:0x0121, B:70:0x0147, B:72:0x014f, B:73:0x0156, B:74:0x015d, B:69:0x0139, B:77:0x0160, B:78:0x0161, B:79:0x0168, B:80:0x0169, B:81:0x0170, B:84:0x0173, B:85:0x0174, B:87:0x0192, B:89:0x01a5, B:91:0x01ad, B:97:0x01db, B:99:0x01e1, B:100:0x01e9, B:101:0x01f0, B:92:0x01be, B:93:0x01c5, B:95:0x01c8, B:96:0x01d2, B:102:0x01f1, B:103:0x01f8, B:104:0x01f9, B:105:0x0200, B:111:0x020c), top: B:161:0x00c9 }] */
    /* JADX WARN: Code duplicated, block: B:96:0x01d2 A[Catch: all -> 0x0130, LoadingException -> 0x0133, RemoteException -> 0x0136, TryCatch #8 {RemoteException -> 0x0136, LoadingException -> 0x0133, all -> 0x0130, blocks: (B:37:0x00c9, B:43:0x00d5, B:45:0x00dc, B:46:0x00f6, B:50:0x00fc, B:52:0x0104, B:54:0x0108, B:55:0x0116, B:62:0x0121, B:70:0x0147, B:72:0x014f, B:73:0x0156, B:74:0x015d, B:69:0x0139, B:77:0x0160, B:78:0x0161, B:79:0x0168, B:80:0x0169, B:81:0x0170, B:84:0x0173, B:85:0x0174, B:87:0x0192, B:89:0x01a5, B:91:0x01ad, B:97:0x01db, B:99:0x01e1, B:100:0x01e9, B:101:0x01f0, B:92:0x01be, B:93:0x01c5, B:95:0x01c8, B:96:0x01d2, B:102:0x01f1, B:103:0x01f8, B:104:0x01f9, B:105:0x0200, B:111:0x020c), top: B:161:0x00c9 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x01e1 A[Catch: all -> 0x0130, LoadingException -> 0x0133, RemoteException -> 0x0136, TryCatch #8 {RemoteException -> 0x0136, LoadingException -> 0x0133, all -> 0x0130, blocks: (B:37:0x00c9, B:43:0x00d5, B:45:0x00dc, B:46:0x00f6, B:50:0x00fc, B:52:0x0104, B:54:0x0108, B:55:0x0116, B:62:0x0121, B:70:0x0147, B:72:0x014f, B:73:0x0156, B:74:0x015d, B:69:0x0139, B:77:0x0160, B:78:0x0161, B:79:0x0168, B:80:0x0169, B:81:0x0170, B:84:0x0173, B:85:0x0174, B:87:0x0192, B:89:0x01a5, B:91:0x01ad, B:97:0x01db, B:99:0x01e1, B:100:0x01e9, B:101:0x01f0, B:92:0x01be, B:93:0x01c5, B:95:0x01c8, B:96:0x01d2, B:102:0x01f1, B:103:0x01f8, B:104:0x01f9, B:105:0x0200, B:111:0x020c), top: B:161:0x00c9 }] */
    public static DynamiteModule c(Context context, VersionPolicy versionPolicy, String str) throws Throwable {
        long j2;
        DynamiteModule dynamiteModule;
        Cursor cursor;
        int i2;
        Boolean bool;
        zzp zzpVarH;
        int i3;
        IObjectWrapper iObjectWrapperG2;
        Object objG2;
        zzn zznVar;
        zzq zzqVar;
        zzn zznVar2;
        boolean z;
        Cursor cursor2;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            throw new LoadingException("null application Context");
        }
        ThreadLocal threadLocal = l;
        zzn zznVar3 = (zzn) threadLocal.get();
        zzn zznVar4 = new zzn();
        threadLocal.set(zznVar4);
        ThreadLocal threadLocal2 = m;
        Long l2 = (Long) threadLocal2.get();
        long jLongValue = l2.longValue();
        try {
            j2 = jLongValue;
            try {
                threadLocal2.set(Long.valueOf(SystemClock.uptimeMillis()));
                VersionPolicy.SelectionResult selectionResultA = versionPolicy.a(context, str, n);
                new StringBuilder(String.valueOf(str).length() + 26 + String.valueOf(selectionResultA.f29396a).length() + 19 + String.valueOf(str).length() + 1 + String.valueOf(selectionResultA.f29397b).length());
                int i4 = selectionResultA.f29398c;
                if (i4 != 0) {
                    if (i4 != -1) {
                        if (i4 == 1 || selectionResultA.f29397b != 0) {
                            if (i4 == -1) {
                                "Selected local version of ".concat(String.valueOf(str));
                                DynamiteModule dynamiteModule2 = new DynamiteModule(applicationContext);
                                if (j2 == 0) {
                                    threadLocal2.remove();
                                } else {
                                    threadLocal2.set(l2);
                                }
                                cursor2 = zznVar4.f29401a;
                                if (cursor2 != null) {
                                    cursor2.close();
                                }
                                threadLocal.set(zznVar3);
                                return dynamiteModule2;
                            }
                            if (i4 == 1) {
                                StringBuilder sb = new StringBuilder(String.valueOf(i4).length() + 36);
                                sb.append("VersionPolicy returned invalid code:");
                                sb.append(i4);
                                throw new LoadingException(sb.toString());
                            }
                            try {
                                i2 = selectionResultA.f29397b;
                                try {
                                    synchronized (DynamiteModule.class) {
                                        if (e(context)) {
                                            throw new LoadingException("Remote loading disabled");
                                        }
                                        bool = g;
                                    }
                                    if (bool != null) {
                                        throw new LoadingException("Failed to determine which loading route to use.");
                                    }
                                    if (bool.booleanValue()) {
                                        new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(i2).length());
                                        synchronized (DynamiteModule.class) {
                                            zzqVar = p;
                                        }
                                        if (zzqVar != null) {
                                            throw new LoadingException("DynamiteLoaderV2 was not cached.");
                                        }
                                        zznVar2 = (zzn) threadLocal.get();
                                        if (zznVar2 != null || zznVar2.f29401a == null) {
                                            throw new LoadingException("No result cursor");
                                        }
                                        Context applicationContext2 = context.getApplicationContext();
                                        Cursor cursor3 = zznVar2.f29401a;
                                        new ObjectWrapper(null);
                                        synchronized (DynamiteModule.class) {
                                            z = f29393j >= 2;
                                        }
                                        Context context2 = (Context) ObjectWrapper.G2(z ? zzqVar.H2(new ObjectWrapper(applicationContext2), str, i2, new ObjectWrapper(cursor3)) : zzqVar.G2(new ObjectWrapper(applicationContext2), str, i2, new ObjectWrapper(cursor3)));
                                        if (context2 == null) {
                                            throw new LoadingException("Failed to get module context");
                                        }
                                        dynamiteModule = new DynamiteModule(context2);
                                    } else {
                                        new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(i2).length());
                                        zzpVarH = h(context);
                                        if (zzpVarH != null) {
                                            throw new LoadingException("Failed to create IDynamiteLoader.");
                                        }
                                        Parcel parcelE2 = zzpVarH.E2(6, zzpVarH.F2());
                                        i3 = parcelE2.readInt();
                                        parcelE2.recycle();
                                        if (i3 >= 3) {
                                            zznVar = (zzn) threadLocal.get();
                                            if (zznVar != null) {
                                                throw new LoadingException("No cached result cursor holder");
                                            }
                                            iObjectWrapperG2 = zzpVarH.J2(new ObjectWrapper(context), str, i2, new ObjectWrapper(zznVar.f29401a));
                                        } else if (i3 == 2) {
                                            iObjectWrapperG2 = zzpVarH.H2(new ObjectWrapper(context), str, i2);
                                        } else {
                                            iObjectWrapperG2 = zzpVarH.G2(new ObjectWrapper(context), str, i2);
                                        }
                                        objG2 = ObjectWrapper.G2(iObjectWrapperG2);
                                        if (objG2 != null) {
                                            throw new LoadingException("Failed to load remote module.");
                                        }
                                        dynamiteModule = new DynamiteModule((Context) objG2);
                                    }
                                    if (j2 == 0) {
                                        m.remove();
                                    } else {
                                        m.set(l2);
                                    }
                                    cursor = zznVar4.f29401a;
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    l.set(zznVar3);
                                    return dynamiteModule;
                                } catch (RemoteException e2) {
                                    throw new LoadingException("Failed to load remote module.", e2);
                                } catch (LoadingException e3) {
                                    throw e3;
                                } catch (Throwable th) {
                                    throw new LoadingException("Failed to load remote module.", th);
                                }
                            } catch (LoadingException e4) {
                                new StringBuilder(String.valueOf(e4.getMessage()).length() + 30);
                                int i5 = selectionResultA.f29396a;
                                if (i5 == 0 || versionPolicy.a(context, str, new zzo(i5, 0)).f29398c != -1) {
                                    throw new LoadingException("Remote load failed. No local fallback found.", e4);
                                }
                                "Selected local version of ".concat(String.valueOf(str));
                                dynamiteModule = new DynamiteModule(applicationContext);
                            }
                        }
                    } else if (selectionResultA.f29396a != 0) {
                        i4 = -1;
                        if (i4 == 1) {
                        }
                        if (i4 == -1) {
                            "Selected local version of ".concat(String.valueOf(str));
                            DynamiteModule dynamiteModule3 = new DynamiteModule(applicationContext);
                            if (j2 == 0) {
                                threadLocal2.remove();
                            } else {
                                threadLocal2.set(l2);
                            }
                            cursor2 = zznVar4.f29401a;
                            if (cursor2 != null) {
                                cursor2.close();
                            }
                            threadLocal.set(zznVar3);
                            return dynamiteModule3;
                        }
                        if (i4 == 1) {
                            StringBuilder sb2 = new StringBuilder(String.valueOf(i4).length() + 36);
                            sb2.append("VersionPolicy returned invalid code:");
                            sb2.append(i4);
                            throw new LoadingException(sb2.toString());
                        }
                        i2 = selectionResultA.f29397b;
                        synchronized (DynamiteModule.class) {
                            if (e(context)) {
                                throw new LoadingException("Remote loading disabled");
                            }
                            bool = g;
                            if (bool != null) {
                                throw new LoadingException("Failed to determine which loading route to use.");
                            }
                            if (bool.booleanValue()) {
                                new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(i2).length());
                                synchronized (DynamiteModule.class) {
                                    zzqVar = p;
                                    if (zzqVar != null) {
                                        throw new LoadingException("DynamiteLoaderV2 was not cached.");
                                    }
                                    zznVar2 = (zzn) threadLocal.get();
                                    if (zznVar2 != null) {
                                    }
                                    throw new LoadingException("No result cursor");
                                }
                            }
                            new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(i2).length());
                            zzpVarH = h(context);
                            if (zzpVarH != null) {
                                throw new LoadingException("Failed to create IDynamiteLoader.");
                            }
                            Parcel parcelE3 = zzpVarH.E2(6, zzpVarH.F2());
                            i3 = parcelE3.readInt();
                            parcelE3.recycle();
                            if (i3 >= 3) {
                                zznVar = (zzn) threadLocal.get();
                                if (zznVar != null) {
                                    throw new LoadingException("No cached result cursor holder");
                                }
                                iObjectWrapperG2 = zzpVarH.J2(new ObjectWrapper(context), str, i2, new ObjectWrapper(zznVar.f29401a));
                            } else if (i3 == 2) {
                                iObjectWrapperG2 = zzpVarH.H2(new ObjectWrapper(context), str, i2);
                            } else {
                                iObjectWrapperG2 = zzpVarH.G2(new ObjectWrapper(context), str, i2);
                            }
                            objG2 = ObjectWrapper.G2(iObjectWrapperG2);
                            if (objG2 != null) {
                                throw new LoadingException("Failed to load remote module.");
                            }
                            dynamiteModule = new DynamiteModule((Context) objG2);
                            if (j2 == 0) {
                                m.remove();
                            } else {
                                m.set(l2);
                            }
                            cursor = zznVar4.f29401a;
                            if (cursor != null) {
                                cursor.close();
                            }
                            l.set(zznVar3);
                            return dynamiteModule;
                        }
                    }
                }
                int i6 = selectionResultA.f29396a;
                int i7 = selectionResultA.f29397b;
                StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 46 + String.valueOf(i6).length() + 23 + String.valueOf(i7).length() + 1);
                sb3.append("No acceptable module ");
                sb3.append(str);
                sb3.append(" found. Local version is ");
                sb3.append(i6);
                sb3.append(" and remote version is ");
                sb3.append(i7);
                sb3.append(FileUtils.HIDDEN_PREFIX);
                throw new LoadingException(sb3.toString());
            } catch (Throwable th2) {
                th = th2;
                if (j2 == 0) {
                    m.remove();
                } else {
                    m.set(l2);
                }
                Cursor cursor4 = zznVar4.f29401a;
                if (cursor4 != null) {
                    cursor4.close();
                }
                l.set(zznVar3);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            j2 = jLongValue;
        }
    }

    /* JADX WARN: Code duplicated, block: B:47:0x0098 A[Catch: all -> 0x0037, TryCatch #5 {all -> 0x0037, blocks: (B:9:0x0027, B:11:0x0033, B:48:0x00a1, B:16:0x003c, B:18:0x0042, B:20:0x0048, B:25:0x004f, B:27:0x0053, B:30:0x005c, B:32:0x0064, B:35:0x006b, B:39:0x0080, B:40:0x0088, B:38:0x0072, B:43:0x008b, B:46:0x008e, B:47:0x0098, B:17:0x003f), top: B:135:0x0027, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x0151  */
    public static int d(Context context, String str, boolean z) {
        Throwable th;
        RemoteException remoteException;
        int i2;
        Cursor cursor;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = g;
                boolean z2 = true;
                Cursor cursor2 = null;
                if (bool == null) {
                    try {
                        Field declaredField = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName()).getDeclaredField("sClassLoader");
                        synchronized (declaredField.getDeclaringClass()) {
                            try {
                                ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                                if (classLoader == ClassLoader.getSystemClassLoader()) {
                                    bool = Boolean.FALSE;
                                } else if (classLoader != null) {
                                    try {
                                        g(classLoader);
                                    } catch (LoadingException unused) {
                                    }
                                    bool = Boolean.TRUE;
                                } else {
                                    if (!e(context)) {
                                        return 0;
                                    }
                                    if (f29392i) {
                                        declaredField.set(null, ClassLoader.getSystemClassLoader());
                                        bool = Boolean.FALSE;
                                    } else {
                                        Boolean bool2 = Boolean.TRUE;
                                        if (bool2.equals(null)) {
                                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                                            bool = Boolean.FALSE;
                                        } else {
                                            try {
                                                int iF = f(context, z, str, true);
                                                String str2 = f29391h;
                                                if (str2 != null && !str2.isEmpty()) {
                                                    ClassLoader classLoaderA = zzb.a();
                                                    if (classLoaderA == null) {
                                                        String str3 = f29391h;
                                                        Preconditions.h(str3);
                                                        classLoaderA = new DelegateLastClassLoader(str3, ClassLoader.getSystemClassLoader());
                                                    }
                                                    g(classLoaderA);
                                                    declaredField.set(null, classLoaderA);
                                                    g = bool2;
                                                    return iF;
                                                }
                                                return iF;
                                            } catch (LoadingException unused2) {
                                                declaredField.set(null, ClassLoader.getSystemClassLoader());
                                                bool = Boolean.FALSE;
                                            }
                                        }
                                    }
                                }
                                g = bool;
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e2) {
                        new StringBuilder(e2.toString().length() + 30);
                        bool = Boolean.FALSE;
                    }
                }
                if (bool.booleanValue()) {
                    try {
                        return f(context, z, str, false);
                    } catch (LoadingException e3) {
                        new StringBuilder(String.valueOf(e3.getMessage()).length() + 42);
                        return 0;
                    }
                }
                zzp zzpVarH = h(context);
                try {
                    if (zzpVarH == null) {
                        return 0;
                    }
                    try {
                        Parcel parcelE2 = zzpVarH.E2(6, zzpVarH.F2());
                        int i3 = parcelE2.readInt();
                        parcelE2.recycle();
                        if (i3 >= 3) {
                            ThreadLocal threadLocal = l;
                            zzn zznVar = (zzn) threadLocal.get();
                            if (zznVar != null && (cursor = zznVar.f29401a) != null) {
                                return cursor.getInt(0);
                            }
                            Cursor cursor3 = (Cursor) ObjectWrapper.G2(zzpVarH.I2(new ObjectWrapper(context), str, z, ((Long) m.get()).longValue()));
                            if (cursor3 != null) {
                                try {
                                    if (cursor3.moveToFirst()) {
                                        i2 = cursor3.getInt(0);
                                        if (i2 > 0) {
                                            zzn zznVar2 = (zzn) threadLocal.get();
                                            if (zznVar2 == null || zznVar2.f29401a != null) {
                                                z2 = false;
                                            } else {
                                                zznVar2.f29401a = cursor3;
                                            }
                                            cursor2 = z2 ? null : cursor3;
                                        }
                                        if (cursor2 != null) {
                                            cursor2.close();
                                        }
                                    }
                                } catch (RemoteException e4) {
                                    remoteException = e4;
                                    cursor2 = cursor3;
                                    new StringBuilder(String.valueOf(remoteException.getMessage()).length() + 42);
                                    if (cursor2 == null) {
                                        return 0;
                                    }
                                    cursor2.close();
                                    return 0;
                                } catch (Throwable th3) {
                                    th = th3;
                                    cursor2 = cursor3;
                                    if (cursor2 == null) {
                                        throw th;
                                    }
                                    cursor2.close();
                                    throw th;
                                }
                            }
                            if (cursor3 == null) {
                                return 0;
                            }
                            cursor3.close();
                            return 0;
                        }
                        if (i3 == 2) {
                            ObjectWrapper objectWrapper = new ObjectWrapper(context);
                            Parcel parcelF2 = zzpVarH.F2();
                            zzc.b(parcelF2, objectWrapper);
                            parcelF2.writeString(str);
                            parcelF2.writeInt(z ? 1 : 0);
                            Parcel parcelE3 = zzpVarH.E2(5, parcelF2);
                            i2 = parcelE3.readInt();
                            parcelE3.recycle();
                        } else {
                            ObjectWrapper objectWrapper2 = new ObjectWrapper(context);
                            Parcel parcelF3 = zzpVarH.F2();
                            zzc.b(parcelF3, objectWrapper2);
                            parcelF3.writeString(str);
                            parcelF3.writeInt(z ? 1 : 0);
                            Parcel parcelE4 = zzpVarH.E2(3, parcelF3);
                            i2 = parcelE4.readInt();
                            parcelE4.recycle();
                        }
                        return i2;
                    } catch (RemoteException e5) {
                        remoteException = e5;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            }
        } catch (Throwable th5) {
            try {
                Preconditions.h(context);
                throw th5;
            } catch (Exception unused3) {
                throw th5;
            }
        }
    }

    public static boolean e(Context context) {
        ApplicationInfo applicationInfo;
        Boolean bool = Boolean.TRUE;
        if (bool.equals(null) || bool.equals(f29394k)) {
            return true;
        }
        boolean z = false;
        if (f29394k == null) {
            ProviderInfo providerInfoResolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.chimera", 268435456);
            if (GoogleApiAvailabilityLight.f28964b.b(context, 10000000) == 0 && providerInfoResolveContentProvider != null && "com.google.android.gms".equals(providerInfoResolveContentProvider.packageName)) {
                z = true;
            }
            f29394k = Boolean.valueOf(z);
            if (z && (applicationInfo = providerInfoResolveContentProvider.applicationInfo) != null && (applicationInfo.flags & 129) == 0) {
                f29392i = true;
            }
        }
        return z;
    }

    /* JADX WARN: Code duplicated, block: B:85:0x013a A[PHI: r3
      0x013a: PHI (r3v4 boolean) = (r3v3 boolean), (r3v6 boolean) binds: [B:58:0x00f1, B:83:0x0137] A[DONT_GENERATE, DONT_INLINE]] */
    public static int f(Context context, boolean z, String str, boolean z2) throws Throwable {
        Exception exc;
        Throwable th;
        MatrixCursor matrixCursor;
        boolean z3;
        MatrixCursor matrixCursor2 = null;
        try {
            try {
                boolean z4 = true;
                Uri uriBuild = new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").path(true != z ? "api" : "api_force_staging").appendPath(str).appendQueryParameter("requestStartUptime", String.valueOf(((Long) m.get()).longValue())).build();
                ContentProviderClient contentProviderClientAcquireUnstableContentProviderClient = context.getContentResolver().acquireUnstableContentProviderClient(uriBuild);
                boolean z5 = false;
                if (contentProviderClientAcquireUnstableContentProviderClient == null) {
                    matrixCursor = null;
                } else {
                    try {
                        Cursor cursorQuery = contentProviderClientAcquireUnstableContentProviderClient.query(uriBuild, null, null, null, null);
                        if (cursorQuery == null) {
                            contentProviderClientAcquireUnstableContentProviderClient.release();
                            matrixCursor = null;
                        } else {
                            try {
                                int count = cursorQuery.getCount();
                                int columnCount = cursorQuery.getColumnCount();
                                matrixCursor = new MatrixCursor(cursorQuery.getColumnNames(), count);
                                for (int i2 = 0; i2 < count; i2++) {
                                    if (!cursorQuery.moveToPosition(i2)) {
                                        throw new RemoteException("Cursor read incomplete (ContentProvider dead?)");
                                    }
                                    Object[] objArr = new Object[columnCount];
                                    for (int i3 = 0; i3 < columnCount; i3++) {
                                        int type = cursorQuery.getType(i3);
                                        if (type == 0) {
                                            objArr[i3] = null;
                                        } else if (type == 1) {
                                            objArr[i3] = Long.valueOf(cursorQuery.getLong(i3));
                                        } else if (type == 2) {
                                            objArr[i3] = Double.valueOf(cursorQuery.getDouble(i3));
                                        } else if (type == 3) {
                                            objArr[i3] = cursorQuery.getString(i3);
                                        } else {
                                            if (type != 4) {
                                                throw new RemoteException("Unknown column type");
                                            }
                                            objArr[i3] = cursorQuery.getBlob(i3);
                                        }
                                    }
                                    matrixCursor.addRow(objArr);
                                }
                                cursorQuery.close();
                                contentProviderClientAcquireUnstableContentProviderClient.release();
                            } catch (Throwable th2) {
                                try {
                                    cursorQuery.close();
                                    throw th2;
                                } catch (Throwable th3) {
                                    th2.addSuppressed(th3);
                                    throw th2;
                                }
                            }
                        }
                    } catch (RemoteException unused) {
                    } catch (Throwable th4) {
                        contentProviderClientAcquireUnstableContentProviderClient.release();
                        throw th4;
                    }
                }
                if (matrixCursor != null) {
                    try {
                        if (matrixCursor.moveToFirst()) {
                            int i4 = matrixCursor.getInt(0);
                            if (i4 > 0) {
                                synchronized (DynamiteModule.class) {
                                    try {
                                        f29391h = matrixCursor.getString(2);
                                        int columnIndex = matrixCursor.getColumnIndex("loaderVersion");
                                        if (columnIndex >= 0) {
                                            f29393j = matrixCursor.getInt(columnIndex);
                                        }
                                        int columnIndex2 = matrixCursor.getColumnIndex("disableStandaloneDynamiteLoader2");
                                        if (columnIndex2 >= 0) {
                                            z3 = matrixCursor.getInt(columnIndex2) != 0;
                                            f29392i = z3;
                                        } else {
                                            z3 = false;
                                        }
                                    } catch (Throwable th5) {
                                        throw th5;
                                    }
                                }
                                zzn zznVar = (zzn) l.get();
                                if (zznVar == null || zznVar.f29401a != null) {
                                    z4 = false;
                                } else {
                                    zznVar.f29401a = matrixCursor;
                                }
                                z5 = z3;
                                matrixCursor2 = z4 ? null : matrixCursor;
                            }
                            if (z2 && z5) {
                                throw new LoadingException("forcing fallback to container DynamiteLoader impl");
                            }
                            if (matrixCursor2 != null) {
                                matrixCursor2.close();
                            }
                            return i4;
                        }
                    } catch (Exception e2) {
                        exc = e2;
                        if (exc instanceof LoadingException) {
                            throw exc;
                        }
                        String message = exc.getMessage();
                        StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 25);
                        sb.append("V2 version check failed: ");
                        sb.append(message);
                        throw new LoadingException(sb.toString(), exc);
                    } catch (Throwable th6) {
                        th = th6;
                        matrixCursor2 = matrixCursor;
                        if (matrixCursor2 == null) {
                            throw th;
                        }
                        matrixCursor2.close();
                        throw th;
                    }
                }
                throw new LoadingException("Failed to connect to dynamite module ContentResolver.");
            } catch (Throwable th7) {
                th = th7;
            }
        } catch (Exception e3) {
            exc = e3;
        }
    }

    public static void g(ClassLoader classLoader) throws LoadingException {
        try {
            zzq zzqVar = null;
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(null).newInstance(null);
            if (iBinder != null) {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                zzqVar = iInterfaceQueryLocalInterface instanceof zzq ? (zzq) iInterfaceQueryLocalInterface : new zzq(iBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2");
            }
            p = zzqVar;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e2) {
            throw new LoadingException("Failed to instantiate dynamite loader", e2);
        }
    }

    public static zzp h(Context context) {
        zzp zzpVar;
        synchronized (DynamiteModule.class) {
            zzp zzpVar2 = o;
            if (zzpVar2 != null) {
                return zzpVar2;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                if (iBinder == null) {
                    zzpVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    zzpVar = iInterfaceQueryLocalInterface instanceof zzp ? (zzp) iInterfaceQueryLocalInterface : new zzp(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader");
                }
                if (zzpVar != null) {
                    o = zzpVar;
                    return zzpVar;
                }
            } catch (Exception e2) {
                new StringBuilder(String.valueOf(e2.getMessage()).length() + 45);
            }
            return null;
        }
    }

    public final IBinder b(String str) throws LoadingException {
        try {
            return (IBinder) this.f29395a.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e2) {
            throw new LoadingException("Failed to instantiate module class: ".concat(str), e2);
        }
    }
}
