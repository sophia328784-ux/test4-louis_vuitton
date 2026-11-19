package com.vuitton.android.presentation.screen.pdp.vto.beauty.utils;

import android.content.Context;
import android.graphics.SurfaceTexture;
import com.perfectcorp.perfectlib.MakeupCam;
import com.perfectcorp.perfectlib.ShadeFinder;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.utils.CameraController;
import com.vuitton.core.infrastructure.perfectcorp.CameraFacing;
import com.vuitton.core.infrastructure.perfectcorp.CameraLibrary;
import com.vuitton.core.infrastructure.perfectcorp.PfCamera;
import defpackage.md;
import defpackage.s3;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.squirrelframework.foundation.fsm.MvelScriptManager;
import timber.log.Timber;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\nB#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;", "", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/perfectcorp/perfectlib/MakeupCam;", "makeupCam", "Lcom/perfectcorp/perfectlib/ShadeFinder;", "shadeFinder", "<init>", "(Landroid/content/Context;Lcom/perfectcorp/perfectlib/MakeupCam;Lcom/perfectcorp/perfectlib/ShadeFinder;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CameraController {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ int f62313i = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f62314a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MakeupCam f62315b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ShadeFinder f62316c;
    public PfCamera d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f62317e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f62318f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public SurfaceTexture f62319h;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0007R\u0014\u0010\t\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0007¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController$Companion;", "", "", "TAG", "Ljava/lang/String;", "", "SURFACE_TEXTURE_ID", "I", "PREVIEW_WIDTH", "PREVIEW_HEIGHT", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public CameraController(Context context, MakeupCam makeupCam, ShadeFinder shadeFinder) {
        context.getClass();
        this.f62314a = context;
        this.f62315b = makeupCam;
        this.f62316c = shadeFinder;
        this.g = true;
    }

    public static void c(PfCamera pfCamera) {
        PfCamera.Parameters parametersC = pfCamera.c();
        List listE = parametersC.e();
        if (listE.contains("continuous-picture")) {
            parametersC.d("continuous-picture");
        } else if (listE.contains("auto")) {
            parametersC.d("auto");
        } else {
            Timber.Forest forest = Timber.f80066a;
            forest.g("CameraController");
            forest.a("No supported focus mode found.", new Object[0]);
        }
        pfCamera.f(parametersC);
    }

    public final void a(CameraLibrary cameraLibrary, CameraFacing cameraFacing) {
        cameraLibrary.getClass();
        cameraFacing.getClass();
        Timber.Forest forest = Timber.f80066a;
        forest.g("CameraController");
        final int i2 = 0;
        forest.a("[startCamera]", new Object[0]);
        b();
        try {
            PfCamera pfCameraD = PfCamera.d(this.f62314a.getApplicationContext(), cameraLibrary, cameraFacing);
            this.d = pfCameraD;
            pfCameraD.l();
            PfCamera.Size previewSize = pfCameraD.c().getPreviewSize();
            this.f62317e = previewSize.f66175a;
            this.f62318f = previewSize.f66176b;
            pfCameraD.g(new s3(this, 14));
            SurfaceTexture surfaceTexture = new SurfaceTexture(10);
            this.f62319h = surfaceTexture;
            pfCameraD.i(surfaceTexture);
            final PfCamera.CameraInfo cameraInfoB = pfCameraD.b();
            forest.g("CameraController");
            forest.a("Camera info: facing=" + cameraInfoB.f66173a + ", orientation=" + cameraInfoB.f66174b, new Object[0]);
            final Function0 function0 = new Function0(this) { // from class: ui

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ CameraController f80325c;

                {
                    this.f80325c = this;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    int i3 = i2;
                    PfCamera.CameraInfo cameraInfo = cameraInfoB;
                    CameraController cameraController = this.f80325c;
                    switch (i3) {
                        case 0:
                            MakeupCam makeupCam = cameraController.f62315b;
                            if (makeupCam != null) {
                                makeupCam.onCameraOpened(cameraInfo.f66173a == CameraFacing.FRONT, cameraInfo.f66174b, cameraController.f62317e, cameraController.f62318f);
                            }
                            break;
                        default:
                            ShadeFinder shadeFinder = cameraController.f62316c;
                            if (shadeFinder != null) {
                                shadeFinder.onCameraOpened(cameraInfo.f66173a == CameraFacing.FRONT, cameraInfo.f66174b, cameraController.f62317e, cameraController.f62318f);
                            }
                            break;
                    }
                    return Unit.f71739a;
                }
            };
            new Thread() { // from class: kotlin.concurrent.ThreadsKt$thread$thread$1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    function0.mo47invoke();
                }
            }.start();
            final int i3 = 1;
            final Function0 function1 = new Function0(this) { // from class: ui

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ CameraController f80325c;

                {
                    this.f80325c = this;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    int i4 = i3;
                    PfCamera.CameraInfo cameraInfo = cameraInfoB;
                    CameraController cameraController = this.f80325c;
                    switch (i4) {
                        case 0:
                            MakeupCam makeupCam = cameraController.f62315b;
                            if (makeupCam != null) {
                                makeupCam.onCameraOpened(cameraInfo.f66173a == CameraFacing.FRONT, cameraInfo.f66174b, cameraController.f62317e, cameraController.f62318f);
                            }
                            break;
                        default:
                            ShadeFinder shadeFinder = cameraController.f62316c;
                            if (shadeFinder != null) {
                                shadeFinder.onCameraOpened(cameraInfo.f66173a == CameraFacing.FRONT, cameraInfo.f66174b, cameraController.f62317e, cameraController.f62318f);
                            }
                            break;
                    }
                    return Unit.f71739a;
                }
            };
            new Thread() { // from class: kotlin.concurrent.ThreadsKt$thread$thread$1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    function1.mo47invoke();
                }
            }.start();
            c(pfCameraD);
            PfCamera pfCamera = this.d;
            if (pfCamera != null) {
                try {
                    pfCamera.j();
                    pfCamera.a(new md(24));
                } catch (Exception e2) {
                    Timber.Forest forest2 = Timber.f80066a;
                    forest2.g("CameraController");
                    forest2.b(e2, "[startPreview] failed", new Object[0]);
                }
            }
        } catch (Exception e3) {
            Timber.Forest forest3 = Timber.f80066a;
            forest3.g("CameraController");
            forest3.b(e3, "[startCamera] error", new Object[0]);
            PfCamera pfCamera2 = this.d;
            if (pfCamera2 != null) {
                pfCamera2.e();
            }
            this.d = null;
        }
    }

    public final void b() {
        Timber.Forest forest = Timber.f80066a;
        forest.g("CameraController");
        forest.a("[stopCamera]", new Object[0]);
        PfCamera pfCamera = this.d;
        if (pfCamera != null) {
            pfCamera.k();
            pfCamera.g(null);
            pfCamera.h();
            pfCamera.e();
        }
        this.d = null;
        SurfaceTexture surfaceTexture = this.f62319h;
        if (surfaceTexture != null) {
            surfaceTexture.release();
        }
        this.f62319h = null;
    }
}
