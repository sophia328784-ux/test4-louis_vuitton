package androidx.camera.core.processing;

import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Size;
import android.view.Surface;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.ImageProcessingUtil;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceOutput;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.utils.MatrixExt;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.processing.util.GLUtils;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.at;
import defpackage.b5;
import defpackage.e5;
import defpackage.jr;
import defpackage.y81;
import defpackage.z1;
import defpackage.zs;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Triple;

/* JADX INFO: loaded from: classes.dex */
public class DefaultSurfaceProcessor implements SurfaceProcessorInternal, SurfaceTexture.OnFrameAvailableListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OpenGlRenderer f2531b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HandlerThread f2532c;
    public final Executor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Handler f2533e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicBoolean f2534f;
    public final float[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float[] f2535h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LinkedHashMap f2536i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f2537j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f2538k;
    public final ArrayList l;

    public static abstract class PendingSnapshot {
    }

    public DefaultSurfaceProcessor(DynamicRange dynamicRange) {
        Map map = Collections.EMPTY_MAP;
        this.f2534f = new AtomicBoolean(false);
        this.g = new float[16];
        this.f2535h = new float[16];
        this.f2536i = new LinkedHashMap();
        this.f2537j = 0;
        this.f2538k = false;
        this.l = new ArrayList();
        HandlerThread handlerThread = new HandlerThread("CameraX-GL Thread");
        this.f2532c = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        this.f2533e = handler;
        this.d = CameraXExecutors.d(handler);
        this.f2531b = new OpenGlRenderer();
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
        if (this.f2534f.get()) {
            surfaceRequest.c();
        } else {
            e(new jr(this, surfaceRequest, 9), new at(surfaceRequest, 0));
        }
    }

    @Override // androidx.camera.core.processing.SurfaceProcessorInternal
    public final ListenableFuture b(final int i2, final int i3) {
        return Futures.h(CallbackToFutureAdapter.a(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.core.processing.a
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object i(CallbackToFutureAdapter.Completer completer) {
                AutoValue_DefaultSurfaceProcessor_PendingSnapshot autoValue_DefaultSurfaceProcessor_PendingSnapshot = new AutoValue_DefaultSurfaceProcessor_PendingSnapshot(i2, i3, completer);
                DefaultSurfaceProcessor defaultSurfaceProcessor = this.f2572b;
                defaultSurfaceProcessor.e(new b(defaultSurfaceProcessor, autoValue_DefaultSurfaceProcessor_PendingSnapshot, 0), new zs(completer, 0));
                return "DefaultSurfaceProcessor#snapshot";
            }
        }));
    }

    @Override // androidx.camera.core.SurfaceProcessor
    public final void c(SurfaceOutput surfaceOutput) throws IOException {
        if (this.f2534f.get()) {
            surfaceOutput.close();
            return;
        }
        jr jrVar = new jr(this, surfaceOutput, 8);
        Objects.requireNonNull(surfaceOutput);
        e(jrVar, new z1(surfaceOutput, 28));
    }

    public final void d() {
        if (this.f2538k && this.f2537j == 0) {
            LinkedHashMap linkedHashMap = this.f2536i;
            Iterator it = linkedHashMap.keySet().iterator();
            while (it.hasNext()) {
                ((SurfaceOutput) it.next()).close();
            }
            Iterator it2 = this.l.iterator();
            while (it2.hasNext()) {
                ((AutoValue_DefaultSurfaceProcessor_PendingSnapshot) ((PendingSnapshot) it2.next())).f2522c.d(new Exception("Failed to snapshot: DefaultSurfaceProcessor is released."));
            }
            linkedHashMap.clear();
            OpenGlRenderer openGlRenderer = this.f2531b;
            if (openGlRenderer.f2541a.getAndSet(false)) {
                GLUtils.c(openGlRenderer.f2543c);
                openGlRenderer.h();
            }
            this.f2532c.quit();
        }
    }

    public final void e(Runnable runnable, Runnable runnable2) {
        try {
            this.d.execute(new b5(this, runnable2, runnable, 9));
        } catch (RejectedExecutionException unused) {
            Logger.c(5, "DefaultSurfaceProcessor");
            runnable2.run();
        }
    }

    public final void f(Exception exc) {
        ArrayList arrayList = this.l;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((AutoValue_DefaultSurfaceProcessor_PendingSnapshot) ((PendingSnapshot) it.next())).f2522c.d(exc);
        }
        arrayList.clear();
    }

    public final Bitmap g(Size size, float[] fArr, int i2) {
        float[] fArr2 = (float[]) fArr.clone();
        MatrixExt.a(i2, fArr2);
        MatrixExt.b(fArr2);
        Size sizeI = TransformUtils.i(size, i2);
        OpenGlRenderer openGlRenderer = this.f2531b;
        openGlRenderer.getClass();
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(sizeI.getHeight() * sizeI.getWidth() * 4);
        Preconditions.b(byteBufferAllocateDirect.capacity() == (sizeI.getHeight() * sizeI.getWidth()) * 4, "ByteBuffer capacity is not equal to width * height * 4.");
        Preconditions.b(byteBufferAllocateDirect.isDirect(), "ByteBuffer is not direct.");
        int[] iArr = GLUtils.f2617a;
        int[] iArr2 = new int[1];
        GLES20.glGenTextures(1, iArr2, 0);
        GLUtils.b("glGenTextures");
        int i3 = iArr2[0];
        GLES20.glActiveTexture(33985);
        GLUtils.b("glActiveTexture");
        GLES20.glBindTexture(3553, i3);
        GLUtils.b("glBindTexture");
        GLES20.glTexImage2D(3553, 0, 6407, sizeI.getWidth(), sizeI.getHeight(), 0, 6407, 5121, null);
        GLUtils.b("glTexImage2D");
        GLES20.glTexParameteri(3553, 10240, 9729);
        GLES20.glTexParameteri(3553, 10241, 9729);
        int[] iArr3 = new int[1];
        GLES20.glGenFramebuffers(1, iArr3, 0);
        GLUtils.b("glGenFramebuffers");
        int i4 = iArr3[0];
        GLES20.glBindFramebuffer(36160, i4);
        GLUtils.b("glBindFramebuffer");
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, i3, 0);
        GLUtils.b("glFramebufferTexture2D");
        GLES20.glActiveTexture(33984);
        GLUtils.b("glActiveTexture");
        GLES20.glBindTexture(36197, openGlRenderer.m);
        GLUtils.b("glBindTexture");
        openGlRenderer.f2547i = null;
        GLES20.glViewport(0, 0, sizeI.getWidth(), sizeI.getHeight());
        GLES20.glScissor(0, 0, sizeI.getWidth(), sizeI.getHeight());
        GLUtils.Program2D program2D = openGlRenderer.f2549k;
        program2D.getClass();
        if (program2D instanceof GLUtils.SamplerShaderProgram) {
            GLES20.glUniformMatrix4fv(((GLUtils.SamplerShaderProgram) program2D).f2629f, 1, false, fArr2, 0);
            GLUtils.b("glUniformMatrix4fv");
        }
        GLES20.glDrawArrays(5, 0, 4);
        GLUtils.b("glDrawArrays");
        GLES20.glReadPixels(0, 0, sizeI.getWidth(), sizeI.getHeight(), 6408, 5121, byteBufferAllocateDirect);
        GLUtils.b("glReadPixels");
        GLES20.glBindFramebuffer(36160, 0);
        GLES20.glDeleteTextures(1, new int[]{i3}, 0);
        GLUtils.b("glDeleteTextures");
        GLES20.glDeleteFramebuffers(1, new int[]{i4}, 0);
        GLUtils.b("glDeleteFramebuffers");
        int i5 = openGlRenderer.m;
        GLES20.glActiveTexture(33984);
        GLUtils.b("glActiveTexture");
        GLES20.glBindTexture(36197, i5);
        GLUtils.b("glBindTexture");
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(sizeI.getWidth(), sizeI.getHeight(), Bitmap.Config.ARGB_8888);
        byteBufferAllocateDirect.rewind();
        ImageProcessingUtil.e(bitmapCreateBitmap, byteBufferAllocateDirect, sizeI.getWidth() * 4);
        return bitmapCreateBitmap;
    }

    public final void h(Triple triple) {
        ArrayList arrayList = this.l;
        if (arrayList.isEmpty()) {
            return;
        }
        if (triple == null) {
            f(new Exception("Failed to snapshot: no JPEG Surface."));
            return;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                Iterator it = arrayList.iterator();
                int i2 = -1;
                int i3 = -1;
                Bitmap bitmapG = null;
                byte[] byteArray = null;
                while (it.hasNext()) {
                    PendingSnapshot pendingSnapshot = (PendingSnapshot) it.next();
                    if (i2 != ((AutoValue_DefaultSurfaceProcessor_PendingSnapshot) pendingSnapshot).f2521b || bitmapG == null) {
                        i2 = ((AutoValue_DefaultSurfaceProcessor_PendingSnapshot) pendingSnapshot).f2521b;
                        if (bitmapG != null) {
                            bitmapG.recycle();
                        }
                        bitmapG = g((Size) triple.f71717c, (float[]) triple.d, i2);
                        i3 = -1;
                    }
                    if (i3 != ((AutoValue_DefaultSurfaceProcessor_PendingSnapshot) pendingSnapshot).f2520a) {
                        byteArrayOutputStream.reset();
                        i3 = ((AutoValue_DefaultSurfaceProcessor_PendingSnapshot) pendingSnapshot).f2520a;
                        bitmapG.compress(Bitmap.CompressFormat.JPEG, i3, byteArrayOutputStream);
                        byteArray = byteArrayOutputStream.toByteArray();
                    }
                    Surface surface = (Surface) triple.f71716b;
                    Objects.requireNonNull(byteArray);
                    ImageProcessingUtil.f(byteArray, surface);
                    ((AutoValue_DefaultSurfaceProcessor_PendingSnapshot) pendingSnapshot).f2522c.b(null);
                    it.remove();
                }
                byteArrayOutputStream.close();
            } catch (Throwable th) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e2) {
            f(e2);
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        if (this.f2534f.get()) {
            return;
        }
        surfaceTexture.updateTexImage();
        float[] fArr = this.g;
        surfaceTexture.getTransformMatrix(fArr);
        Triple triple = null;
        for (Map.Entry entry : this.f2536i.entrySet()) {
            Surface surface = (Surface) entry.getValue();
            SurfaceOutput surfaceOutput = (SurfaceOutput) entry.getKey();
            float[] fArr2 = this.f2535h;
            surfaceOutput.Q0(fArr2, fArr);
            if (surfaceOutput.getFormat() == 34) {
                try {
                    this.f2531b.j(surfaceTexture.getTimestamp(), fArr2, surface);
                } catch (RuntimeException unused) {
                    Logger.b("DefaultSurfaceProcessor");
                }
            } else {
                Preconditions.f("Unsupported format: " + surfaceOutput.getFormat(), surfaceOutput.getFormat() == 256);
                Preconditions.f("Only one JPEG output is supported.", triple == null);
                triple = new Triple(surface, surfaceOutput.getSize(), (float[]) fArr2.clone());
            }
        }
        try {
            h(triple);
        } catch (RuntimeException e2) {
            f(e2);
        }
    }

    @Override // androidx.camera.core.processing.SurfaceProcessorInternal
    public final void release() {
        if (this.f2534f.getAndSet(true)) {
            return;
        }
        e(new z1(this, 29), new e5(2));
    }
}
