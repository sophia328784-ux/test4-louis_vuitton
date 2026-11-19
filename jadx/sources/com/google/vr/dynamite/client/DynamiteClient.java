package com.google.vr.dynamite.client;

import android.content.Context;
import android.os.RemoteException;
import android.util.ArrayMap;
import dalvik.system.DexClassLoader;

/* JADX INFO: loaded from: classes2.dex */
public final class DynamiteClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ArrayMap f35676a = new ArrayMap();

    public static synchronized int checkVersion(Context context, String str, String str2, String str3) {
        f fVar = new f(str, str2);
        e remoteLibraryLoaderFromInfo = getRemoteLibraryLoaderFromInfo(fVar);
        try {
            INativeLibraryLoader iNativeLibraryLoaderNewNativeLibraryLoader = remoteLibraryLoaderFromInfo.a(context).newNativeLibraryLoader(new ObjectWrapper(remoteLibraryLoaderFromInfo.b(context)), new ObjectWrapper(context));
            if (iNativeLibraryLoaderNewNativeLibraryLoader == null) {
                new StringBuilder(fVar.toString().length() + 72);
                return -1;
            }
            return iNativeLibraryLoaderNewNativeLibraryLoader.checkVersion(str3);
        } catch (RemoteException | d | IllegalArgumentException | IllegalStateException | SecurityException | UnsatisfiedLinkError unused) {
            new StringBuilder(fVar.toString().length() + 54);
            return -1;
        }
    }

    public static synchronized ClassLoader getRemoteClassLoader(Context context, String str, String str2) {
        Context remoteContext = getRemoteContext(context, str, str2);
        if (remoteContext == null) {
            return null;
        }
        return remoteContext.getClassLoader();
    }

    public static synchronized Context getRemoteContext(Context context, String str, String str2) {
        f fVar;
        fVar = new f(str, str2);
        try {
        } catch (d unused) {
            new StringBuilder(fVar.toString().length() + 52);
            return null;
        }
        return getRemoteLibraryLoaderFromInfo(fVar).b(context);
    }

    public static synchronized ClassLoader getRemoteDexClassLoader(Context context, String str) {
        Context remoteContext = getRemoteContext(context, str, null);
        if (remoteContext == null) {
            return null;
        }
        try {
            return new DexClassLoader(remoteContext.getPackageCodePath(), context.getCodeCacheDir().getAbsolutePath(), remoteContext.getApplicationInfo().nativeLibraryDir, context.getClassLoader());
        } catch (RuntimeException unused) {
            return null;
        }
    }

    private static synchronized e getRemoteLibraryLoaderFromInfo(f fVar) {
        ArrayMap arrayMap = f35676a;
        e eVar = (e) arrayMap.get(fVar);
        if (eVar != null) {
            return eVar;
        }
        e eVar2 = new e(fVar);
        arrayMap.put(fVar, eVar2);
        return eVar2;
    }

    public static synchronized long loadNativeRemoteLibrary(Context context, String str, String str2) {
        f fVar = new f(str, str2);
        e remoteLibraryLoaderFromInfo = getRemoteLibraryLoaderFromInfo(fVar);
        try {
            INativeLibraryLoader iNativeLibraryLoaderNewNativeLibraryLoader = remoteLibraryLoaderFromInfo.a(context).newNativeLibraryLoader(new ObjectWrapper(remoteLibraryLoaderFromInfo.b(context)), new ObjectWrapper(context));
            if (iNativeLibraryLoaderNewNativeLibraryLoader == null) {
                new StringBuilder(fVar.toString().length() + 72);
                return 0L;
            }
            return iNativeLibraryLoaderNewNativeLibraryLoader.initializeAndLoadNativeLibrary(str2);
        } catch (RemoteException | d | IllegalArgumentException | IllegalStateException | SecurityException | UnsatisfiedLinkError unused) {
            new StringBuilder(fVar.toString().length() + 54);
            return 0L;
        }
    }
}
