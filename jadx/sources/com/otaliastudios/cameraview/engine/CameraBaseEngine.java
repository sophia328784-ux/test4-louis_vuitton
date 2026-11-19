package com.otaliastudios.cameraview.engine;

import android.location.Location;
import com.google.android.gms.tasks.Tasks;
import com.otaliastudios.cameraview.CameraException;
import com.otaliastudios.cameraview.CameraLogger;
import com.otaliastudios.cameraview.CameraOptions;
import com.otaliastudios.cameraview.PictureResult;
import com.otaliastudios.cameraview.controls.Audio;
import com.otaliastudios.cameraview.controls.AudioCodec;
import com.otaliastudios.cameraview.controls.Facing;
import com.otaliastudios.cameraview.controls.Flash;
import com.otaliastudios.cameraview.controls.Hdr;
import com.otaliastudios.cameraview.controls.Mode;
import com.otaliastudios.cameraview.controls.PictureFormat;
import com.otaliastudios.cameraview.controls.VideoCodec;
import com.otaliastudios.cameraview.controls.WhiteBalance;
import com.otaliastudios.cameraview.engine.offset.Angles;
import com.otaliastudios.cameraview.engine.offset.Reference;
import com.otaliastudios.cameraview.engine.orchestrator.CameraState;
import com.otaliastudios.cameraview.frame.FrameManager;
import com.otaliastudios.cameraview.overlay.Overlay;
import com.otaliastudios.cameraview.picture.PictureRecorder;
import com.otaliastudios.cameraview.preview.CameraPreview;
import com.otaliastudios.cameraview.size.AspectRatio;
import com.otaliastudios.cameraview.size.Size;
import com.otaliastudios.cameraview.size.SizeSelector;
import com.otaliastudios.cameraview.size.SizeSelectors;
import defpackage.md;
import defpackage.v7;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraBaseEngine extends CameraEngine {
    public float A;
    public boolean B;
    public FrameManager C;
    public final Angles D;
    public SizeSelector E;
    public SizeSelector F;
    public SizeSelector G;
    public Facing H;
    public Mode I;
    public Audio J;
    public long K;
    public int L;
    public int M;
    public int N;
    public long O;
    public int P;
    public int Q;
    public int R;
    public int S;
    public int T;
    public Overlay V;
    public CameraPreview g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public CameraOptions f38879h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public PictureRecorder f38880i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Size f38881j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Size f38882k;
    public Size l;
    public int m;
    public boolean n;
    public Flash o;
    public WhiteBalance p;
    public VideoCodec q;
    public AudioCodec r;
    public Hdr s;
    public PictureFormat t;
    public Location u;
    public float v;
    public float w;
    public boolean x;
    public boolean y;
    public boolean z;

    public CameraBaseEngine(CameraEngine.Callback callback) {
        super(callback);
        this.D = new Angles();
        Tasks.f(null);
        Tasks.f(null);
        Tasks.f(null);
        Tasks.f(null);
        Tasks.f(null);
        Tasks.f(null);
        Tasks.f(null);
        Tasks.f(null);
    }

    public final Size S(Mode mode) {
        SizeSelector sizeSelector;
        Set setUnmodifiableSet;
        boolean zB = this.D.b(Reference.SENSOR, Reference.VIEW);
        if (mode == Mode.PICTURE) {
            sizeSelector = this.F;
            setUnmodifiableSet = Collections.unmodifiableSet(this.f38879h.f38825e);
        } else {
            sizeSelector = this.G;
            setUnmodifiableSet = Collections.unmodifiableSet(this.f38879h.f38826f);
        }
        SizeSelector sizeSelectorH = SizeSelectors.h(sizeSelector, SizeSelectors.c());
        ArrayList arrayList = new ArrayList(setUnmodifiableSet);
        Size size = (Size) sizeSelectorH.a(arrayList).get(0);
        if (arrayList.contains(size)) {
            CameraEngine.f38883f.b(1, "computeCaptureSize:", "result:", size, "flip:", Boolean.valueOf(zB), "mode:", mode);
            return zB ? size.a() : size;
        }
        v7.h("SizeSelectors must not return Sizes other than those in the input list.");
        return null;
    }

    public final Size T() {
        ArrayList<Size> arrayListW = W();
        boolean zB = this.D.b(Reference.SENSOR, Reference.VIEW);
        ArrayList arrayList = new ArrayList(arrayListW.size());
        for (Size sizeA : arrayListW) {
            if (zB) {
                sizeA = sizeA.a();
            }
            arrayList.add(sizeA);
        }
        Size sizeX = X(Reference.VIEW);
        if (sizeX == null) {
            md.k("targetMinSize should not be null here.");
            return null;
        }
        Size size = this.f38881j;
        AspectRatio aspectRatioA = AspectRatio.a(size.f39086b, size.f39087c);
        if (zB) {
            aspectRatioA = AspectRatio.a(aspectRatioA.f39085c, aspectRatioA.f39084b);
        }
        CameraLogger cameraLogger = CameraEngine.f38883f;
        cameraLogger.b(1, "computePreviewStreamSize:", "targetRatio:", aspectRatioA, "targetMinSize:", sizeX);
        SizeSelector sizeSelectorA = SizeSelectors.a(SizeSelectors.b(aspectRatioA), SizeSelectors.c());
        SizeSelector sizeSelectorA2 = SizeSelectors.a(SizeSelectors.f(sizeX.f39087c), SizeSelectors.g(sizeX.f39086b), SizeSelectors.i());
        SizeSelector sizeSelectorH = SizeSelectors.h(SizeSelectors.a(sizeSelectorA, sizeSelectorA2), sizeSelectorA2, sizeSelectorA, SizeSelectors.c());
        SizeSelector sizeSelector = this.E;
        if (sizeSelector != null) {
            sizeSelectorH = SizeSelectors.h(sizeSelector, sizeSelectorH);
        }
        Size sizeA2 = (Size) sizeSelectorH.a(arrayList).get(0);
        if (!arrayList.contains(sizeA2)) {
            v7.h("SizeSelectors must not return Sizes other than those in the input list.");
            return null;
        }
        if (zB) {
            sizeA2 = sizeA2.a();
        }
        cameraLogger.b(1, "computePreviewStreamSize:", "result:", sizeA2, "flip:", Boolean.valueOf(zB));
        return sizeA2;
    }

    public final FrameManager U() {
        if (this.C == null) {
            this.C = Z(this.T);
        }
        return this.C;
    }

    public final Size V(Reference reference) {
        Size size = this.f38881j;
        if (size == null || this.I == Mode.VIDEO) {
            return null;
        }
        return this.D.b(Reference.SENSOR, reference) ? size.a() : size;
    }

    public abstract ArrayList W();

    public final Size X(Reference reference) {
        CameraPreview cameraPreview = this.g;
        if (cameraPreview == null) {
            return null;
        }
        boolean zB = this.D.b(Reference.VIEW, reference);
        int i2 = cameraPreview.d;
        return zB ? new Size(i2, cameraPreview.f39070e).a() : new Size(i2, cameraPreview.f39070e);
    }

    public final Size Y(Reference reference) {
        Size sizeQ = q(reference);
        if (sizeQ == null) {
            return null;
        }
        int i2 = sizeQ.f39087c;
        int i3 = sizeQ.f39086b;
        boolean zB = this.D.b(reference, Reference.VIEW);
        int i4 = zB ? this.Q : this.P;
        int i5 = zB ? this.P : this.Q;
        if (i4 <= 0) {
            i4 = Integer.MAX_VALUE;
        }
        if (i5 <= 0) {
            i5 = Integer.MAX_VALUE;
        }
        float fC = AspectRatio.a(i3, i2).c();
        if (AspectRatio.a(i4, i5).c() >= fC) {
            int iMin = Math.min(i2, i5);
            return new Size((int) Math.floor(iMin * fC), iMin);
        }
        int iMin2 = Math.min(i3, i4);
        return new Size(iMin2, (int) Math.floor(iMin2 / fC));
    }

    public abstract FrameManager Z(int i2);

    public abstract void a0();

    public abstract void b0(PictureResult.Stub stub, boolean z);

    public abstract void c0(PictureResult.Stub stub, AspectRatio aspectRatio, boolean z);

    public final void d0(Audio audio) {
        if (this.J != audio) {
            this.J = audio;
        }
    }

    public final void e0(final Facing facing) {
        final Facing facing2 = this.H;
        if (facing != facing2) {
            this.H = facing;
            this.f38886e.f("facing", CameraState.ENGINE, new Runnable() { // from class: com.otaliastudios.cameraview.engine.CameraBaseEngine.1
                @Override // java.lang.Runnable
                public void run() {
                    boolean zO = CameraBaseEngine.this.o(facing);
                    CameraBaseEngine cameraBaseEngine = CameraBaseEngine.this;
                    if (zO) {
                        cameraBaseEngine.z();
                    } else {
                        cameraBaseEngine.H = facing2;
                    }
                }
            });
        }
    }

    public final void f0(Mode mode) {
        if (mode != this.I) {
            this.I = mode;
            this.f38886e.f("mode", CameraState.ENGINE, new Runnable() { // from class: com.otaliastudios.cameraview.engine.CameraBaseEngine.2
                @Override // java.lang.Runnable
                public void run() {
                    CameraBaseEngine.this.z();
                }
            });
        }
    }

    public final void g0(final PictureResult.Stub stub) {
        final boolean z = this.y;
        this.f38886e.f("take picture", CameraState.BIND, new Runnable() { // from class: com.otaliastudios.cameraview.engine.CameraBaseEngine.3
            @Override // java.lang.Runnable
            public void run() {
                CameraEngine.f38883f.b(1, "takePicture:", "running. isTakingPicture:", Boolean.valueOf(CameraBaseEngine.this.f38880i != null));
                CameraBaseEngine cameraBaseEngine = CameraBaseEngine.this;
                if (cameraBaseEngine.f38880i != null) {
                    return;
                }
                if (cameraBaseEngine.I == Mode.VIDEO) {
                    md.k("Can't take hq pictures while in VIDEO mode");
                    return;
                }
                PictureResult.Stub stub2 = stub;
                stub2.f38847a = false;
                stub2.f38848b = cameraBaseEngine.u;
                stub2.f38851f = cameraBaseEngine.t;
                cameraBaseEngine.b0(stub2, z);
            }
        });
    }

    public void h(PictureResult.Stub stub, Exception exc) {
        this.f38880i = null;
        CameraEngine.Callback callback = this.d;
        if (stub != null) {
            callback.e(stub);
            return;
        }
        CameraEngine.f38883f.b(3, "onPictureResult", "result is null: something went wrong.", exc);
        callback.i(new CameraException(exc, 4));
    }

    public final void h0(final PictureResult.Stub stub) {
        final boolean z = this.z;
        this.f38886e.f("take picture snapshot", CameraState.BIND, new Runnable() { // from class: com.otaliastudios.cameraview.engine.CameraBaseEngine.4
            @Override // java.lang.Runnable
            public void run() {
                CameraEngine.f38883f.b(1, "takePictureSnapshot:", "running. isTakingPicture:", Boolean.valueOf(CameraBaseEngine.this.f38880i != null));
                CameraBaseEngine cameraBaseEngine = CameraBaseEngine.this;
                if (cameraBaseEngine.f38880i != null) {
                    return;
                }
                PictureResult.Stub stub2 = stub;
                stub2.f38848b = cameraBaseEngine.u;
                stub2.f38847a = true;
                stub2.f38851f = PictureFormat.JPEG;
                Size sizeX = cameraBaseEngine.X(Reference.OUTPUT);
                HashMap map = AspectRatio.d;
                CameraBaseEngine.this.c0(stub, AspectRatio.a(sizeX.f39086b, sizeX.f39087c), z);
            }
        });
    }

    @Override // com.otaliastudios.cameraview.picture.PictureRecorder.PictureResultListener
    public final void j(boolean z) {
        this.d.f(!z);
    }

    @Override // com.otaliastudios.cameraview.preview.CameraPreview.SurfaceCallback
    public final void m() {
        CameraEngine.f38883f.b(1, "onSurfaceChanged:", "Size is", X(Reference.VIEW));
        this.f38886e.f("surface changed", CameraState.BIND, new Runnable() { // from class: com.otaliastudios.cameraview.engine.CameraBaseEngine.8
            @Override // java.lang.Runnable
            public void run() {
                Size sizeT = CameraBaseEngine.this.T();
                if (sizeT.equals(CameraBaseEngine.this.f38882k)) {
                    CameraEngine.f38883f.b(1, "onSurfaceChanged:", "The computed preview size is identical. No op.");
                    return;
                }
                CameraEngine.f38883f.b(1, "onSurfaceChanged:", "Computed a new preview size. Calling onPreviewStreamSizeChanged().");
                CameraBaseEngine cameraBaseEngine = CameraBaseEngine.this;
                cameraBaseEngine.f38882k = sizeT;
                cameraBaseEngine.a0();
            }
        });
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final Size q(Reference reference) {
        Size size = this.f38882k;
        if (size == null) {
            return null;
        }
        return this.D.b(Reference.SENSOR, reference) ? size.a() : size;
    }
}
