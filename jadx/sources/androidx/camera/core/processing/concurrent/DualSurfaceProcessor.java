package androidx.camera.core.processing.concurrent;

import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Surface;
import androidx.camera.core.CompositionSettings;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceOutput;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.processing.SurfaceProcessorInternal;
import androidx.camera.core.processing.util.GLUtils;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import defpackage.at;
import defpackage.b5;
import defpackage.e5;
import defpackage.et;
import defpackage.jr;
import defpackage.y81;
import defpackage.z1;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class DualSurfaceProcessor implements SurfaceProcessorInternal, SurfaceTexture.OnFrameAvailableListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DualOpenGlRenderer f2583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HandlerThread f2584c;
    public final Executor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Handler f2585e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2586f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AtomicBoolean f2587h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LinkedHashMap f2588i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public SurfaceTexture f2589j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public SurfaceTexture f2590k;

    public DualSurfaceProcessor(DynamicRange dynamicRange, CompositionSettings compositionSettings, CompositionSettings compositionSettings2) {
        Map map = Collections.EMPTY_MAP;
        this.f2586f = 0;
        this.g = false;
        this.f2587h = new AtomicBoolean(false);
        this.f2588i = new LinkedHashMap();
        HandlerThread handlerThread = new HandlerThread("CameraX-GL Thread");
        this.f2584c = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        this.f2585e = handler;
        this.d = CameraXExecutors.d(handler);
        this.f2583b = new DualOpenGlRenderer(compositionSettings, compositionSettings2);
        try {
            try {
                CallbackToFutureAdapter.a(new y81(this, dynamicRange)).get();
            } catch (InterruptedException | ExecutionException e2) {
                e = e2;
                e = e instanceof ExecutionException ? e.getCause() : e;
                if (!(e instanceof RuntimeException)) {
                    throw new IllegalStateException("Failed to create DefaultSurfaceProcessor", e);
                }
                throw ((RuntimeException) e);
            }
        } catch (RuntimeException e3) {
            release();
            throw e3;
        }
    }

    @Override // androidx.camera.core.SurfaceProcessor
    public final void a(SurfaceRequest surfaceRequest) {
        if (this.f2587h.get()) {
            surfaceRequest.c();
        } else {
            e(new jr(this, surfaceRequest, 10), new at(surfaceRequest, 0));
        }
    }

    @Override // androidx.camera.core.SurfaceProcessor
    public final void c(SurfaceOutput surfaceOutput) throws IOException {
        if (this.f2587h.get()) {
            surfaceOutput.close();
            return;
        }
        jr jrVar = new jr(this, surfaceOutput, 11);
        Objects.requireNonNull(surfaceOutput);
        e(jrVar, new z1(surfaceOutput, 28));
    }

    public final void d() {
        if (this.g && this.f2586f == 0) {
            LinkedHashMap linkedHashMap = this.f2588i;
            Iterator it = linkedHashMap.keySet().iterator();
            while (it.hasNext()) {
                ((SurfaceOutput) it.next()).close();
            }
            linkedHashMap.clear();
            DualOpenGlRenderer dualOpenGlRenderer = this.f2583b;
            if (dualOpenGlRenderer.f2541a.getAndSet(false)) {
                GLUtils.c(dualOpenGlRenderer.f2543c);
                dualOpenGlRenderer.h();
            }
            dualOpenGlRenderer.n = -1;
            dualOpenGlRenderer.o = -1;
            this.f2584c.quit();
        }
    }

    public final void e(Runnable runnable, Runnable runnable2) {
        try {
            this.d.execute(new b5(this, runnable2, runnable, 12));
        } catch (RejectedExecutionException unused) {
            Logger.c(5, "DualSurfaceProcessor");
            runnable2.run();
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        SurfaceTexture surfaceTexture2;
        if (this.f2587h.get() || (surfaceTexture2 = this.f2589j) == null || this.f2590k == null) {
            return;
        }
        surfaceTexture2.updateTexImage();
        this.f2590k.updateTexImage();
        for (Map.Entry entry : this.f2588i.entrySet()) {
            Surface surface = (Surface) entry.getValue();
            SurfaceOutput surfaceOutput = (SurfaceOutput) entry.getKey();
            if (surfaceOutput.getFormat() == 34) {
                try {
                    this.f2583b.l(surfaceTexture.getTimestamp(), surface, surfaceOutput, this.f2589j, this.f2590k);
                } catch (RuntimeException unused) {
                    Logger.b("DualSurfaceProcessor");
                }
            }
        }
    }

    @Override // androidx.camera.core.processing.SurfaceProcessorInternal
    public final void release() {
        if (this.f2587h.getAndSet(true)) {
            return;
        }
        e(new et(this, 6), new e5(2));
    }
}
