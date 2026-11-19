package com.google.firebase.crashlytics.internal.metadata;

import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import com.google.firebase.crashlytics.internal.persistence.FileStore;
import defpackage.tr;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicMarkableReference;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public class UserMetadata {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MetaDataStore f34635a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CrashlyticsWorkers f34636b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f34637c;
    public final SerializeableKeysMap d = new SerializeableKeysMap(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SerializeableKeysMap f34638e = new SerializeableKeysMap(true);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RolloutAssignmentList f34639f = new RolloutAssignmentList(128);
    public final AtomicMarkableReference g = new AtomicMarkableReference(null, false);

    public class SerializeableKeysMap {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AtomicMarkableReference f34640a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AtomicReference f34641b = new AtomicReference(null);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f34642c;

        public SerializeableKeysMap(boolean z) {
            this.f34642c = z;
            this.f34640a = new AtomicMarkableReference(new KeysMap(64, z ? 8192 : 1024), false);
        }

        public final boolean a(String str, String str2) {
            synchronized (this) {
                try {
                    if (!((KeysMap) this.f34640a.getReference()).b(str, str2)) {
                        return false;
                    }
                    AtomicMarkableReference atomicMarkableReference = this.f34640a;
                    atomicMarkableReference.set((KeysMap) atomicMarkableReference.getReference(), true);
                    Runnable runnable = new Runnable() { // from class: com.google.firebase.crashlytics.internal.metadata.b
                        @Override // java.lang.Runnable
                        public final void run() throws Throwable {
                            UserMetadata.SerializeableKeysMap serializeableKeysMap = this.f34646b;
                            Map mapUnmodifiableMap = null;
                            serializeableKeysMap.f34641b.set(null);
                            synchronized (serializeableKeysMap) {
                                if (serializeableKeysMap.f34640a.isMarked()) {
                                    KeysMap keysMap = (KeysMap) serializeableKeysMap.f34640a.getReference();
                                    synchronized (keysMap) {
                                        mapUnmodifiableMap = Collections.unmodifiableMap(new HashMap(keysMap.f34605a));
                                    }
                                    AtomicMarkableReference atomicMarkableReference2 = serializeableKeysMap.f34640a;
                                    atomicMarkableReference2.set((KeysMap) atomicMarkableReference2.getReference(), false);
                                }
                            }
                            if (mapUnmodifiableMap != null) {
                                UserMetadata userMetadata = UserMetadata.this;
                                userMetadata.f34635a.h(userMetadata.f34637c, mapUnmodifiableMap, serializeableKeysMap.f34642c);
                            }
                        }
                    };
                    AtomicReference atomicReference = this.f34641b;
                    while (!atomicReference.compareAndSet(null, runnable)) {
                        if (atomicReference.get() != null) {
                            return true;
                        }
                    }
                    UserMetadata.this.f34636b.f34591b.a(runnable);
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public UserMetadata(String str, FileStore fileStore, CrashlyticsWorkers crashlyticsWorkers) {
        this.f34637c = str;
        this.f34635a = new MetaDataStore(fileStore);
        this.f34636b = crashlyticsWorkers;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v12, types: [java.io.Closeable, java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r8v10, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v17 */
    public static UserMetadata c(String str, FileStore fileStore, CrashlyticsWorkers crashlyticsWorkers) throws Throwable {
        List listB;
        ?? fileInputStream;
        Throwable th;
        MetaDataStore metaDataStore = new MetaDataStore(fileStore);
        UserMetadata userMetadata = new UserMetadata(str, fileStore, crashlyticsWorkers);
        ((KeysMap) userMetadata.d.f34640a.getReference()).c(metaDataStore.c(str, false));
        ((KeysMap) userMetadata.f34638e.f34640a.getReference()).c(metaDataStore.c(str, true));
        userMetadata.g.set(metaDataStore.d(str), false);
        RolloutAssignmentList rolloutAssignmentList = userMetadata.f34639f;
        File fileB = metaDataStore.f34612a.b(str, "rollouts-state");
        if (!fileB.exists() || fileB.length() == 0) {
            MetaDataStore.g(fileB, tr.g("The file has a length of zero for session: ", str));
            listB = Collections.EMPTY_LIST;
        } else {
            listB = null;
            ?? r8 = 0;
            try {
                try {
                    fileInputStream = new FileInputStream(fileB);
                    try {
                        listB = MetaDataStore.b(CommonUtils.j(fileInputStream));
                        Logger logger = Logger.f34483b;
                        listB.toString();
                        logger.a(3);
                        CommonUtils.b(fileInputStream);
                    } catch (Exception unused) {
                        r8 = fileInputStream;
                        Logger.f34483b.a(5);
                        MetaDataStore.f(fileB);
                        CommonUtils.b(r8);
                        listB = Collections.EMPTY_LIST;
                    } catch (Throwable th2) {
                        th = th2;
                        CommonUtils.b(fileInputStream);
                        throw th;
                    }
                } catch (Throwable th3) {
                    fileInputStream = listB;
                    th = th3;
                }
            } catch (Exception unused2) {
            }
        }
        synchronized (rolloutAssignmentList) {
            rolloutAssignmentList.f34633a.clear();
            if (listB.size() > rolloutAssignmentList.f34634b) {
                Logger.f34483b.a(5);
                rolloutAssignmentList.f34633a.addAll(listB.subList(0, rolloutAssignmentList.f34634b));
            } else {
                rolloutAssignmentList.f34633a.addAll(listB);
            }
        }
        return userMetadata;
    }

    public static String d(String str, FileStore fileStore) {
        return new MetaDataStore(fileStore).d(str);
    }

    public final Map a(Map map) {
        Map mapUnmodifiableMap;
        Map mapUnmodifiableMap2;
        boolean zIsEmpty = map.isEmpty();
        SerializeableKeysMap serializeableKeysMap = this.d;
        if (zIsEmpty) {
            KeysMap keysMap = (KeysMap) serializeableKeysMap.f34640a.getReference();
            synchronized (keysMap) {
                mapUnmodifiableMap2 = Collections.unmodifiableMap(new HashMap(keysMap.f34605a));
            }
            return mapUnmodifiableMap2;
        }
        KeysMap keysMap2 = (KeysMap) serializeableKeysMap.f34640a.getReference();
        synchronized (keysMap2) {
            mapUnmodifiableMap = Collections.unmodifiableMap(new HashMap(keysMap2.f34605a));
        }
        HashMap map2 = new HashMap(mapUnmodifiableMap);
        int i2 = 0;
        for (Map.Entry entry : map.entrySet()) {
            String strA = KeysMap.a(1024, (String) entry.getKey());
            if (map2.size() < 64 || map2.containsKey(strA)) {
                map2.put(strA, KeysMap.a(1024, (String) entry.getValue()));
            } else {
                i2++;
            }
        }
        if (i2 > 0) {
            Logger.f34483b.a(5);
        }
        return Collections.unmodifiableMap(map2);
    }

    public final Map b() {
        Map mapUnmodifiableMap;
        KeysMap keysMap = (KeysMap) this.f34638e.f34640a.getReference();
        synchronized (keysMap) {
            mapUnmodifiableMap = Collections.unmodifiableMap(new HashMap(keysMap.f34605a));
        }
        return mapUnmodifiableMap;
    }

    public final void e(String str, String str2) {
        this.d.a(str, str2);
    }

    public final void f(String str) {
        this.f34638e.a("com.crashlytics.version-control-info", str);
    }

    public final void g(final String str) {
        final Map mapUnmodifiableMap;
        final List listUnmodifiableList;
        synchronized (this.f34637c) {
            this.f34637c = str;
            KeysMap keysMap = (KeysMap) this.d.f34640a.getReference();
            synchronized (keysMap) {
                mapUnmodifiableMap = Collections.unmodifiableMap(new HashMap(keysMap.f34605a));
            }
            RolloutAssignmentList rolloutAssignmentList = this.f34639f;
            synchronized (rolloutAssignmentList) {
                listUnmodifiableList = Collections.unmodifiableList(new ArrayList(rolloutAssignmentList.f34633a));
            }
            this.f34636b.f34591b.a(new Runnable() { // from class: com.google.firebase.crashlytics.internal.metadata.a
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    BufferedWriter bufferedWriter;
                    UserMetadata userMetadata = this.f34643b;
                    MetaDataStore metaDataStore = userMetadata.f34635a;
                    AtomicMarkableReference atomicMarkableReference = userMetadata.g;
                    String str2 = (String) atomicMarkableReference.getReference();
                    String str3 = str;
                    BufferedWriter bufferedWriter2 = null;
                    if (str2 != null) {
                        String str4 = (String) atomicMarkableReference.getReference();
                        File fileB = metaDataStore.f34612a.b(str3, "user-data");
                        try {
                            MetaDataStore.AnonymousClass1 anonymousClass1 = new MetaDataStore.AnonymousClass1();
                            anonymousClass1.put("userId", str4);
                            String string = anonymousClass1.toString();
                            bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(fileB), MetaDataStore.f34611b));
                            try {
                                try {
                                    bufferedWriter.write(string);
                                    bufferedWriter.flush();
                                } catch (Exception unused) {
                                    Logger.f34483b.a(5);
                                }
                            } catch (Throwable th) {
                                th = th;
                                bufferedWriter2 = bufferedWriter;
                                CommonUtils.b(bufferedWriter2);
                                throw th;
                            }
                        } catch (Exception unused2) {
                            bufferedWriter = null;
                        } catch (Throwable th2) {
                            th = th2;
                            CommonUtils.b(bufferedWriter2);
                            throw th;
                        }
                        CommonUtils.b(bufferedWriter);
                    }
                    Map map = mapUnmodifiableMap;
                    if (!map.isEmpty()) {
                        metaDataStore.h(str3, map, false);
                    }
                    List list = listUnmodifiableList;
                    if (list.isEmpty()) {
                        return;
                    }
                    File fileB2 = metaDataStore.f34612a.b(str3, "rollouts-state");
                    if (list.isEmpty()) {
                        MetaDataStore.g(fileB2, tr.g("Rollout state is empty for session: ", str3));
                        return;
                    }
                    try {
                        try {
                            String strE = MetaDataStore.e(list);
                            BufferedWriter bufferedWriter3 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(fileB2), MetaDataStore.f34611b));
                            try {
                                bufferedWriter3.write(strE);
                                bufferedWriter3.flush();
                                CommonUtils.b(bufferedWriter3);
                            } catch (Exception unused3) {
                                bufferedWriter2 = bufferedWriter3;
                                Logger.f34483b.a(5);
                                MetaDataStore.f(fileB2);
                                CommonUtils.b(bufferedWriter2);
                            } catch (Throwable th3) {
                                th = th3;
                                bufferedWriter2 = bufferedWriter3;
                                CommonUtils.b(bufferedWriter2);
                                throw th;
                            }
                        } catch (Exception unused4) {
                        }
                    } catch (Throwable th4) {
                        th = th4;
                    }
                }
            });
        }
    }
}
