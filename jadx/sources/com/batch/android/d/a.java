package com.batch.android.d;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f23024f = "LocalBroadcastManager";
    private static final boolean g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final int f23025h = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f23026a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashMap<BroadcastReceiver, ArrayList<IntentFilter>> f23027b = new HashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashMap<String, ArrayList<c>> f23028c = new HashMap<>();
    private final ArrayList<b> d = new ArrayList<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Handler f23029e;

    /* JADX INFO: renamed from: com.batch.android.d.a$a, reason: collision with other inner class name */
    public class HandlerC0044a extends Handler {
        public HandlerC0044a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                super.handleMessage(message);
            } else {
                a.this.a();
            }
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Intent f23031a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final ArrayList<c> f23032b;

        public b(Intent intent, ArrayList<c> arrayList) {
            this.f23031a = intent;
            this.f23032b = arrayList;
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final IntentFilter f23033a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final BroadcastReceiver f23034b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f23035c;

        public c(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.f23033a = intentFilter;
            this.f23034b = broadcastReceiver;
        }

        public String toString() {
            return "Receiver{" + this.f23034b + " filter=" + this.f23033a + "}";
        }
    }

    public a(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f23026a = applicationContext;
        this.f23029e = new HandlerC0044a(applicationContext.getMainLooper());
    }

    public boolean a(Intent intent) {
        int iMatch;
        synchronized (this.f23027b) {
            try {
                String action = intent.getAction();
                String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f23026a.getContentResolver());
                Uri data = intent.getData();
                String scheme = intent.getScheme();
                Set<String> categories = intent.getCategories();
                boolean z = (intent.getFlags() & 8) != 0;
                if (z) {
                    intent.toString();
                }
                ArrayList<c> arrayList = this.f23028c.get(intent.getAction());
                if (arrayList != null) {
                    if (z) {
                        arrayList.toString();
                    }
                    ArrayList arrayList2 = null;
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        c cVar = arrayList.get(i2);
                        if (z) {
                            Objects.toString(cVar.f23033a);
                        }
                        if (!cVar.f23035c && (iMatch = cVar.f23033a.match(action, strResolveTypeIfNeeded, scheme, data, categories, f23024f)) >= 0) {
                            if (z) {
                                Integer.toHexString(iMatch);
                            }
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList();
                            }
                            arrayList2.add(cVar);
                            cVar.f23035c = true;
                        }
                    }
                    if (arrayList2 != null) {
                        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                            ((c) arrayList2.get(i3)).f23035c = false;
                        }
                        this.d.add(new b(intent, arrayList2));
                        if (!this.f23029e.hasMessages(1)) {
                            this.f23029e.sendEmptyMessage(1);
                        }
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void b(Intent intent) {
        if (a(intent)) {
            a();
        }
    }

    public void a(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.f23027b) {
            try {
                c cVar = new c(intentFilter, broadcastReceiver);
                ArrayList<IntentFilter> arrayList = this.f23027b.get(broadcastReceiver);
                if (arrayList == null) {
                    arrayList = new ArrayList<>(1);
                    this.f23027b.put(broadcastReceiver, arrayList);
                }
                arrayList.add(intentFilter);
                for (int i2 = 0; i2 < intentFilter.countActions(); i2++) {
                    String action = intentFilter.getAction(i2);
                    ArrayList<c> arrayList2 = this.f23028c.get(action);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList<>(1);
                        this.f23028c.put(action, arrayList2);
                    }
                    arrayList2.add(cVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(BroadcastReceiver broadcastReceiver) {
        synchronized (this.f23027b) {
            try {
                ArrayList<IntentFilter> arrayListRemove = this.f23027b.remove(broadcastReceiver);
                if (arrayListRemove == null) {
                    return;
                }
                for (int i2 = 0; i2 < arrayListRemove.size(); i2++) {
                    IntentFilter intentFilter = arrayListRemove.get(i2);
                    for (int i3 = 0; i3 < intentFilter.countActions(); i3++) {
                        String action = intentFilter.getAction(i3);
                        ArrayList<c> arrayList = this.f23028c.get(action);
                        if (arrayList != null) {
                            int i4 = 0;
                            while (i4 < arrayList.size()) {
                                if (arrayList.get(i4).f23034b == broadcastReceiver) {
                                    arrayList.remove(i4);
                                    i4--;
                                }
                                i4++;
                            }
                            if (arrayList.size() <= 0) {
                                this.f23028c.remove(action);
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        int size;
        b[] bVarArr;
        while (true) {
            synchronized (this.f23027b) {
                try {
                    size = this.d.size();
                    if (size <= 0) {
                        return;
                    }
                    bVarArr = new b[size];
                    this.d.toArray(bVarArr);
                    this.d.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
            for (int i2 = 0; i2 < size; i2++) {
                b bVar = bVarArr[i2];
                for (int i3 = 0; i3 < bVar.f23032b.size(); i3++) {
                    bVar.f23032b.get(i3).f23034b.onReceive(this.f23026a, bVar.f23031a);
                }
            }
        }
    }
}
