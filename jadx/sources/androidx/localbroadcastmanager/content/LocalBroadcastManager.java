package androidx.localbroadcastmanager.content;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class LocalBroadcastManager {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Object f13637f = new Object();
    public static LocalBroadcastManager g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f13638a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f13639b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f13640c = new HashMap();
    public final ArrayList d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Handler f13641e;

    public static final class BroadcastRecord {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Intent f13642a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayList f13643b;

        public BroadcastRecord(Intent intent, ArrayList arrayList) {
            this.f13642a = intent;
            this.f13643b = arrayList;
        }
    }

    public static final class ReceiverRecord {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final IntentFilter f13644a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final BroadcastReceiver f13645b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f13646c;
        public boolean d;

        public ReceiverRecord(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.f13644a = intentFilter;
            this.f13645b = broadcastReceiver;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.f13645b);
            sb.append(" filter=");
            sb.append(this.f13644a);
            if (this.d) {
                sb.append(" DEAD");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    public LocalBroadcastManager(Context context) {
        this.f13638a = context;
        this.f13641e = new Handler(context.getMainLooper()) { // from class: androidx.localbroadcastmanager.content.LocalBroadcastManager.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int size;
                BroadcastRecord[] broadcastRecordArr;
                if (message.what != 1) {
                    super.handleMessage(message);
                    return;
                }
                LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.this;
                while (true) {
                    synchronized (localBroadcastManager.f13639b) {
                        try {
                            size = localBroadcastManager.d.size();
                            if (size <= 0) {
                                return;
                            }
                            broadcastRecordArr = new BroadcastRecord[size];
                            localBroadcastManager.d.toArray(broadcastRecordArr);
                            localBroadcastManager.d.clear();
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    for (int i2 = 0; i2 < size; i2++) {
                        BroadcastRecord broadcastRecord = broadcastRecordArr[i2];
                        int size2 = broadcastRecord.f13643b.size();
                        for (int i3 = 0; i3 < size2; i3++) {
                            ReceiverRecord receiverRecord = (ReceiverRecord) broadcastRecord.f13643b.get(i3);
                            if (!receiverRecord.d) {
                                receiverRecord.f13645b.onReceive(localBroadcastManager.f13638a, broadcastRecord.f13642a);
                            }
                        }
                    }
                }
            }
        };
    }

    public static LocalBroadcastManager a(Context context) {
        LocalBroadcastManager localBroadcastManager;
        synchronized (f13637f) {
            try {
                if (g == null) {
                    g = new LocalBroadcastManager(context.getApplicationContext());
                }
                localBroadcastManager = g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return localBroadcastManager;
    }

    public final void b(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.f13639b) {
            try {
                ReceiverRecord receiverRecord = new ReceiverRecord(intentFilter, broadcastReceiver);
                ArrayList arrayList = (ArrayList) this.f13639b.get(broadcastReceiver);
                if (arrayList == null) {
                    arrayList = new ArrayList(1);
                    this.f13639b.put(broadcastReceiver, arrayList);
                }
                arrayList.add(receiverRecord);
                for (int i2 = 0; i2 < intentFilter.countActions(); i2++) {
                    String action = intentFilter.getAction(i2);
                    ArrayList arrayList2 = (ArrayList) this.f13640c.get(action);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList(1);
                        this.f13640c.put(action, arrayList2);
                    }
                    arrayList2.add(receiverRecord);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(Intent intent) {
        int iMatch;
        synchronized (this.f13639b) {
            try {
                String action = intent.getAction();
                String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f13638a.getContentResolver());
                Uri data = intent.getData();
                String scheme = intent.getScheme();
                Set<String> categories = intent.getCategories();
                boolean z = (intent.getFlags() & 8) != 0;
                if (z) {
                    intent.toString();
                }
                ArrayList arrayList = (ArrayList) this.f13640c.get(intent.getAction());
                if (arrayList != null) {
                    if (z) {
                        arrayList.toString();
                    }
                    ArrayList arrayList2 = null;
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        ReceiverRecord receiverRecord = (ReceiverRecord) arrayList.get(i2);
                        if (z) {
                            Objects.toString(receiverRecord.f13644a);
                        }
                        if (!receiverRecord.f13646c && (iMatch = receiverRecord.f13644a.match(action, strResolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager")) >= 0) {
                            if (z) {
                                Integer.toHexString(iMatch);
                            }
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList();
                            }
                            arrayList2.add(receiverRecord);
                            receiverRecord.f13646c = true;
                        }
                    }
                    if (arrayList2 != null) {
                        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                            ((ReceiverRecord) arrayList2.get(i3)).f13646c = false;
                        }
                        this.d.add(new BroadcastRecord(intent, arrayList2));
                        if (!this.f13641e.hasMessages(1)) {
                            this.f13641e.sendEmptyMessage(1);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d(BroadcastReceiver broadcastReceiver) {
        synchronized (this.f13639b) {
            try {
                ArrayList arrayList = (ArrayList) this.f13639b.remove(broadcastReceiver);
                if (arrayList == null) {
                    return;
                }
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ReceiverRecord receiverRecord = (ReceiverRecord) arrayList.get(size);
                    receiverRecord.d = true;
                    for (int i2 = 0; i2 < receiverRecord.f13644a.countActions(); i2++) {
                        String action = receiverRecord.f13644a.getAction(i2);
                        ArrayList arrayList2 = (ArrayList) this.f13640c.get(action);
                        if (arrayList2 != null) {
                            for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                                ReceiverRecord receiverRecord2 = (ReceiverRecord) arrayList2.get(size2);
                                if (receiverRecord2.f13645b == broadcastReceiver) {
                                    receiverRecord2.d = true;
                                    arrayList2.remove(size2);
                                }
                            }
                            if (arrayList2.size() <= 0) {
                                this.f13640c.remove(action);
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
