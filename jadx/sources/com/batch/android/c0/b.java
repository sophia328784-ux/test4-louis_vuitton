package com.batch.android.c0;

import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.util.LruCache;
import android.view.View;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import com.batch.android.BatchMessage;
import com.batch.android.BatchPushPayload;
import com.batch.android.f0.c;
import com.batch.android.i;
import com.batch.android.n.s;
import com.batch.android.n.t;
import com.sensorsdata.analytics.android.autotrack.aop.FragmentTrackHelper;
import defpackage.f31;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public abstract class b<T extends com.batch.android.f0.c> extends DialogFragment implements e, com.batch.android.o0.a.InterfaceC0065a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f22988i = "BaseDialogFragment";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f22989j = "messageModel";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final String f22990k = "autoCloseAt";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Handler f22994e;
    protected i g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private T f22991a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WeakReference<c> f22992b = new WeakReference<>(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected boolean f22993c = true;
    protected long d = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected LruCache<String, com.batch.android.z.a.d> f22996h = new LruCache<>(1);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected com.batch.android.v0.g f22995f = t.a();

    public void a(BatchMessage batchMessage, T t) {
        Bundle bundle = new Bundle();
        bundle.putSerializable(f22989j, t);
        batchMessage.writeToBundle(bundle);
        setArguments(bundle);
    }

    @Override // com.batch.android.o0.a.InterfaceC0065a
    public com.batch.android.z.a.d b(String str) {
        return this.f22996h.get(str);
    }

    public void f() {
        if (g() && this.d == 0) {
            int i2 = i();
            if (i2 > 0) {
                this.d = SystemClock.uptimeMillis() + ((long) i2);
                l();
            } else {
                this.d = -1L;
            }
        }
        n();
    }

    public abstract boolean g();

    public void h() {
        if (getFragmentManager() != null) {
            dismissAllowingStateLoss();
        }
    }

    public abstract int i();

    public T j() {
        if (this.f22991a == null) {
            try {
                this.f22991a = (T) getArguments().getSerializable(f22989j);
            } catch (ClassCastException unused) {
            }
        }
        return this.f22991a;
    }

    public BatchMessage k() {
        try {
            return BatchMessage.getMessageForBundle(getArguments());
        } catch (BatchPushPayload.ParsingException e2) {
            com.batch.android.e.t.c(f22988i, "Error while reading payload message from fragment arguments", e2);
            return null;
        }
    }

    public abstract void l();

    public abstract void m();

    public void n() {
        if (this.f22994e != null || this.d <= 0) {
            return;
        }
        Handler handler = new Handler();
        handler.postAtTime(new f31(this, 12), this.d);
        this.f22994e = handler;
    }

    public void o() {
        Handler handler = this.f22994e;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f22994e = null;
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        super.onCancel(dialogInterface);
        i iVar = this.g;
        if (iVar != null) {
            iVar.b();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            com.batch.android.f0.c cVarJ = j();
            BatchMessage batchMessageK = k();
            if (cVarJ != null && batchMessageK != null) {
                i iVarA = s.a(j(), k());
                this.g = iVarA;
                iVarA.b(bundle);
            }
        }
        i iVar = this.g;
        if (iVar != null) {
            iVar.d();
        } else {
            com.batch.android.e.t.c(f22988i, "Could not create analytics delegate from arguments");
        }
        if (bundle != null) {
            this.d = bundle.getLong(f22990k, this.d);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        i iVar;
        super.onDismiss(dialogInterface);
        c cVar = this.f22992b.get();
        if (cVar != null) {
            cVar.onDialogDismiss(this);
        }
        FragmentActivity activity = getActivity();
        if ((activity == null || !activity.isChangingConfigurations()) && (iVar = this.g) != null) {
            iVar.c();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        FragmentTrackHelper.trackOnHiddenChanged(this, z);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        FragmentTrackHelper.trackFragmentPause(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        FragmentTrackHelper.trackFragmentResume(this);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        i iVar = this.g;
        if (iVar != null) {
            iVar.a(bundle);
        }
        bundle.putLong(f22990k, this.d);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        if (getView() != null) {
            if (this.f22993c) {
                f();
            }
            n();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        o();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        FragmentTrackHelper.onFragmentViewCreated(this, view, bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        FragmentTrackHelper.trackFragmentSetUserVisibleHint(this, z);
    }

    @Override // com.batch.android.c0.e
    public void a(c cVar) {
        this.f22992b = new WeakReference<>(cVar);
    }

    @Override // com.batch.android.o0.a.InterfaceC0065a
    public void a(com.batch.android.z.a.d dVar) {
        this.f22996h.put(dVar.b(), dVar);
    }
}
