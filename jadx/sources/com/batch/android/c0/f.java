package com.batch.android.c0;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import com.batch.android.BatchMessage;
import com.batch.android.R;
import com.batch.android.e.t;
import com.batch.android.i;
import defpackage.md;
import defpackage.r81;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class f extends b<com.batch.android.h0.f> implements com.batch.android.n0.a.InterfaceC0063a, com.batch.android.z.b.a {
    private static final String u = "ModalTemplateFragment";
    private com.batch.android.n0.a l = null;
    private com.batch.android.a0.d m = null;
    private boolean n = false;
    private boolean o = true;
    private boolean p = false;
    private Integer q = null;
    private Bitmap r = null;
    private com.batch.android.z.a s = null;
    private boolean t = false;

    private View a(Context context) {
        com.batch.android.h0.f fVarJ = j();
        com.batch.android.n0.a aVar = new com.batch.android.n0.a(new ContextThemeWrapper(context, com.batch.android.o0.c.a(context)), fVarJ, p(), new com.batch.android.a0.b("container", new String[0]), this);
        aVar.setActionListener(this);
        if (fVarJ.l) {
            com.batch.android.z.b bVar = new com.batch.android.z.b(context, false);
            bVar.a(aVar.getContentView(), aVar);
            bVar.a(this);
        }
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.addView(aVar);
        com.batch.android.o0.b.a(frameLayout, p().a(new com.batch.android.a0.b("root", new String[0]), com.batch.android.o0.d.a(context)));
        this.l = aVar;
        return frameLayout;
    }

    private com.batch.android.a0.d p() {
        if (this.m == null) {
            try {
                com.batch.android.a0.d dVarB = new com.batch.android.a0.g(new com.batch.android.b0.a(), j().f23453h).b();
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

    @Override // com.batch.android.n0.a.InterfaceC0063a
    public void b() {
        if (this.t) {
            return;
        }
        h();
        com.batch.android.h0.f fVarJ = j();
        this.f22995f.a(fVarJ, fVarJ.f23455j);
        if (fVarJ.f23455j != null) {
            this.f22995f.a(getContext(), k(), fVarJ.f23455j);
        } else {
            t.c(u, "Could not perform global tap action. Internal error.");
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @Deprecated
    public void dismiss() {
        super.dismiss();
        this.t = true;
    }

    @Override // androidx.fragment.app.DialogFragment
    @Deprecated
    public void dismissAllowingStateLoss() {
        super.dismissAllowingStateLoss();
        this.t = true;
    }

    @Override // com.batch.android.z.b.a
    public void e() {
        if (this.t) {
            return;
        }
        h();
    }

    @Override // com.batch.android.c0.b
    public boolean g() {
        com.batch.android.n0.a aVar = this.l;
        return aVar == null || aVar.e();
    }

    @Override // com.batch.android.c0.b
    public void h() {
        super.h();
        this.t = true;
    }

    @Override // com.batch.android.c0.b
    public int i() {
        return j().q;
    }

    @Override // com.batch.android.c0.b
    public void l() {
        com.batch.android.n0.a aVar = this.l;
        if (aVar != null) {
            aVar.i();
        }
    }

    @Override // com.batch.android.c0.b
    public void m() {
        if (this.t) {
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
        q();
        setStyle(2, this.o ? R.style.com_batchsdk_ModalDialogTheme : R.style.com_batchsdk_ModalDialogTheme_Fullscreen);
        setRetainInstance(true);
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
        View viewA = a(layoutInflater.getContext());
        if (this.o && this.n) {
            viewA.setSystemUiVisibility(viewA.getSystemUiVisibility() | 8192);
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

    @Override // com.batch.android.c0.b, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
    }

    @Override // com.batch.android.c0.b, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        com.batch.android.n0.a aVar = this.l;
        if (aVar != null) {
            aVar.h();
        }
    }

    public static f a(BatchMessage batchMessage, com.batch.android.h0.f fVar) {
        f fVar2 = new f();
        fVar2.a(batchMessage, fVar);
        return fVar2;
    }

    @Override // com.batch.android.n0.a.InterfaceC0063a
    public void a() {
        if (this.t) {
            return;
        }
        h();
        this.g.b();
    }

    @Override // com.batch.android.n0.a.InterfaceC0063a
    public void a(int i2, com.batch.android.f0.b bVar) {
        if (this.t) {
            return;
        }
        h();
        this.g.a(i2, bVar);
        this.f22995f.a(getContext(), k(), bVar);
    }
}
