package com.appsflyer.internal;

import android.content.Context;
import android.util.Base64;
import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import defpackage.fc;
import defpackage.mt;
import defpackage.n00;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.text.Charsets;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class AFc1uSDK implements AFc1vSDK {
    private final AFc1qSDK AFKeystoreWrapper;
    private final Map<String, Integer> AFLogger;
    private final AFc1kSDK d;
    private final AFd1zSDK registerClient;

    public AFc1uSDK(AFd1zSDK aFd1zSDK, AFc1kSDK aFc1kSDK) {
        aFd1zSDK.getClass();
        aFc1kSDK.getClass();
        this.registerClient = aFd1zSDK;
        this.d = aFc1kSDK;
        this.AFKeystoreWrapper = new AFc1qSDK(CollectionsKt.P(new AFc1pSDK("ConversionsCache", CollectionsKt.O(AFd1bSDK.CONVERSION), 1), new AFc1pSDK("AttrCache", CollectionsKt.O(AFd1bSDK.ATTR), 1), new AFc1pSDK("OtherCache", CollectionsKt.P(AFd1bSDK.LAUNCH, AFd1bSDK.INAPP, AFd1bSDK.ADREVENUE, AFd1bSDK.ARS_VALIDATE, AFd1bSDK.PURCHASE_VALIDATE, AFd1bSDK.MANUAL_PURCHASE_VALIDATION), 40)));
        this.AFLogger = MapsKt.j(new Pair("ConversionsCache", 0), new Pair("AttrCache", 0), new Pair("OtherCache", 0));
    }

    @Override // com.appsflyer.internal.AFc1vSDK
    public final List<AFc1sSDK> AFKeystoreWrapper() {
        AFLoggerBase.i$default(AFLogger.INSTANCE, LogTag.CACHE, "Get Cached Requests", false, 4, null);
        ArrayList arrayList = new ArrayList();
        ArrayList<File> arrayList2 = new ArrayList();
        try {
            Context context = this.registerClient.d;
            context.getClass();
            if (!new File(context.getFilesDir(), "AFRequestCache").exists()) {
                Context context2 = this.registerClient.d;
                context2.getClass();
                new File(context2.getFilesDir(), "AFRequestCache").mkdir();
            }
            Iterator<T> it = this.AFKeystoreWrapper.d.iterator();
            while (it.hasNext()) {
                String str = ((AFc1pSDK) it.next()).d;
                Context context3 = this.registerClient.d;
                context3.getClass();
                File file = new File(new File(context3.getFilesDir(), "AFRequestCache"), str);
                if (!file.exists()) {
                    file.mkdirs();
                }
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles == null) {
                    fileArrListFiles = new File[0];
                }
                CollectionsKt.k(arrayList2, fileArrListFiles);
            }
            for (File file2 : arrayList2) {
                AFLoggerBase.i$default(AFLogger.INSTANCE, LogTag.CACHE, "Found cached request: " + file2.getName(), false, 4, null);
                AFc1sSDK aFc1sSDKUnregisterClient = unregisterClient(file2);
                if (aFc1sSDKUnregisterClient != null) {
                    arrayList.add(aFc1sSDKUnregisterClient);
                }
            }
        } catch (Exception e2) {
            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.CACHE, "Could not get cached requests", e2, false, false, false, false, 120, null);
        }
        AFLoggerBase.i$default(AFLogger.INSTANCE, LogTag.CACHE, n00.m(arrayList.size(), "Found ", " Cached Requests"), false, 4, null);
        return arrayList;
    }

    @Override // com.appsflyer.internal.AFc1vSDK
    public final boolean AFLogger(String str) {
        if (str == null) {
            return false;
        }
        Context context = this.registerClient.d;
        context.getClass();
        if (!new File(context.getFilesDir(), "AFRequestCache").exists()) {
            Context context2 = this.registerClient.d;
            context2.getClass();
            new File(context2.getFilesDir(), "AFRequestCache").mkdir();
            return true;
        }
        AFLoggerBase.i$default(AFLogger.INSTANCE, LogTag.CACHE, fc.h("Deleting ", str, " from cache"), false, 4, null);
        Iterator<T> it = this.AFKeystoreWrapper.d.iterator();
        while (it.hasNext()) {
            String str2 = ((AFc1pSDK) it.next()).d;
            Context context3 = this.registerClient.d;
            context3.getClass();
            File file = new File(new File(new File(context3.getFilesDir(), "AFRequestCache"), str2), str);
            if (file.exists()) {
                return registerClient(file);
            }
        }
        return true;
    }

    @Override // com.appsflyer.internal.AFc1vSDK
    public final void d() {
        try {
            if (this.d.AFLogger("AF_CACHE_VERSION", -1) == 3) {
                Context context = this.registerClient.d;
                context.getClass();
                if (!new File(context.getFilesDir(), "AFRequestCache").exists()) {
                    Context context2 = this.registerClient.d;
                    context2.getClass();
                    new File(context2.getFilesDir(), "AFRequestCache").mkdir();
                }
            } else {
                this.d.d("AF_CACHE_VERSION", 3);
                Context context3 = this.registerClient.d;
                context3.getClass();
                if (new File(context3.getFilesDir(), "AFRequestCache").exists()) {
                    Context context4 = this.registerClient.d;
                    context4.getClass();
                    FilesKt.b(new File(context4.getFilesDir(), "AFRequestCache"));
                    Context context5 = this.registerClient.d;
                    context5.getClass();
                    new File(context5.getFilesDir(), "AFRequestCache").mkdir();
                }
            }
            registerClient();
        } catch (Exception e2) {
            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.CACHE, "Could not init cache", e2, false, false, false, false, 120, null);
        }
    }

    @Override // com.appsflyer.internal.AFc1vSDK
    public final String registerClient(AFc1sSDK aFc1sSDK) {
        Exception exc;
        File file;
        String str;
        List<File> listQ0;
        aFc1sSDK.getClass();
        try {
            AFe1zSDK aFe1zSDK = aFc1sSDK.AFLogger;
            aFe1zSDK.getClass();
            Context context = this.registerClient.d;
            context.getClass();
            File file2 = new File(new File(context.getFilesDir(), "AFRequestCache"), unregisterClient(aFe1zSDK));
            if (!file2.exists()) {
                file2.mkdirs();
            }
            AFLogger aFLogger = AFLogger.INSTANCE;
            LogTag logTag = LogTag.CACHE;
            AFLoggerBase.i$default(aFLogger, logTag, "Caching request with URL: " + aFc1sSDK.unregisterClient, false, 4, null);
            String strValueOf = String.valueOf(System.currentTimeMillis());
            file = new File(file2, strValueOf);
            try {
                file.createNewFile();
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file.getPath(), true), Charset.defaultCharset());
                try {
                    outputStreamWriter.write("version=");
                    outputStreamWriter.write(aFc1sSDK.AFKeystoreWrapper);
                    outputStreamWriter.write(10);
                    outputStreamWriter.write("url=");
                    outputStreamWriter.write(aFc1sSDK.unregisterClient);
                    outputStreamWriter.write(10);
                    outputStreamWriter.write("data=");
                    outputStreamWriter.write(Base64.encodeToString(aFc1sSDK.d, 2));
                    outputStreamWriter.write(10);
                    AFe1zSDK aFe1zSDK2 = aFc1sSDK.AFLogger;
                    outputStreamWriter.write("type=");
                    outputStreamWriter.write(aFe1zSDK2.unregisterClient());
                    outputStreamWriter.write(10);
                    Map<String, String> map = aFc1sSDK.f22612e;
                    if (map != null && !map.isEmpty()) {
                        outputStreamWriter.write("headers=");
                        Map<String, String> map2 = aFc1sSDK.f22612e;
                        map2.getClass();
                        String string = new JSONObject(map2).toString();
                        string.getClass();
                        byte[] bytes = string.getBytes(Charsets.UTF_8);
                        bytes.getClass();
                        outputStreamWriter.write(Base64.encodeToString(bytes, 2));
                        outputStreamWriter.write(10);
                    }
                    outputStreamWriter.flush();
                    outputStreamWriter.close();
                    AFLoggerBase.i$default(aFLogger, logTag, "Cache request: done, cacheKey: " + strValueOf, false, 4, null);
                    AFe1zSDK aFe1zSDK3 = aFc1sSDK.AFLogger;
                    aFe1zSDK3.getClass();
                    AFc1pSDK aFc1pSDKRegisterClient = registerClient(aFe1zSDK3);
                    Integer numValueOf = aFc1pSDKRegisterClient != null ? Integer.valueOf(aFc1pSDKRegisterClient.AFKeystoreWrapper) : null;
                    if (numValueOf == null) {
                        return strValueOf;
                    }
                    int iIntValue = numValueOf.intValue();
                    Map<String, Integer> map3 = this.AFLogger;
                    AFc1pSDK aFc1pSDKRegisterClient2 = registerClient(aFe1zSDK3);
                    if (aFc1pSDKRegisterClient2 == null || (str = aFc1pSDKRegisterClient2.d) == null) {
                        throw new UnsupportedOperationException("Cache do not support this type of events");
                    }
                    Integer num = map3.get(str);
                    int iIntValue2 = num != null ? num.intValue() : 0;
                    if (iIntValue2 >= iIntValue) {
                        int i2 = (iIntValue2 + 1) - iIntValue;
                        AFLoggerBase.i$default(aFLogger, logTag, "Cache overflown for type " + aFe1zSDK3 + ", removing " + i2 + " item(s)", false, 4, null);
                        Context context2 = this.registerClient.d;
                        context2.getClass();
                        File file3 = new File(new File(context2.getFilesDir(), "AFRequestCache"), unregisterClient(aFe1zSDK3));
                        if (!file3.exists()) {
                            file3.mkdirs();
                        }
                        File[] fileArrListFiles = file3.listFiles();
                        if (fileArrListFiles != null && (listQ0 = CollectionsKt.q0(ArraysKt.R(new Comparator() { // from class: com.appsflyer.internal.AFc1uSDK.2
                            /* JADX WARN: Multi-variable type inference failed */
                            @Override // java.util.Comparator
                            public final int compare(T t, T t2) {
                                return ComparisonsKt.a(((File) t).getName(), ((File) t2).getName());
                            }
                        }, fileArrListFiles), i2)) != null) {
                            for (File file4 : listQ0) {
                                file4.delete();
                                AFLoggerBase.i$default(AFLogger.INSTANCE, LogTag.CACHE, "Cache entry " + file4.getName() + " removed", false, 4, null);
                            }
                        }
                    }
                    registerClient();
                    return strValueOf;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.a(outputStreamWriter, th);
                        throw th2;
                    }
                }
            } catch (Exception e2) {
                exc = e2;
                if (file != null) {
                    file.delete();
                }
                AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.CACHE, "Could not cache request", exc, false, false, false, false, 120, null);
                return null;
            }
        } catch (Exception e3) {
            exc = e3;
            file = null;
        }
    }

    @Override // com.appsflyer.internal.AFc1vSDK
    public final void unregisterClient() {
        try {
            Context context = this.registerClient.d;
            context.getClass();
            if (!new File(context.getFilesDir(), "AFRequestCache").exists()) {
                Context context2 = this.registerClient.d;
                context2.getClass();
                new File(context2.getFilesDir(), "AFRequestCache").mkdir();
                return;
            }
            Iterator<T> it = this.AFKeystoreWrapper.d.iterator();
            while (it.hasNext()) {
                String str = ((AFc1pSDK) it.next()).d;
                Context context3 = this.registerClient.d;
                context3.getClass();
                File[] fileArrListFiles = new File(new File(context3.getFilesDir(), "AFRequestCache"), str).listFiles();
                if (fileArrListFiles != null) {
                    for (File file : fileArrListFiles) {
                        AFLogger aFLogger = AFLogger.INSTANCE;
                        LogTag logTag = LogTag.CACHE;
                        AFLoggerBase.i$default(aFLogger, logTag, "ClearCache : Found cached request " + file.getName(), false, 4, null);
                        AFLoggerBase.i$default(aFLogger, logTag, "Deleting " + file.getName() + " from cache", false, 4, null);
                        file.delete();
                    }
                }
            }
            Context context4 = this.registerClient.d;
            context4.getClass();
            FilesKt.b(new File(context4.getFilesDir(), "AFRequestCache"));
            registerClient();
        } catch (Exception e2) {
            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.CACHE, "Could not clearCache request", e2, false, false, false, false, 120, null);
        }
    }

    private static AFc1sSDK unregisterClient(File file) {
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(file), Charset.defaultCharset());
            try {
                char[] cArr = new char[(int) file.length()];
                inputStreamReader.read(cArr);
                AFc1sSDK aFc1sSDK = new AFc1sSDK(cArr);
                aFc1sSDK.registerClient = file.getName();
                inputStreamReader.close();
                return aFc1sSDK;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.a(inputStreamReader, th);
                    throw th2;
                }
            }
        } catch (Exception e2) {
            AFLogger.INSTANCE.e(LogTag.CACHE, "Error while loading request from cache", e2, false, false, true, false);
            return null;
        }
    }

    private final String unregisterClient(AFe1zSDK aFe1zSDK) {
        String str;
        AFc1pSDK aFc1pSDKRegisterClient = registerClient(aFe1zSDK);
        if (aFc1pSDKRegisterClient != null && (str = aFc1pSDKRegisterClient.d) != null) {
            return str;
        }
        mt.i("Cache do not support this type of events");
        return null;
    }

    private final boolean registerClient(File file) {
        try {
            file.delete();
            registerClient();
            return true;
        } catch (Exception e2) {
            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.CACHE, fc.h("Could not delete ", file.getName(), " from cache"), e2, false, false, false, false, 120, null);
            return false;
        }
    }

    private final AFc1pSDK registerClient(AFe1zSDK aFe1zSDK) {
        Object next;
        Iterator<T> it = this.AFKeystoreWrapper.d.iterator();
        while (it.hasNext()) {
            next = it.next();
            if (((AFc1pSDK) next).unregisterClient.contains(aFe1zSDK)) {
                return (AFc1pSDK) next;
            }
        }
        next = null;
        return (AFc1pSDK) next;
    }

    private final void registerClient() {
        for (AFc1pSDK aFc1pSDK : this.AFKeystoreWrapper.d) {
            String str = aFc1pSDK.d;
            Context context = this.registerClient.d;
            context.getClass();
            File file = new File(new File(context.getFilesDir(), "AFRequestCache"), str);
            if (!file.exists()) {
                file.mkdirs();
                this.AFLogger.put(aFc1pSDK.d, 0);
            } else {
                Map<String, Integer> map = this.AFLogger;
                String str2 = aFc1pSDK.d;
                File[] fileArrListFiles = file.listFiles();
                map.put(str2, Integer.valueOf(fileArrListFiles != null ? fileArrListFiles.length : 0));
            }
        }
    }
}
