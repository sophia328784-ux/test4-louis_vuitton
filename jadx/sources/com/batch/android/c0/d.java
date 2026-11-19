package com.batch.android.c0;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.batch.android.BatchMessage;
import com.batch.android.R;
import com.batch.android.e.t;
import com.batch.android.i;
import defpackage.md;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
public class d extends b<com.batch.android.h0.d> implements com.batch.android.n0.b.InterfaceC0064b, com.batch.android.z.b.a {
    private static final String u = "ImageTemplateFragment";
    private com.batch.android.n0.b l = null;
    private com.batch.android.a0.d m = null;
    private boolean n = false;
    private boolean o = true;
    private boolean p = false;
    private Integer q = null;
    private Bitmap r = null;
    private com.batch.android.z.a s = null;
    private boolean t = false;

    public d() {
        this.f22993c = false;
    }

    private View a(Context context) {
        com.batch.android.h0.d dVarJ = j();
        com.batch.android.n0.b bVar = new com.batch.android.n0.b(new ContextThemeWrapper(context, com.batch.android.o0.c.a(context)), dVarJ, p(), this);
        bVar.setActionListener(this);
        if (dVarJ.f23462k) {
            com.batch.android.z.b bVar2 = new com.batch.android.z.b(context, dVarJ.p);
            bVar2.a(bVar.getPannableView(), bVar.getPanEffectsView());
            bVar2.a(this);
        }
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.addView(bVar, new FrameLayout.LayoutParams(-1, -1));
        com.batch.android.o0.b.a(frameLayout, p().a(new com.batch.android.a0.b("root", new String[0]), com.batch.android.o0.d.a(context)));
        this.l = bVar;
        return frameLayout;
    }

    private com.batch.android.a0.d p() {
        if (this.m == null) {
            try {
                com.batch.android.a0.d dVarB = new com.batch.android.a0.g(new com.batch.android.b0.a(), j().f23459h).b();
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

    @Override // com.batch.android.n0.b.InterfaceC0064b
    public void b() {
        if (this.t) {
            return;
        }
        h();
        com.batch.android.h0.d dVarJ = j();
        com.batch.android.f0.a aVar = dVarJ.f23460i;
        if (aVar == null) {
            t.a(u, "Could not perform global tap action. Internal error.");
        } else {
            this.g.a(aVar);
            this.f22995f.a(getContext(), k(), dVarJ.f23460i);
        }
    }

    @Override // com.batch.android.n0.b.InterfaceC0064b
    public void d() {
        f();
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
        this.g.b();
    }

    @Override // com.batch.android.c0.b
    public boolean g() {
        com.batch.android.n0.b bVar = this.l;
        return bVar == null || bVar.d();
    }

    @Override // com.batch.android.c0.b
    public void h() {
        super.h();
        this.t = true;
    }

    @Override // com.batch.android.c0.b
    public int i() {
        return j().o;
    }

    @Override // com.batch.android.c0.b
    public void l() {
        com.batch.android.n0.b bVar = this.l;
        if (bVar != null) {
            bVar.h();
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
        setStyle(2, j().p ? R.style.com_batchsdk_ImageDialogFullscreenTheme : R.style.com_batchsdk_ImageDialogModalTheme);
        setRetainInstance(true);
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
        com.batch.android.n0.b bVar = this.l;
        if (bVar != null) {
            bVar.g();
        }
    }

    public static d a(BatchMessage batchMessage, com.batch.android.h0.d dVar) {
        d dVar2 = new d();
        dVar2.a(batchMessage, dVar);
        return dVar2;
    }

    @Override // com.batch.android.n0.b.InterfaceC0064b
    public void a() {
        if (this.t) {
            return;
        }
        h();
        this.g.b();
    }

    @Override // com.batch.android.n0.b.InterfaceC0064b
    public void a(com.batch.android.f0.d dVar) {
        if (this.t) {
            return;
        }
        h();
        this.g.a(dVar);
    }
}
