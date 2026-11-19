package androidx.camera.core.processing.concurrent;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Size;
import androidx.camera.core.Logger;
import androidx.camera.core.ProcessingException;
import androidx.camera.core.SurfaceOutput;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.processing.Node;
import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.core.processing.SurfaceProcessorInternal;
import androidx.camera.core.processing.TargetUtils;
import androidx.camera.core.processing.d;
import androidx.camera.core.processing.util.OutConfig;
import androidx.core.util.Preconditions;
import defpackage.ed;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes.dex */
public class DualSurfaceProcessorNode implements Node<In, Out> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SurfaceProcessorInternal f2591a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CameraInternal f2592b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CameraInternal f2593c;
    public Out d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public In f2594e;

    public static abstract class In {
        public static In d(SurfaceEdge surfaceEdge, SurfaceEdge surfaceEdge2, ArrayList arrayList) {
            return new AutoValue_DualSurfaceProcessorNode_In(surfaceEdge, surfaceEdge2, arrayList);
        }

        public abstract List a();

        public abstract SurfaceEdge b();

        public abstract SurfaceEdge c();
    }

    public static class Out extends HashMap<DualOutConfig, SurfaceEdge> {
    }

    public DualSurfaceProcessorNode(CameraInternal cameraInternal, CameraInternal cameraInternal2, SurfaceProcessorInternal surfaceProcessorInternal) {
        this.f2592b = cameraInternal;
        this.f2593c = cameraInternal2;
        this.f2591a = surfaceProcessorInternal;
    }

    public final void a(CameraInternal cameraInternal, CameraInternal cameraInternal2, SurfaceEdge surfaceEdge, SurfaceEdge surfaceEdge2, Map.Entry entry) {
        final SurfaceEdge surfaceEdge3 = (SurfaceEdge) entry.getValue();
        Objects.toString(surfaceEdge3);
        Logger.c(3, "DualSurfaceProcessorNode");
        Size sizeF = surfaceEdge.g.f();
        Rect rectA = ((DualOutConfig) entry.getKey()).a().a();
        if (!surfaceEdge.f2552c) {
            cameraInternal = null;
        }
        SurfaceOutput.CameraInputInfo cameraInputInfoF = SurfaceOutput.CameraInputInfo.f(sizeF, rectA, cameraInternal, ((DualOutConfig) entry.getKey()).a().c(), ((DualOutConfig) entry.getKey()).a().g());
        Size sizeF2 = surfaceEdge2.g.f();
        Rect rectA2 = ((DualOutConfig) entry.getKey()).b().a();
        if (!surfaceEdge2.f2552c) {
            cameraInternal2 = null;
        }
        SurfaceOutput.CameraInputInfo cameraInputInfoF2 = SurfaceOutput.CameraInputInfo.f(sizeF2, rectA2, cameraInternal2, ((DualOutConfig) entry.getKey()).b().c(), ((DualOutConfig) entry.getKey()).b().g());
        int iB = ((DualOutConfig) entry.getKey()).a().b();
        surfaceEdge3.getClass();
        Threads.a();
        surfaceEdge3.b();
        Preconditions.f("Consumer can only be linked once.", !surfaceEdge3.f2557j);
        surfaceEdge3.f2557j = true;
        SurfaceEdge.SettableSurface settableSurface = surfaceEdge3.l;
        Futures.a(Futures.m(settableSurface.c(), new d(surfaceEdge3, settableSurface, iB, cameraInputInfoF, cameraInputInfoF2), CameraXExecutors.c()), new FutureCallback<SurfaceOutput>() { // from class: androidx.camera.core.processing.concurrent.DualSurfaceProcessorNode.1
            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public final void onFailure(Throwable th) {
                int i2 = surfaceEdge3.f2554f;
                if (i2 == 2 && (th instanceof CancellationException)) {
                    Logger.c(3, "DualSurfaceProcessorNode");
                } else {
                    TargetUtils.a(i2);
                    Logger.c(5, "DualSurfaceProcessorNode");
                }
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public final void onSuccess(Object obj) {
                SurfaceOutput surfaceOutput = (SurfaceOutput) obj;
                surfaceOutput.getClass();
                try {
                    DualSurfaceProcessorNode.this.f2591a.c(surfaceOutput);
                } catch (ProcessingException unused) {
                    Logger.b("DualSurfaceProcessorNode");
                }
            }
        }, CameraXExecutors.c());
    }

    public final Out b(In in) {
        DualSurfaceProcessorNode dualSurfaceProcessorNode = this;
        Threads.a();
        SurfaceProcessorInternal surfaceProcessorInternal = dualSurfaceProcessorNode.f2591a;
        Objects.toString(surfaceProcessorInternal);
        AutoValue_DualSurfaceProcessorNode_In autoValue_DualSurfaceProcessorNode_In = (AutoValue_DualSurfaceProcessorNode_In) in;
        Objects.toString(autoValue_DualSurfaceProcessorNode_In.f2580a);
        Objects.toString(autoValue_DualSurfaceProcessorNode_In.f2581b);
        Logger.c(3, "DualSurfaceProcessorNode");
        Iterator it = autoValue_DualSurfaceProcessorNode_In.f2582c.iterator();
        while (it.hasNext()) {
            Objects.toString((DualOutConfig) it.next());
            Logger.c(3, "SurfaceProcessorNode");
        }
        dualSurfaceProcessorNode.f2594e = in;
        dualSurfaceProcessorNode.d = new Out();
        In in2 = dualSurfaceProcessorNode.f2594e;
        SurfaceEdge surfaceEdge = ((AutoValue_DualSurfaceProcessorNode_In) in2).f2580a;
        SurfaceEdge surfaceEdge2 = ((AutoValue_DualSurfaceProcessorNode_In) in2).f2581b;
        for (DualOutConfig dualOutConfig : ((AutoValue_DualSurfaceProcessorNode_In) in2).f2582c) {
            Out out = dualSurfaceProcessorNode.d;
            OutConfig outConfigA = dualOutConfig.a();
            Rect rectA = outConfigA.a();
            int iC = outConfigA.c();
            boolean zG = outConfigA.g();
            Matrix matrix = new Matrix(surfaceEdge.f2551b);
            matrix.postConcat(TransformUtils.a(new RectF(rectA), TransformUtils.j(outConfigA.d()), iC, zG));
            Preconditions.a(TransformUtils.e(TransformUtils.i(TransformUtils.g(rectA), iC), false, outConfigA.d()));
            Size sizeD = outConfigA.d();
            Rect rect = new Rect(0, 0, sizeD.getWidth(), sizeD.getHeight());
            StreamSpec.Builder builderI = surfaceEdge.g.i();
            builderI.f(outConfigA.d());
            out.put(dualOutConfig, new SurfaceEdge(outConfigA.e(), outConfigA.b(), builderI.a(), matrix, false, rect, surfaceEdge.f2556i - iC, -1, surfaceEdge.f2553e != zG));
        }
        try {
            surfaceProcessorInternal.a(surfaceEdge.d(dualSurfaceProcessorNode.f2592b, true));
        } catch (ProcessingException unused) {
            Logger.b("DualSurfaceProcessorNode");
        }
        try {
            surfaceProcessorInternal.a(surfaceEdge2.d(dualSurfaceProcessorNode.f2593c, false));
        } catch (ProcessingException unused2) {
            Logger.b("DualSurfaceProcessorNode");
        }
        for (Map.Entry<DualOutConfig, SurfaceEdge> entry : dualSurfaceProcessorNode.d.entrySet()) {
            CameraInternal cameraInternal = dualSurfaceProcessorNode.f2592b;
            CameraInternal cameraInternal2 = dualSurfaceProcessorNode.f2593c;
            dualSurfaceProcessorNode.a(cameraInternal, cameraInternal2, surfaceEdge, surfaceEdge2, entry);
            SurfaceEdge value = entry.getValue();
            SurfaceEdge surfaceEdge3 = surfaceEdge2;
            SurfaceEdge surfaceEdge4 = surfaceEdge;
            ed edVar = new ed(this, cameraInternal, cameraInternal2, surfaceEdge4, surfaceEdge3, entry, 1);
            dualSurfaceProcessorNode = this;
            surfaceEdge = surfaceEdge4;
            surfaceEdge2 = surfaceEdge3;
            value.a(edVar);
        }
        return dualSurfaceProcessorNode.d;
    }
}
