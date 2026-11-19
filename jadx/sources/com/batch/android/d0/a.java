package com.batch.android.d0;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import com.batch.android.BatchMessage;
import com.batch.android.BatchMessagingWebViewJavascriptBridge;
import com.batch.android.e.t;
import com.batch.android.f0.d;
import com.batch.android.i;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import com.batch.android.v0.g;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import defpackage.b81;
import defpackage.d21;
import defpackage.ip0;
import defpackage.v71;
import io.jsonwebtoken.JwtParser;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class a extends com.batch.android.c0.b<com.batch.android.g0.a> implements com.batch.android.m0.a.InterfaceC0059a, com.batch.android.z.c {
    public static final C0045a p = new C0045a(null);
    private boolean l;
    private com.batch.android.m0.a m;
    private Map<String, com.batch.android.z.a.d<?>> n = new LinkedHashMap();
    private Map<String, com.batch.android.z.a.c> o = new LinkedHashMap();

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f23039a;

        static {
            int[] iArr = new int[BatchMessagingWebViewJavascriptBridge.e.values().length];
            try {
                iArr[BatchMessagingWebViewJavascriptBridge.e.SSL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BatchMessagingWebViewJavascriptBridge.e.TIMEOUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BatchMessagingWebViewJavascriptBridge.e.BAD_HTTP_STATUSCODE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[BatchMessagingWebViewJavascriptBridge.e.UNKNOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f23039a = iArr;
        }
    }

    private final boolean b(BatchMessagingWebViewJavascriptBridge.e eVar, d dVar, String str) {
        int i2 = b.f23039a[eVar.ordinal()];
        int i3 = 1;
        if (i2 == 1) {
            str = "SSL Error. Is your certificate valid?";
        } else if (i2 == 2) {
            str = "Request timed out.";
        } else if (i2 == 3) {
            str = d21.d(JwtParser.SEPARATOR_CHAR, "HTTP Error Code ", str);
        } else if (i2 == 4) {
            str = str != null ? "Unknown error:\n".concat(str) : "Unknown error.";
        }
        t.a(g.f24103i, "WebView was closed because of an error");
        t.c(g.f24103i, "WebView error: " + eVar + " (" + str + ')');
        com.batch.android.g0.c.k kVarL = j().l();
        int i4 = 0;
        if (kVarL == null || !kVarL.o() || getContext() == null) {
            return false;
        }
        Context context = getContext();
        Context context2 = getContext();
        context2.getClass();
        AlertDialog.Builder builder = new AlertDialog.Builder(new ContextThemeWrapper(context, com.batch.android.o0.c.b(context2)));
        builder.setTitle("WebView Error");
        AlertController.AlertParams alertParams = builder.f810a;
        alertParams.g = "The WebView encountered an error and will be closed.\nThis error will only be shown during development.\n\nCause: " + str;
        builder.setNegativeButton(R.string.ok, new ip0(i3));
        alertParams.n = new b81(this, dVar, i4);
        builder.g();
        return true;
    }

    private final void c(d dVar) {
        if (this.l) {
            return;
        }
        h();
        this.g.a(dVar);
    }

    private final void p() {
        for (com.batch.android.g0.c.g gVar : j().g()) {
            if (this.n.get(gVar.r()) == null) {
                c cVar = new c(gVar);
                this.o.put(gVar.r(), cVar);
                new com.batch.android.z.a(cVar).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, j().k().get(gVar.r()));
            }
        }
    }

    @Override // com.batch.android.z.c
    public void a(String str, Boolean bool, String str2) {
        Unit unit;
        str.getClass();
        if (TextUtils.isEmpty(str2)) {
            str2 = com.batch.android.z.d.a(str);
        }
        com.batch.android.g0.c.k kVarL = j().l();
        if (kVarL != null) {
            boolean zQ = kVarL.q();
            if (bool != null) {
                zQ = bool.booleanValue();
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(com.batch.android.b.b.d, str);
                jSONObject.put(com.batch.android.b.b.f22945e, zQ);
                a(com.batch.android.b.b.f22944c, jSONObject, str2);
            } catch (JSONException unused) {
            }
            unit = Unit.f71739a;
        } else {
            unit = null;
        }
        if (unit == null) {
            t.e(g.f24103i, "Cannot perform deeplink: WebView component not found");
        }
    }

    @Override // com.batch.android.c0.b
    public boolean g() {
        com.batch.android.m0.a aVar = this.m;
        if (aVar != null) {
            return aVar.c();
        }
        Intrinsics.h("rootView");
        throw null;
    }

    @Override // com.batch.android.c0.b
    public void h() {
        super.h();
        this.l = true;
    }

    @Override // com.batch.android.c0.b
    public int i() {
        com.batch.android.g0.b.a aVarC;
        com.batch.android.g0.b bVarE = j().e();
        Integer numValueOf = (bVarE == null || (aVarC = bVarE.c()) == null) ? null : Integer.valueOf(aVarC.d());
        if (numValueOf != null) {
            return numValueOf.intValue() * 1000;
        }
        return 0;
    }

    @Override // com.batch.android.c0.b
    public void l() {
        com.batch.android.m0.a aVar = this.m;
        if (aVar != null) {
            aVar.d();
        } else {
            Intrinsics.h("rootView");
            throw null;
        }
    }

    @Override // com.batch.android.c0.b
    public void m() {
        if (this.l) {
            return;
        }
        h();
        i iVar = this.g;
        if (iVar != null) {
            iVar.a();
        }
    }

    @Override // com.batch.android.c0.b, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (j().q() || j().u()) {
            setStyle(2, com.batch.android.R.style.com_batchsdk_CEPDialogTheme_Fullscreen);
        } else {
            setStyle(2, com.batch.android.R.style.com_batchsdk_CEPDialogTheme);
        }
        setRetainInstance(true);
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Resources resources;
        Configuration configuration;
        Dialog dialogOnCreateDialog = super.onCreateDialog(bundle);
        dialogOnCreateDialog.getClass();
        Window window = dialogOnCreateDialog.getWindow();
        if (window != null) {
            WindowInsetsControllerCompat windowInsetsControllerCompat = new WindowInsetsControllerCompat(window, window.getDecorView());
            Context context = getContext();
            Integer numValueOf = (context == null || (resources = context.getResources()) == null || (configuration = resources.getConfiguration()) == null) ? null : Integer.valueOf(configuration.uiMode & 48);
            int i2 = 0;
            windowInsetsControllerCompat.e(numValueOf != null && numValueOf.intValue() == 16);
            ViewCompat.x(window.getDecorView(), new v71(windowInsetsControllerCompat, i2));
        }
        return dialogOnCreateDialog;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        Context context = layoutInflater.getContext();
        context.getClass();
        return a(context);
    }

    /* JADX INFO: renamed from: com.batch.android.d0.a$a, reason: collision with other inner class name */
    public static final class C0045a {
        public /* synthetic */ C0045a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final a a(BatchMessage batchMessage, com.batch.android.g0.a aVar) {
            aVar.getClass();
            a aVar2 = new a();
            aVar2.a(batchMessage, aVar);
            return aVar2;
        }

        private C0045a() {
        }
    }

    public static final class c implements com.batch.android.z.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.batch.android.g0.c.g f23041b;

        public c(com.batch.android.g0.c.g gVar) {
            this.f23041b = gVar;
        }

        @Override // com.batch.android.z.a.c
        public void b(d dVar) {
            dVar.getClass();
            t.e(g.f24103i, "Failed downloading image: " + dVar);
            boolean zR = a.b(a.this).r();
            a aVar = a.this;
            if (zR) {
                aVar.a(dVar);
                return;
            }
            com.batch.android.m0.a aVar2 = aVar.m;
            if (aVar2 != null) {
                aVar2.a(this.f23041b.r());
            } else {
                Intrinsics.h("rootView");
                throw null;
            }
        }

        @Override // com.batch.android.z.a.c
        public void c() {
            com.batch.android.m0.a aVar = a.this.m;
            if (aVar != null) {
                aVar.b(this.f23041b.r());
            } else {
                Intrinsics.h("rootView");
                throw null;
            }
        }

        @Override // com.batch.android.z.a.c
        public void b(com.batch.android.z.a.d<?> dVar) {
            if (dVar != null) {
                a.this.n.put(this.f23041b.r(), dVar);
                com.batch.android.m0.a aVar = a.this.m;
                if (aVar != null) {
                    aVar.a(this.f23041b.r(), dVar);
                } else {
                    Intrinsics.h("rootView");
                    throw null;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsetsCompat a(WindowInsetsControllerCompat windowInsetsControllerCompat, View view, WindowInsetsCompat windowInsetsCompat) {
        windowInsetsControllerCompat.g(1);
        return ViewCompat.o(view, windowInsetsCompat);
    }

    private final View a(Context context) {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, com.batch.android.o0.c.a(context));
        com.batch.android.g0.a aVarJ = j();
        aVarJ.getClass();
        BatchMessage batchMessageK = k();
        batchMessageK.getClass();
        com.batch.android.m0.a aVar = new com.batch.android.m0.a(contextThemeWrapper, aVarJ, batchMessageK, this.n, this, this);
        this.m = aVar;
        Dialog dialog = getDialog();
        aVar.a(dialog != null ? dialog.getWindow() : null);
        p();
        com.batch.android.m0.a aVar2 = this.m;
        if (aVar2 != null) {
            return aVar2;
        }
        Intrinsics.h("rootView");
        throw null;
    }

    @Override // com.batch.android.m0.a.InterfaceC0059a, com.batch.android.z.c
    public void a() {
        if (this.l) {
            return;
        }
        h();
        i iVar = this.g;
        if (iVar != null) {
            iVar.b();
        }
    }

    @Override // com.batch.android.z.c
    public void a(String str) {
        a("batch.dismiss", new JSONObject(), str);
    }

    @Override // com.batch.android.z.c
    public void a(BatchMessagingWebViewJavascriptBridge.e eVar, d dVar, String str) {
        eVar.getClass();
        dVar.getClass();
        if (b(eVar, dVar, str)) {
            return;
        }
        c(dVar);
    }

    @JvmStatic
    public static final a a(BatchMessage batchMessage, com.batch.android.g0.a aVar) {
        return p.a(batchMessage, aVar);
    }

    @Override // com.batch.android.z.c
    public void a(String str, JSONObject jSONObject, String str2) {
        str.getClass();
        jSONObject.getClass();
        if (this.l) {
            return;
        }
        h();
        com.batch.android.f0.a aVar = new com.batch.android.f0.a(str, jSONObject);
        this.f22995f.a(getContext(), k(), aVar);
        i iVar = this.g;
        if (iVar != null) {
            iVar.a(aVar, str2);
        }
    }

    @Override // com.batch.android.m0.a.InterfaceC0059a
    public void a(String str, String str2, com.batch.android.f0.b bVar) {
        str.getClass();
        str2.getClass();
        bVar.getClass();
        if (this.l) {
            return;
        }
        h();
        i iVar = this.g;
        if (iVar != null) {
            iVar.a(str, str2, bVar);
        }
        this.f22995f.a(getContext(), k(), bVar);
    }

    @Override // com.batch.android.m0.a.InterfaceC0059a
    public void a(d dVar) {
        dVar.getClass();
        c(dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(DialogInterface dialogInterface, int i2) {
        SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(a aVar, d dVar, DialogInterface dialogInterface) {
        aVar.getClass();
        dVar.getClass();
        aVar.c(dVar);
    }

    public static final /* synthetic */ com.batch.android.g0.a b(a aVar) {
        return aVar.j();
    }
}
