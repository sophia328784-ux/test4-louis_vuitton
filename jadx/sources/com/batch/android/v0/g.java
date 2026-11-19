package com.batch.android.v0;

import android.app.Activity;
import android.content.Context;
import android.graphics.Typeface;
import android.text.TextUtils;
import androidx.fragment.app.DialogFragment;
import com.batch.android.Batch;
import com.batch.android.BatchInAppMessage;
import com.batch.android.BatchLandingMessage;
import com.batch.android.BatchMessage;
import com.batch.android.BatchMessageAction;
import com.batch.android.BatchMessageCTA;
import com.batch.android.BatchMessagingException;
import com.batch.android.BatchMessagingView;
import com.batch.android.MessagingActivity;
import com.batch.android.e.f0;
import com.batch.android.e.t;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import com.batch.android.messaging.view.styled.mep.TextView;
import com.batch.android.n.e0;
import com.batch.android.n.s;
import com.batch.android.n.z;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.md;

/* JADX INFO: loaded from: classes.dex */
public class g extends b {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f24103i = "Messaging";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f24104j = "com.batch.android.messaging.DISMISS_INTERSTITIAL";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f24105k = "com.batch.android.messaging.DISMISS_BANNER";
    public static final double l = 30.0d;
    private static final String m = "show";
    private static final String n = "dismiss";
    private static final String o = "close";
    private static final String p = "close_error";
    private static final String q = "auto_close";
    private static final String r = "global_tap_action";
    private static final String s = "cta_action";
    private static final String t = "webview_click";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f24106a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f24107b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Batch.Messaging.LifecycleListener f24108c = null;
    private Batch.Messaging.InAppInterceptor d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f24109e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private BatchMessage f24110f = null;
    private final com.batch.android.v0.a g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final k f24111h;

    /* JADX INFO: loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f24112a;

        static {
            int[] iArr = new int[com.batch.android.f0.c.a.values().length];
            f24112a = iArr;
            try {
                iArr[com.batch.android.f0.c.a.LOCAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f24112a[com.batch.android.f0.c.a.LANDING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f24112a[com.batch.android.f0.c.a.INBOX_LANDING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private g(com.batch.android.v0.a aVar, k kVar) {
        this.g = aVar;
        this.f24111h = kVar;
    }

    public static g o() {
        return new g(com.batch.android.n.a.a(), e0.a());
    }

    public com.batch.android.a a(Context context, BatchMessage batchMessage, JSONObject jSONObject) throws BatchMessagingException {
        if (context == null) {
            md.n("context cannot be null");
            return null;
        }
        if (batchMessage == null) {
            md.n("message cannot be null");
            return null;
        }
        if (!a(true)) {
            throw new BatchMessagingException("Integration problem: your app must bundle the android x fragment and appcompat libraries, and their version must be higher than 1.0.0.");
        }
        try {
            com.batch.android.f0.c cVarF = com.batch.android.i0.b.f(jSONObject);
            if (batchMessage instanceof BatchInAppMessage) {
                cVarF.f23288e = com.batch.android.f0.c.a.LOCAL;
            } else if (batchMessage instanceof BatchLandingMessage) {
                if (((BatchLandingMessage) batchMessage).isDisplayedFromInbox()) {
                    cVarF.f23288e = com.batch.android.f0.c.a.INBOX_LANDING;
                } else {
                    cVarF.f23288e = com.batch.android.f0.c.a.LANDING;
                }
            }
            if (cVarF.a()) {
                return com.batch.android.b.a(batchMessage, cVarF, s.a(cVarF, batchMessage));
            }
            throw new BatchMessagingException("The BatchMessage instance does not represent a banner.");
        } catch (com.batch.android.i0.c e2) {
            t.a(f24103i, "Error while parsing push payload", e2);
            throw new BatchMessagingException(e2.getMessage());
        }
    }

    public DialogFragment b(Context context, BatchMessage batchMessage, JSONObject jSONObject) throws BatchMessagingException {
        if (context == null) {
            md.n("context cannot be null");
            return null;
        }
        if (batchMessage == null) {
            md.n("message cannot be null");
            return null;
        }
        if (!a(true)) {
            throw new BatchMessagingException("Integration problem: your app must bundle the android x fragment and appcompat libraries, and their version must be higher than 1.0.0.");
        }
        try {
            com.batch.android.f0.c cVarF = com.batch.android.i0.b.f(jSONObject);
            if (batchMessage instanceof BatchInAppMessage) {
                cVarF.f23288e = com.batch.android.f0.c.a.LOCAL;
            } else if (batchMessage instanceof BatchLandingMessage) {
                if (((BatchLandingMessage) batchMessage).isDisplayedFromInbox()) {
                    cVarF.f23288e = com.batch.android.f0.c.a.INBOX_LANDING;
                } else {
                    cVarF.f23288e = com.batch.android.f0.c.a.LANDING;
                }
            }
            if (cVarF instanceof com.batch.android.h0.a) {
                return com.batch.android.c0.a.a(batchMessage, (com.batch.android.h0.a) cVarF);
            }
            if (cVarF instanceof com.batch.android.h0.g) {
                return com.batch.android.c0.g.a(batchMessage, (com.batch.android.h0.g) cVarF);
            }
            if (cVarF instanceof com.batch.android.h0.f) {
                return com.batch.android.c0.f.a(batchMessage, (com.batch.android.h0.f) cVarF);
            }
            if (cVarF instanceof com.batch.android.h0.d) {
                return com.batch.android.c0.d.a(batchMessage, (com.batch.android.h0.d) cVarF);
            }
            if (cVarF instanceof com.batch.android.h0.h) {
                return com.batch.android.c0.h.a(batchMessage, (com.batch.android.h0.h) cVarF);
            }
            if (cVarF instanceof com.batch.android.h0.b) {
                throw new BatchMessagingException("This message is a banner. Please use the dedicated loadBanner() method.");
            }
            if (cVarF instanceof com.batch.android.g0.a) {
                return com.batch.android.d0.a.a(batchMessage, (com.batch.android.g0.a) cVarF);
            }
            throw new BatchMessagingException("Internal error (code 10)");
        } catch (com.batch.android.i0.c e2) {
            t.a(f24103i, "Error while parsing push payload", e2);
            throw new BatchMessagingException(e2.getMessage());
        }
    }

    public void c(com.batch.android.f0.c cVar) {
        b(cVar, n);
        Batch.Messaging.LifecycleListener lifecycleListener = this.f24108c;
        if (lifecycleListener != null) {
            lifecycleListener.onBatchMessageClosed(cVar.f23287c, Batch.Messaging.LifecycleListener.MessagingCloseReason.Action);
        }
    }

    public void d(com.batch.android.f0.c cVar) {
        b(cVar, m);
        Batch.Messaging.LifecycleListener lifecycleListener = this.f24108c;
        if (lifecycleListener != null) {
            lifecycleListener.onBatchMessageShown(cVar.f23287c);
        }
    }

    @Override // com.batch.android.v0.b
    public String g() {
        return "messaging";
    }

    @Override // com.batch.android.v0.b
    public int h() {
        return 1;
    }

    public Batch.Messaging.InAppInterceptor i() {
        return this.d;
    }

    public Batch.Messaging.LifecycleListener j() {
        return this.f24108c;
    }

    public boolean k() {
        return this.f24110f != null;
    }

    public boolean l() {
        return this.f24109e;
    }

    public boolean m() {
        return this.f24107b;
    }

    public BatchMessage n() {
        BatchMessage batchMessage = this.f24110f;
        this.f24110f = null;
        return batchMessage;
    }

    public boolean p() {
        return this.f24106a;
    }

    public void d(boolean z) {
        this.f24106a = z;
    }

    public void c(boolean z) {
        this.f24109e = z;
    }

    public void a(Batch.Messaging.LifecycleListener lifecycleListener) {
        this.f24108c = lifecycleListener;
    }

    public void a(Batch.Messaging.InAppInterceptor inAppInterceptor) {
        this.d = inAppInterceptor;
    }

    public boolean a(boolean z) {
        if (!f0.b()) {
            if (z) {
                t.a(f24103i, "Your app doesn't seem to have the android X fragment library, or its version is lower than the 1.0.0 minimum required by Batch.. The landing will not be displayed. More info at https://batch.com/doc .");
            }
            return false;
        }
        if (f0.a()) {
            return true;
        }
        if (z) {
            t.a(f24103i, "Your app doesn't seem to have the android X appcompat library, or its version is lower than the 1.0.0 minimum required by Batch. The landing will not be displayed. More info at https://batch.com/doc .");
        }
        return false;
    }

    public void a(Typeface typeface, Typeface typeface2) {
        TextView.f23721b = typeface;
        TextView.f23722c = typeface2;
        com.batch.android.g0.c.f.b(typeface);
        com.batch.android.g0.c.f.a(typeface2);
    }

    public void a(Context context, BatchMessage batchMessage, com.batch.android.f0.a aVar) {
        if (TextUtils.isEmpty(aVar.f23284b)) {
            return;
        }
        this.g.a(context, aVar.f23284b, aVar.f23285c, batchMessage);
    }

    public void a(Context context, BatchMessage batchMessage, boolean z) {
        if (!z && this.f24109e) {
            this.f24110f = batchMessage;
            t.b(f24103i, "Enqueuing a message, as it should have been displayed but Do Not Disturb is enabled.");
            return;
        }
        try {
            BatchMessagingView batchMessagingViewLoadMessagingView = Batch.Messaging.loadMessagingView(context, batchMessage);
            if (batchMessagingViewLoadMessagingView.getKind() == BatchMessagingView.Kind.View) {
                if (context instanceof Activity) {
                    batchMessagingViewLoadMessagingView.showView((Activity) context);
                    return;
                } else {
                    t.a(f24103i, "A banner was attempted to be displayed, but the given context is not an Activity. Cannot continue.");
                    return;
                }
            }
        } catch (BatchMessagingException unused) {
            t.a(f24103i, "A banner was attempted to be displayed, but the given context is not an Activity. Cannot continue.");
        }
        MessagingActivity.startActivityForMessage(context, batchMessage);
    }

    public void a(BatchInAppMessage batchInAppMessage) {
        Activity activityB = z.a().b();
        if (activityB != null) {
            Batch.Messaging.InAppInterceptor inAppInterceptorI = i();
            if (inAppInterceptorI != null ? true ^ inAppInterceptorI.onBatchInAppMessageReady(batchInAppMessage) : true) {
                a((Context) activityB, (BatchMessage) batchInAppMessage, false);
                return;
            } else {
                t.c(f.f24095i, "Developer prevented automatic In-App display");
                return;
            }
        }
        t.a(f.f24095i, "Could not find an activity to display on. Does the RuntimeManager ever had one?");
    }

    private JSONObject a(com.batch.android.f0.c cVar, String str) throws JSONException {
        String str2;
        JSONObject jSONObject = new JSONObject();
        int i2 = a.f24112a[cVar.f23288e.ordinal()];
        if (i2 == 1) {
            str2 = "local";
        } else if (i2 == 2) {
            str2 = BatchLandingMessage.KIND;
        } else if (i2 != 3) {
            str2 = "unknown";
        } else {
            str2 = "inbox-landing";
        }
        jSONObject.put(NBSSpanMetricUnit.Second, str2);
        jSONObject.put(com.batch.android.s.b.a.f24015b, cVar.f23286b);
        JSONObject jSONObject2 = cVar.d;
        if (jSONObject2 != null) {
            jSONObject.put("ed", jSONObject2);
        }
        jSONObject.put("type", str);
        return jSONObject;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void a(com.batch.android.f0.c cVar, String str, String str2, String str3) {
        Object obj = JSONObject.NULL;
        Object obj2 = str3;
        if (str3 == null) {
            obj2 = obj;
        }
        try {
            JSONObject jSONObjectA = a(cVar, s);
            jSONObjectA.put("ctaId", str);
            jSONObjectA.put("ctaType", str2);
            jSONObjectA.put("action", obj2);
            this.f24111h.a(com.batch.android.o.g.d, jSONObjectA);
        } catch (JSONException e2) {
            t.c(f24103i, "Error while tracking CTA event", e2);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void a(com.batch.android.f0.c cVar, int i2, String str) {
        Object obj = JSONObject.NULL;
        Object obj2 = str;
        if (str == null) {
            obj2 = obj;
        }
        try {
            JSONObject jSONObjectA = a(cVar, s);
            jSONObjectA.put("ctaIndex", i2);
            jSONObjectA.put("action", obj2);
            this.f24111h.a(com.batch.android.o.g.d, jSONObjectA);
        } catch (JSONException e2) {
            t.c(f24103i, "Error while tracking CTA event", e2);
        }
    }

    private void a(com.batch.android.f0.c cVar, String str, String str2) {
        try {
            JSONObject jSONObjectA = a(cVar, t);
            jSONObjectA.put(cVar.b() ? "action" : "actionName", str);
            if (!TextUtils.isEmpty(str2)) {
                jSONObjectA.put("analyticsID", str2);
            }
            this.f24111h.a(com.batch.android.o.g.d, jSONObjectA);
        } catch (JSONException e2) {
            t.c(f24103i, "Error while tracking a webview trackClick event", e2);
        }
    }

    public void a(com.batch.android.f0.c cVar, int i2, com.batch.android.f0.b bVar) {
        a(cVar, i2, bVar.f23284b);
        if (this.f24108c != null) {
            this.f24108c.onBatchMessageActionTriggered(cVar.f23287c, "mepCtaIndex:".concat(String.valueOf(i2)), new BatchMessageCTA(bVar));
        }
    }

    public void a(com.batch.android.f0.c cVar, String str, String str2, com.batch.android.f0.b bVar) {
        a(cVar, str, str2, bVar.f23284b);
        Batch.Messaging.LifecycleListener lifecycleListener = this.f24108c;
        if (lifecycleListener != null) {
            lifecycleListener.onBatchMessageActionTriggered(cVar.f23287c, str, new BatchMessageCTA(bVar));
        }
    }

    public void b(boolean z) {
        this.f24107b = z;
    }

    private void b(com.batch.android.f0.c cVar, String str) {
        try {
            this.f24111h.a(com.batch.android.o.g.d, a(cVar, str));
        } catch (JSONException e2) {
            t.c(f24103i, "Error while tracking event", e2);
        }
    }

    public void a(com.batch.android.f0.c cVar, com.batch.android.f0.a aVar, String str) {
        a(cVar, aVar.f23284b, str);
        Batch.Messaging.LifecycleListener lifecycleListener = this.f24108c;
        if (lifecycleListener != null) {
            lifecycleListener.onBatchMessageActionTriggered(cVar.f23287c, str, new BatchMessageAction(aVar));
        }
    }

    private void b(com.batch.android.f0.c cVar, com.batch.android.f0.d dVar) {
        try {
            JSONObject jSONObjectA = a(cVar, p);
            if (dVar != null) {
                jSONObjectA.put("cause", dVar.f23296b);
            }
            this.f24111h.a(com.batch.android.o.g.d, jSONObjectA);
        } catch (JSONException e2) {
            t.c(f24103i, "Error while tracking event", e2);
        }
    }

    public void a(com.batch.android.f0.c cVar, com.batch.android.f0.a aVar) {
        Object obj = aVar.f23284b;
        if (obj == null) {
            obj = JSONObject.NULL;
        }
        try {
            JSONObject jSONObjectA = a(cVar, r);
            jSONObjectA.put("action", obj);
            this.f24111h.a(com.batch.android.o.g.d, jSONObjectA);
        } catch (JSONException e2) {
            t.c(f24103i, "Error while tracking CTA event", e2);
        }
        Batch.Messaging.LifecycleListener lifecycleListener = this.f24108c;
        if (lifecycleListener != null) {
            lifecycleListener.onBatchMessageActionTriggered(cVar.f23287c, Batch.Messaging.GLOBAL_TAP_ACTION_INDEX, new BatchMessageAction(aVar));
        }
    }

    public void b(com.batch.android.f0.c cVar) {
        b(cVar, o);
        Batch.Messaging.LifecycleListener lifecycleListener = this.f24108c;
        if (lifecycleListener != null) {
            lifecycleListener.onBatchMessageClosed(cVar.f23287c, Batch.Messaging.LifecycleListener.MessagingCloseReason.User);
        }
    }

    public void a(com.batch.android.f0.c cVar) {
        b(cVar, q);
        Batch.Messaging.LifecycleListener lifecycleListener = this.f24108c;
        if (lifecycleListener != null) {
            lifecycleListener.onBatchMessageClosed(cVar.f23287c, Batch.Messaging.LifecycleListener.MessagingCloseReason.Auto);
        }
    }

    public void a(com.batch.android.f0.c cVar, com.batch.android.f0.d dVar) {
        b(cVar, dVar);
        Batch.Messaging.LifecycleListener lifecycleListener = this.f24108c;
        if (lifecycleListener != null) {
            lifecycleListener.onBatchMessageClosed(cVar.f23287c, Batch.Messaging.LifecycleListener.MessagingCloseReason.Error);
        }
    }
}
