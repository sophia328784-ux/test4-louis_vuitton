package com.batch.android.c0;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Point;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ContextMenu;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import com.batch.android.BatchMessage;
import com.batch.android.BatchMessagingWebViewJavascriptBridge;
import com.batch.android.e.t;
import com.batch.android.i;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import com.dynatrace.android.callback.Callback;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.b81;
import defpackage.fc;
import defpackage.ip0;
import defpackage.md;
import defpackage.r81;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class h extends b<com.batch.android.h0.h> implements com.batch.android.z.c, MenuItem.OnMenuItemClickListener {
    private static final String t = "HtmlTemplateFragment";
    private com.batch.android.n0.e l = null;
    private com.batch.android.a0.d m = null;
    private boolean n = false;
    private boolean o = true;
    private boolean p = false;
    private Integer q = null;
    private boolean r = false;
    private int s = com.batch.android.o0.d.a();

    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f22997a;

        static {
            int[] iArr = new int[BatchMessagingWebViewJavascriptBridge.e.values().length];
            f22997a = iArr;
            try {
                iArr[BatchMessagingWebViewJavascriptBridge.e.SSL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f22997a[BatchMessagingWebViewJavascriptBridge.e.TIMEOUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f22997a[BatchMessagingWebViewJavascriptBridge.e.BAD_HTTP_STATUSCODE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f22997a[BatchMessagingWebViewJavascriptBridge.e.UNKNOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public h() {
        this.f22993c = false;
    }

    private View a(Context context) {
        com.batch.android.h0.h hVarJ = j();
        com.batch.android.n0.e eVar = new com.batch.android.n0.e(new ContextThemeWrapper(context, com.batch.android.o0.c.a(context)), hVarJ, p(), new BatchMessagingWebViewJavascriptBridge(context, k(), this));
        eVar.setActionListener(this);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.addView(eVar, new FrameLayout.LayoutParams(-1, -1));
        com.batch.android.o0.b.a(frameLayout, p().a(new com.batch.android.a0.b("root", new String[0]), com.batch.android.o0.d.a(context)));
        this.l = eVar;
        return frameLayout;
    }

    private boolean b(BatchMessagingWebViewJavascriptBridge.e eVar, com.batch.android.f0.d dVar, String str) {
        Context context;
        int i2 = a.f22997a[eVar.ordinal()];
        int i3 = 2;
        int i4 = 1;
        if (i2 == 1) {
            str = "SSL Error. Is your certificate valid?";
        } else if (i2 == 2) {
            str = "Request timed out.";
        } else if (i2 == 3) {
            str = fc.h("HTTP Error Code ", str, FileUtils.HIDDEN_PREFIX);
        } else if (i2 == 4) {
            str = str != null ? "Unknown error:\n".concat(str) : "Unknown error.";
        }
        t.a(com.batch.android.v0.g.f24103i, "WebView was closed because of an error");
        t.c(com.batch.android.v0.g.f24103i, "WebView error: " + eVar + " (" + str + ")");
        if (!j().l || (context = getContext()) == null) {
            return false;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(new ContextThemeWrapper(context, com.batch.android.o0.c.b(context)));
        builder.setTitle("WebView Error");
        String str2 = "The WebView encountered an error and will be closed.\nThis error will only be shown during development.\n\nCause: " + str;
        AlertController.AlertParams alertParams = builder.f810a;
        alertParams.g = str2;
        builder.setNegativeButton(R.string.ok, new ip0(i3));
        alertParams.n = new b81(this, dVar, i4);
        builder.g();
        return true;
    }

    private void c(com.batch.android.f0.d dVar) {
        if (this.r) {
            return;
        }
        h();
        this.g.a(dVar);
    }

    private com.batch.android.a0.d p() {
        if (this.m == null) {
            try {
                com.batch.android.a0.d dVarB = new com.batch.android.a0.g(new com.batch.android.b0.a(), j().f23468h).b();
                this.m = dVarB;
                if (dVarB == null) {
                    md.n("An error occurred while parsing message style");
                    return null;
                }
            } catch (com.batch.android.a0.a e2) {
                r81.j("Unparsable style", e2);
                return null;
            }
        }
        return this.m;
    }

    private void q() {
        for (Map.Entry<String, String> entry : p().a(new com.batch.android.a0.b("root", new String[0]), (Point) null).entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if ("statusbar".equalsIgnoreCase(key)) {
                String lowerCase = value.toLowerCase(Locale.US);
                lowerCase.getClass();
                switch (lowerCase) {
                    case "hidden":
                        this.o = false;
                        break;
                    case "dark":
                        this.n = true;
                        this.o = true;
                        break;
                    case "light":
                        this.n = false;
                        this.o = true;
                        break;
                }
            } else if ("statusbar-bg".equalsIgnoreCase(key)) {
                if ("translucent".equalsIgnoreCase(value)) {
                    this.q = null;
                    this.p = true;
                } else {
                    this.q = Integer.valueOf(com.batch.android.o0.b.c(value));
                    this.p = false;
                }
            }
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @Deprecated
    public void dismiss() {
        super.dismiss();
        this.r = true;
    }

    @Override // androidx.fragment.app.DialogFragment
    @Deprecated
    public void dismissAllowingStateLoss() {
        super.dismissAllowingStateLoss();
        this.r = true;
    }

    @Override // com.batch.android.c0.b
    public boolean g() {
        return false;
    }

    @Override // com.batch.android.c0.b
    public void h() {
        super.h();
        this.r = true;
    }

    @Override // com.batch.android.c0.b
    public int i() {
        return 0;
    }

    @Override // com.batch.android.c0.b
    public void l() {
    }

    @Override // com.batch.android.c0.b
    public void m() {
    }

    @Override // com.batch.android.c0.b, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        q();
        setStyle(2, com.batch.android.R.style.com_batchsdk_WebViewDialogTheme);
    }

    @Override // androidx.fragment.app.Fragment, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        if (j().l && view == this.l.getCloseButton()) {
            contextMenu.setHeaderTitle("Development menu");
            contextMenu.add(0, this.s, 0, "Reload");
            contextMenu.getItem(0).setOnMenuItemClickListener(this);
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(bundle);
        Window window = dialogOnCreateDialog.getWindow();
        if (this.o && window != null) {
            if (this.p) {
                window.addFlags(67108864);
            }
            Integer num = this.q;
            if (num != null && num.intValue() != 0) {
                window.setStatusBarColor(this.q.intValue());
            }
        }
        return dialogOnCreateDialog;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Context activity = getActivity();
        if (activity == null) {
            activity = layoutInflater.getContext();
        }
        View viewA = a(activity);
        com.batch.android.n0.e eVar = this.l;
        if (bundle != null) {
            eVar.a(bundle);
        } else {
            eVar.i();
        }
        if (j().l) {
            registerForContextMenu(this.l.getCloseButton());
        }
        return viewA;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        Dialog dialog = getDialog();
        if (dialog != null && getRetainInstance()) {
            dialog.setDismissMessage(null);
        }
        super.onDestroyView();
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        Callback.u(menuItem);
        try {
            if (menuItem.getItemId() != this.s) {
                return false;
            }
            this.l.i();
            return true;
        } finally {
            Callback.v();
        }
    }

    @Override // com.batch.android.c0.b, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.l.b(bundle);
    }

    public static h a(BatchMessage batchMessage, com.batch.android.h0.h hVar) {
        h hVar2 = new h();
        hVar2.a(batchMessage, hVar);
        return hVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.batch.android.f0.d dVar, DialogInterface dialogInterface) {
        c(dVar);
    }

    @Override // com.batch.android.z.c
    public void a() {
        if (this.r) {
            return;
        }
        h();
        this.g.b();
    }

    @Override // com.batch.android.z.c
    public void a(String str) {
        a("batch.dismiss", new JSONObject(), str);
    }

    @Override // com.batch.android.z.c
    public void a(BatchMessagingWebViewJavascriptBridge.e eVar, com.batch.android.f0.d dVar, String str) {
        if (b(eVar, dVar, str)) {
            return;
        }
        c(dVar);
    }

    @Override // com.batch.android.z.c
    public void a(String str, Boolean bool, String str2) {
        if (TextUtils.isEmpty(str2)) {
            str2 = com.batch.android.z.d.a(str);
        }
        boolean zBooleanValue = j().f23471k;
        if (bool != null) {
            zBooleanValue = bool.booleanValue();
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(com.batch.android.b.b.d, str);
            jSONObject.put(com.batch.android.b.b.f22945e, zBooleanValue);
            a(com.batch.android.b.b.f22944c, jSONObject, str2);
        } catch (JSONException unused) {
        }
    }

    @Override // com.batch.android.z.c
    public void a(String str, JSONObject jSONObject, String str2) {
        if (this.r) {
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
}
