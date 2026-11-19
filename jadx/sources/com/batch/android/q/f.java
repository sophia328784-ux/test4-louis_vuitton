package com.batch.android.q;

import android.content.Context;
import android.text.TextUtils;
import com.batch.android.BatchInboxFetcher;
import com.batch.android.BatchInboxNotificationContent;
import com.batch.android.e.t;
import com.batch.android.e.v;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import com.batch.android.n.e0;
import com.batch.android.n.z;
import defpackage.b5;
import defpackage.xo;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes2.dex */
public class f {
    private static final String o = "InboxFetcher";
    private static boolean p = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.batch.android.v0.k f23923a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f23924b;
    private long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.batch.android.q.a f23926e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f23927f;
    private String g;
    private com.batch.android.q.d m;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f23925c = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List<g> f23928h = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f23929i = 20;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f23930j = 200;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Executor f23931k = Executors.newSingleThreadExecutor(new v("inbox.fetcher"));
    private boolean l = false;
    private boolean n = true;

    public class a implements BatchInboxFetcher.OnNewNotificationsFetchedListener {
        public a() {
        }

        @Override // com.batch.android.BatchInboxFetcher.OnNewNotificationsFetchedListener
        public void onFetchFailure(String str) {
        }

        @Override // com.batch.android.BatchInboxFetcher.OnNewNotificationsFetchedListener
        public void onFetchSuccess(List<BatchInboxNotificationContent> list, boolean z, boolean z2) {
        }
    }

    public class c implements BatchInboxFetcher.OnNextPageFetchedListener {
        public c() {
        }

        @Override // com.batch.android.BatchInboxFetcher.OnNextPageFetchedListener
        public void onFetchFailure(String str) {
        }

        @Override // com.batch.android.BatchInboxFetcher.OnNextPageFetchedListener
        public void onFetchSuccess(List<BatchInboxNotificationContent> list, boolean z) {
        }
    }

    public class e extends Exception {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f23938b;

        public e(String str, String str2) {
            super(str);
            this.f23938b = str2;
        }

        public String a() {
            return this.f23938b;
        }
    }

    private f(com.batch.android.v0.k kVar, com.batch.android.q.d dVar, Context context, String str, String str2) {
        this.f23923a = kVar;
        this.f23924b = context;
        com.batch.android.q.a aVar = com.batch.android.q.a.USER_IDENTIFIER;
        this.f23926e = aVar;
        this.f23927f = str;
        this.g = str2;
        this.m = dVar;
        if (dVar != null) {
            this.d = dVar.a(aVar, str);
        } else {
            this.d = -1L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<g> a(i iVar, boolean z) throws e {
        ArrayList arrayList;
        g next;
        if (iVar.d.isEmpty()) {
            if (iVar.f23948b) {
                throw new e("Server did timeout, but returned no notifications at all.", "The server could not complete your request in time. Please try again later.");
            }
            if (iVar.f23947a) {
                throw new e("Server didn't timeout, returned no notifications but told us there were more.", "The server could not complete your request in time. Please try again later.");
            }
        }
        synchronized (this.f23928h) {
            if (z) {
                try {
                    this.f23928h.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
            arrayList = new ArrayList();
            for (g gVar : iVar.d) {
                String str = gVar.f23945h.f23951b;
                if (str != null) {
                    Iterator<g> it = this.f23928h.iterator();
                    do {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                    } while (!str.equals(next.f23945h.f23951b));
                    if (next != null) {
                        if (next.f23943e) {
                            t.c(o, "Receiving notification that has been deleted locally. " + gVar.f23945h.f23950a);
                        }
                        if (gVar.f23945h.f23950a.equals(next.f23945h.f23950a)) {
                            t.c(o, "InboxFetcher: Got the exact same notification twice, skipping. " + gVar.f23945h.f23950a);
                        } else {
                            t.c(o, "Merging notifications for sendID " + str + " (identifiers: " + gVar.f23945h.f23950a + ", " + next.f23945h.f23950a + ")");
                            next.a(gVar.f23945h);
                            if (!gVar.d) {
                                next.d = false;
                            }
                        }
                    } else {
                        this.f23928h.add(gVar);
                        arrayList.add(gVar);
                    }
                }
            }
            this.f23925c = iVar.f23949c;
            this.l = !iVar.f23947a;
        }
        return arrayList;
    }

    public void b(BatchInboxNotificationContent batchInboxNotificationContent) {
        g next;
        synchronized (this.f23928h) {
            try {
                String str = com.batch.android.k.a(batchInboxNotificationContent).f23945h.f23950a;
                Iterator<g> it = this.f23928h.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!str.equals(next.f23945h.f23950a));
                if (next != null) {
                    Iterator<JSONObject> it2 = a(next).iterator();
                    while (it2.hasNext()) {
                        this.f23923a.a(com.batch.android.o.g.l, it2.next());
                        com.batch.android.n.j.a(this.f23924b).c(str);
                        com.batch.android.k.a(batchInboxNotificationContent).d = false;
                        next.d = false;
                    }
                } else {
                    t.c(o, "Could not find the specified notification (" + str + ") to be marked as read");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void c() {
        synchronized (this.f23928h) {
            try {
                if (this.f23928h.size() > 0) {
                    Iterator<JSONObject> it = a(this.f23928h.get(0)).iterator();
                    while (it.hasNext()) {
                        this.f23923a.a(com.batch.android.o.g.n, it.next());
                    }
                    com.batch.android.n.j.a(this.f23924b).a(new Date().getTime(), this.d);
                    Iterator<g> it2 = this.f23928h.iterator();
                    while (it2.hasNext()) {
                        it2.next().d = false;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private f(com.batch.android.v0.k kVar, com.batch.android.q.d dVar, Context context, String str) {
        this.f23923a = kVar;
        this.f23924b = context;
        com.batch.android.q.a aVar = com.batch.android.q.a.INSTALLATION;
        this.f23926e = aVar;
        this.f23927f = str;
        this.m = dVar;
        if (dVar != null) {
            this.d = dVar.a(aVar, str);
        } else {
            this.d = -1L;
        }
    }

    public class d implements com.batch.android.n1.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ BatchInboxFetcher.OnNextPageFetchedListener f23936a;

        public d(BatchInboxFetcher.OnNextPageFetchedListener onNextPageFetchedListener) {
            this.f23936a = onNextPageFetchedListener;
        }

        @Override // com.batch.android.n1.c
        public void a(i iVar) {
            t.c(f.o, "Inbox fetch success (next page) ----\n" + iVar.toString());
            try {
                f fVar = f.this;
                this.f23936a.onFetchSuccess(f.this.a((List<g>) fVar.a(iVar, fVar.f23925c == null)), !iVar.f23947a);
            } catch (e e2) {
                t.c(f.o, "Failed to handle inbox fetch response", e2);
                this.f23936a.onFetchFailure(e2.a());
            }
        }

        @Override // com.batch.android.n1.c
        public void a(String str) {
            this.f23936a.onFetchFailure(str);
        }
    }

    public class b implements com.batch.android.n1.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ BatchInboxFetcher.OnNewNotificationsFetchedListener f23933a;

        public b(BatchInboxFetcher.OnNewNotificationsFetchedListener onNewNotificationsFetchedListener) {
            this.f23933a = onNewNotificationsFetchedListener;
        }

        @Override // com.batch.android.n1.c
        public void a(i iVar) {
            t.c(f.o, "Inbox fetch success (new notifications) ----\n" + iVar.toString());
            try {
                this.f23933a.onFetchSuccess(f.this.a((List<g>) f.this.a(iVar, true)), iVar.d.size() > 0, !iVar.f23947a);
            } catch (e e2) {
                t.c(f.o, "Failed to handle inbox fetch response", e2);
                this.f23933a.onFetchFailure(e2.a());
            }
        }

        @Override // com.batch.android.n1.c
        public void a(String str) {
            this.f23933a.onFetchFailure(str);
        }
    }

    public void b(int i2) {
        this.f23929i = i2;
    }

    public boolean b() {
        return this.l || this.f23928h.size() >= this.f23930j;
    }

    private boolean b(String str, com.batch.android.n1.c cVar) {
        com.batch.android.q.d dVar = this.m;
        if (dVar == null) {
            return false;
        }
        long j2 = this.d;
        if (j2 == -1) {
            return false;
        }
        List<com.batch.android.q.b> listA = dVar.a(str, this.f23929i, j2);
        if (listA.isEmpty()) {
            return false;
        }
        this.f23931k.execute(new xo(this, cVar, str, listA));
        return true;
    }

    public static f a(Context context, String str) {
        return new f(e0.a(), com.batch.android.n.j.a(context), context, str);
    }

    public static f a(Context context, String str, boolean z) {
        if (z) {
            return com.batch.android.n.k.a(context, str);
        }
        return new f(e0.a(), null, context, str);
    }

    public static f a(Context context, String str, String str2) {
        return new f(e0.a(), com.batch.android.n.j.a(context), context, str, str2);
    }

    public static f a(Context context, String str, String str2, boolean z) {
        if (z) {
            return com.batch.android.n.k.a(context, str, str2);
        }
        return new f(e0.a(), null, context, str, str2);
    }

    public void a(int i2) {
        this.f23930j = i2;
    }

    public void a(boolean z) {
        this.n = z;
    }

    public void a(BatchInboxNotificationContent batchInboxNotificationContent) {
        g next;
        synchronized (this.f23928h) {
            try {
                String str = com.batch.android.k.a(batchInboxNotificationContent).f23945h.f23950a;
                Iterator<g> it = this.f23928h.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!str.equals(next.f23945h.f23950a));
                if (next != null) {
                    Iterator<JSONObject> it2 = a(next).iterator();
                    while (it2.hasNext()) {
                        this.f23923a.a(com.batch.android.o.g.m, it2.next());
                        com.batch.android.n.j.a(this.f23924b).b(str);
                        com.batch.android.k.a(batchInboxNotificationContent).f23943e = true;
                        next.f23943e = true;
                        this.f23928h.remove(next);
                    }
                } else {
                    t.c(o, "Could not find the specified notification (" + str + ") to be marked as deleted");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<BatchInboxNotificationContent> a(List<g> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<g> it = list.iterator();
        while (it.hasNext()) {
            BatchInboxNotificationContent batchInboxNotificationContentA = com.batch.android.k.a(it.next());
            if (this.n && batchInboxNotificationContentA.isSilent()) {
                t.d(o, "Filtering silent notification");
            } else {
                arrayList.add(batchInboxNotificationContentA);
            }
        }
        return arrayList;
    }

    public void a(BatchInboxFetcher.OnNewNotificationsFetchedListener onNewNotificationsFetchedListener) {
        if (onNewNotificationsFetchedListener == null) {
            onNewNotificationsFetchedListener = new a();
        }
        a((String) null, new b(onNewNotificationsFetchedListener));
    }

    public void a(BatchInboxFetcher.OnNextPageFetchedListener onNextPageFetchedListener) {
        if (b()) {
            if (onNextPageFetchedListener != null) {
                onNextPageFetchedListener.onFetchFailure("The end of the inbox feed has been reached, either because you've reached the fetch limit, or because the server doesn't have anything left for you.");
            }
        } else {
            if (onNextPageFetchedListener == null) {
                onNextPageFetchedListener = new c();
            }
            a(this.f23925c, new d(onNextPageFetchedListener));
        }
    }

    private void a(String str, com.batch.android.n1.c cVar) {
        if (b(str, cVar)) {
            return;
        }
        if (this.f23926e == com.batch.android.q.a.USER_IDENTIFIER) {
            if (TextUtils.isEmpty(this.f23927f)) {
                cVar.a("Inbox API Error: User identifier can't be null or empty");
                return;
            } else if (TextUtils.isEmpty(this.g)) {
                cVar.a("Inbox API Error: Authentication Key can't be null or empty in user mode");
                return;
            }
        }
        this.f23931k.execute(new b5(this, cVar, str, 27));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.batch.android.n1.c cVar, String str) {
        com.batch.android.n1.c cVar2;
        com.batch.android.q.d dVar;
        Context contextC = this.f23924b;
        if (contextC == null) {
            contextC = z.a().c();
        }
        Context context = contextC;
        if (context == null) {
            t.c(o, "No context available");
            cVar.a("Internal error: No context available. If you are getting a Batch Inbox Fetcher in 'user identifier' mode, you can improve this by using the Batch.Inbox.getFetcher(Context,String,String) variant.");
            return;
        }
        if (!p && (dVar = this.m) != null) {
            p = true;
            dVar.a();
        }
        try {
            cVar2 = cVar;
            try {
                a(new com.batch.android.q.e(context, this.f23926e, this.f23927f, this.g, Integer.valueOf(this.f23929i), str, this.d, cVar2));
            } catch (MalformedURLException e2) {
                e = e2;
                t.c(o, "Could not start inbox fetcher ws: ", e);
                cVar2.a("Internal network call error");
            }
        } catch (MalformedURLException e3) {
            e = e3;
            cVar2 = cVar;
        }
    }

    public void a(com.batch.android.q.e eVar) {
        eVar.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.batch.android.n1.c cVar, String str, List list) {
        com.batch.android.q.d dVar;
        Context contextC = this.f23924b;
        if (contextC == null) {
            contextC = z.a().c();
        }
        if (contextC == null) {
            t.c(o, "No context available");
            cVar.a("Internal error: No context available. If you are getting a Batch Inbox Fetcher in 'user identifier' mode, you can improve this by using the Batch.Inbox.getFetcher(Context,String,String) variant.");
            return;
        }
        if (!p && (dVar = this.m) != null) {
            p = true;
            dVar.a();
        }
        try {
            new h(contextC, this.f23926e, this.f23927f, this.g, Integer.valueOf(this.f23929i), str, this.d, list, cVar).run();
        } catch (MalformedURLException e2) {
            t.c(o, "Could not start inbox fetcher ws: ", e2);
            cVar.a("Internal network call error");
        }
    }

    private List<JSONObject> a(g gVar) {
        ArrayList arrayList = new ArrayList();
        if (gVar != null) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(gVar.f23945h);
            List<j> list = gVar.f23946i;
            if (list != null) {
                arrayList2.addAll(list);
            }
            int size = arrayList2.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList2.get(i2);
                i2++;
                j jVar = (j) obj;
                String str = jVar.d;
                if (TextUtils.isEmpty(str) && this.f23926e == com.batch.android.q.a.USER_IDENTIFIER) {
                    str = this.f23927f;
                }
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("notificationId", jVar.f23950a);
                    String str2 = jVar.f23952c;
                    if (str2 != null) {
                        jSONObject.put("notificationInstallId", str2);
                    }
                    if (str != null) {
                        jSONObject.put("notificationCustomId", str);
                    }
                    Map<String, Object> map = jVar.f23953e;
                    if (map != null) {
                        jSONObject.put("additionalData", map);
                    }
                    arrayList.add(jSONObject);
                } catch (JSONException e2) {
                    t.c(o, "Could not make inbox event data", e2);
                }
            }
        }
        return arrayList;
    }

    public List<BatchInboxNotificationContent> a() {
        List<BatchInboxNotificationContent> listA;
        synchronized (this.f23928h) {
            listA = a(this.f23928h);
        }
        return listA;
    }
}
