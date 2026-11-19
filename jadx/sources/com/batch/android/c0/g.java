package com.batch.android.c0;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Point;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import com.batch.android.BatchMessage;
import com.batch.android.R;
import com.batch.android.e.t;
import com.batch.android.i;
import defpackage.md;
import defpackage.r81;
import java.io.IOException;
import java.util.Locale;
import java.util.Map;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class g extends b<com.batch.android.h0.g> implements com.batch.android.n0.d.a, com.batch.android.z.a.c, MediaPlayer.OnPreparedListener, TextureView.SurfaceTextureListener {
    private static final String x = "UniversalTemplateFragment";
    private static final String y = "messageModel";
    private com.batch.android.n0.d l = null;
    private com.batch.android.a0.d m = null;
    private boolean n = false;
    private boolean o = true;
    private boolean p = false;
    private Integer q = null;
    private com.batch.android.z.a.d r = null;
    private com.batch.android.z.a s = null;
    private MediaPlayer t = null;
    private boolean u = false;
    private Surface v = null;
    private boolean w = false;

    private View a(Context context) {
        com.batch.android.n0.d dVar = new com.batch.android.n0.d(new ContextThemeWrapper(context, com.batch.android.o0.c.a(context)), j(), p(), this.r, r());
        this.l = dVar;
        dVar.setActionListener(this);
        this.l.setSurfaceHolderCallback(this);
        return this.l;
    }

    private void c(com.batch.android.z.a.d dVar) {
        this.r = dVar;
        this.l.a(dVar);
    }

    private com.batch.android.a0.d p() {
        if (this.m == null) {
            try {
                com.batch.android.a0.d dVarB = new com.batch.android.a0.g(new com.batch.android.b0.a(), j().f23464h).b();
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

    private synchronized boolean r() {
        if (this.r == null && j().m != null) {
            com.batch.android.z.a aVar = this.s;
            if (aVar == null) {
                return true;
            }
            if (aVar.getStatus() != AsyncTask.Status.FINISHED) {
                return true;
            }
        }
        return false;
    }

    private void s() {
        MediaPlayer mediaPlayer = this.t;
        if (mediaPlayer == null || !this.u || this.v == null) {
            return;
        }
        mediaPlayer.seekTo(0);
        this.t.start();
    }

    @Override // com.batch.android.z.a.c
    public void b(com.batch.android.f0.d dVar) {
        this.r = null;
        this.l.a((com.batch.android.z.a.d) null);
    }

    @Override // androidx.fragment.app.DialogFragment
    @Deprecated
    public void dismiss() {
        super.dismiss();
        this.w = true;
    }

    @Override // androidx.fragment.app.DialogFragment
    @Deprecated
    public void dismissAllowingStateLoss() {
        super.dismissAllowingStateLoss();
        this.w = true;
    }

    @Override // com.batch.android.c0.b
    public boolean g() {
        com.batch.android.n0.d dVar = this.l;
        return dVar == null || dVar.a();
    }

    @Override // com.batch.android.c0.b
    public void h() {
        super.h();
        this.w = true;
    }

    @Override // com.batch.android.c0.b
    public int i() {
        return j().w;
    }

    @Override // com.batch.android.c0.b
    public void l() {
        com.batch.android.n0.d dVar = this.l;
        if (dVar != null) {
            dVar.k();
        }
    }

    @Override // com.batch.android.c0.b
    public void m() {
        if (this.w) {
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
        setStyle(2, this.o ? R.style.com_batchsdk_UniversalDialogTheme : R.style.com_batchsdk_UniversalDialogTheme_Fullscreen);
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
        AccessibilityManager accessibilityManager;
        String str;
        com.batch.android.h0.g gVarJ = j();
        if (gVarJ.n != null && this.t == null) {
            this.u = false;
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.t = mediaPlayer;
            mediaPlayer.setVolume(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            this.t.setLooping(true);
            try {
                this.t.setDataSource(gVarJ.n);
            } catch (IOException e2) {
                t.c(x, "Error while creating the MediaPlayer for URL " + gVarJ.n, e2);
            }
            this.t.setOnPreparedListener(this);
            this.t.prepareAsync();
        }
        View viewA = a(layoutInflater.getContext());
        if (this.o && this.n) {
            viewA.setSystemUiVisibility(viewA.getSystemUiVisibility() | 8192);
        }
        if (gVarJ.n == null && (str = gVarJ.m) != null && this.s == null) {
            com.batch.android.z.a.d dVarB = b(str);
            if (dVarB != null) {
                c(dVarB);
            } else {
                com.batch.android.z.a aVar = new com.batch.android.z.a(this);
                this.s = aVar;
                aVar.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, gVarJ.m);
            }
        }
        String strF = gVarJ.f();
        if (strF != null && (accessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility")) != null && accessibilityManager.isEnabled()) {
            AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
            accessibilityEventObtain.setEventType(128);
            viewA.onInitializeAccessibilityEvent(accessibilityEventObtain);
            accessibilityEventObtain.getText().add(strF);
            accessibilityManager.sendAccessibilityEvent(accessibilityEventObtain);
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
        MediaPlayer mediaPlayer = this.t;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.t.setDisplay(null);
            this.t.release();
            this.t = null;
        }
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        this.u = true;
        s();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
        Surface surface = new Surface(surfaceTexture);
        this.v = surface;
        MediaPlayer mediaPlayer = this.t;
        if (mediaPlayer != null) {
            mediaPlayer.setSurface(surface);
        }
        s();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        MediaPlayer mediaPlayer = this.t;
        if (mediaPlayer != null) {
            mediaPlayer.setSurface(null);
        }
        Surface surface = this.v;
        if (surface == null) {
            return true;
        }
        surface.release();
        this.v = null;
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // com.batch.android.z.a.c
    public void c() {
        this.l.e();
    }

    @Override // com.batch.android.z.a.c
    public void b(com.batch.android.z.a.d dVar) {
        a(dVar);
        c(dVar);
    }

    public static g a(BatchMessage batchMessage, com.batch.android.h0.g gVar) {
        g gVar2 = new g();
        gVar2.a(batchMessage, gVar);
        return gVar2;
    }

    @Override // com.batch.android.n0.d.a
    public void a() {
        if (this.w) {
            return;
        }
        h();
        i iVar = this.g;
        if (iVar != null) {
            iVar.b();
        }
    }

    @Override // com.batch.android.n0.d.a
    public void a(int i2, com.batch.android.f0.b bVar) {
        if (this.w) {
            return;
        }
        h();
        i iVar = this.g;
        if (iVar != null) {
            iVar.a(i2, bVar);
        }
        this.f22995f.a(getContext(), k(), bVar);
    }
}
