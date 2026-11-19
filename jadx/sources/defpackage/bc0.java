package defpackage;

import com.cyberlink.clgpuimage.GPUImageRenderer;
import com.cyberlink.clgpuimage.Rotation;
import com.cyberlink.clgpuimage.cosmetic.GPUImageBackgroundFilter;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.perfectlib.MakeupCam;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrl;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class bc0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20821b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MakeupCam f20822c;

    public /* synthetic */ bc0(MakeupCam makeupCam, int i2) {
        this.f20821b = i2;
        this.f20822c = makeupCam;
    }

    /* JADX WARN: Code duplicated, block: B:45:0x0095 A[PHI: r0
      0x0095: PHI (r0v16 com.cyberlink.clgpuimage.GPUImageRenderer) = (r0v14 com.cyberlink.clgpuimage.GPUImageRenderer), (r0v17 com.cyberlink.clgpuimage.GPUImageRenderer) binds: [B:48:0x009f, B:44:0x0093] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:46:0x0099 A[PHI: r0
      0x0099: PHI (r0v15 com.cyberlink.clgpuimage.GPUImageRenderer) = (r0v14 com.cyberlink.clgpuimage.GPUImageRenderer), (r0v17 com.cyberlink.clgpuimage.GPUImageRenderer) binds: [B:48:0x009f, B:44:0x0093] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:56:0x00ae A[PHI: r0
      0x00ae: PHI (r0v9 com.cyberlink.clgpuimage.GPUImageRenderer) = (r0v7 com.cyberlink.clgpuimage.GPUImageRenderer), (r0v10 com.cyberlink.clgpuimage.GPUImageRenderer) binds: [B:59:0x00b8, B:55:0x00ac] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:57:0x00b2 A[PHI: r0
      0x00b2: PHI (r0v8 com.cyberlink.clgpuimage.GPUImageRenderer) = (r0v7 com.cyberlink.clgpuimage.GPUImageRenderer), (r0v10 com.cyberlink.clgpuimage.GPUImageRenderer) binds: [B:59:0x00b8, B:55:0x00ac] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // java.lang.Runnable
    public final void run() {
        int i2;
        Rotation rotation;
        GPUImageRenderer gPUImageRenderer;
        GPUImageRenderer gPUImageRenderer2;
        int i3 = this.f20821b;
        MakeupCam makeupCam = this.f20822c;
        switch (i3) {
            case 0:
                LiveMakeupCtrl liveMakeupCtrl = makeupCam.f39678e.f40751a;
                int rotation2 = liveMakeupCtrl.f40715b.getDefaultDisplay().getRotation();
                if (rotation2 == 1) {
                    i2 = 90;
                } else if (rotation2 != 2) {
                    i2 = rotation2 != 3 ? 0 : 270;
                } else {
                    i2 = 180;
                }
                boolean z = liveMakeupCtrl.q;
                int i4 = liveMakeupCtrl.r;
                int i5 = z ? (360 - ((i4 + i2) % 360)) % 360 : ((i4 - i2) + 360) % 360;
                liveMakeupCtrl.p = i5;
                if (i5 == 90) {
                    rotation = Rotation.ROTATION_90;
                } else if (i5 != 180) {
                    rotation = i5 != 270 ? Rotation.NORMAL : Rotation.ROTATION_270;
                } else {
                    rotation = Rotation.ROTATION_180;
                }
                boolean z2 = PfCommons.b().getResources().getConfiguration().orientation == 2;
                int i6 = (liveMakeupCtrl.r + i2) % Sink.ORIENTATION_180;
                if (liveMakeupCtrl.q) {
                    if (!(z2 && i6 == 0) && (z2 || i6 == 0)) {
                        gPUImageRenderer = liveMakeupCtrl.f40717e;
                        if (z2) {
                            gPUImageRenderer.i(rotation, false, true);
                        } else {
                            gPUImageRenderer.i(rotation, true, false);
                        }
                    } else {
                        gPUImageRenderer = liveMakeupCtrl.f40717e;
                        if (z2) {
                            gPUImageRenderer.i(rotation, true, false);
                        } else {
                            gPUImageRenderer.i(rotation, false, true);
                        }
                    }
                } else if (!(z2 && i6 == 0) && (z2 || i6 == 0)) {
                    gPUImageRenderer2 = liveMakeupCtrl.f40717e;
                    if (z2) {
                        gPUImageRenderer2.i(rotation, true, true);
                    } else {
                        gPUImageRenderer2.i(rotation, false, false);
                    }
                } else {
                    gPUImageRenderer2 = liveMakeupCtrl.f40717e;
                    if (z2) {
                        gPUImageRenderer2.i(rotation, false, false);
                    } else {
                        gPUImageRenderer2.i(rotation, true, true);
                    }
                }
                liveMakeupCtrl.g.I0(liveMakeupCtrl.p);
                GPUImageBackgroundFilter gPUImageBackgroundFilter = liveMakeupCtrl.f1;
                if (gPUImageBackgroundFilter != null) {
                    gPUImageBackgroundFilter.l0 = liveMakeupCtrl.p;
                }
                GPUImageBackgroundFilter gPUImageBackgroundFilter2 = liveMakeupCtrl.g1;
                if (gPUImageBackgroundFilter2 != null) {
                    gPUImageBackgroundFilter2.l0 = liveMakeupCtrl.p;
                }
                break;
            case 1:
                makeupCam.f39678e.f40751a.j(false);
                break;
            case 2:
                makeupCam.b();
                break;
            case 3:
                makeupCam.f39678e.f40751a.j(true);
                break;
            default:
                makeupCam.f39678e.f40751a.j(false);
                break;
        }
    }
}
