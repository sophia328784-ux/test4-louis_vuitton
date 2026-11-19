package androidx.camera.core.processing;

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
import androidx.camera.core.processing.util.OutConfig;
import androidx.core.util.Preconditions;
import defpackage.b5;
import defpackage.hn0;
import defpackage.ir0;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes.dex */
public class SurfaceProcessorNode implements Node<In, Out> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SurfaceProcessorInternal f2567a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CameraInternal f2568b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Out f2569c;

    public static abstract class In {
        public static In c(SurfaceEdge surfaceEdge, List list) {
            return new AutoValue_SurfaceProcessorNode_In(surfaceEdge, list);
        }

        public abstract List a();

        public abstract SurfaceEdge b();
    }

    public static class Out extends HashMap<OutConfig, SurfaceEdge> {
    }

    public SurfaceProcessorNode(CameraInternal cameraInternal, SurfaceProcessorInternal surfaceProcessorInternal) {
        this.f2568b = cameraInternal;
        this.f2567a = surfaceProcessorInternal;
    }

    public final void a(SurfaceEdge surfaceEdge, Map.Entry entry) {
        final SurfaceEdge surfaceEdge2 = (SurfaceEdge) entry.getValue();
        Objects.toString(surfaceEdge2);
        Logger.c(3, "SurfaceProcessorNode");
        SurfaceOutput.CameraInputInfo cameraInputInfoF = SurfaceOutput.CameraInputInfo.f(surfaceEdge.g.f(), ((OutConfig) entry.getKey()).a(), surfaceEdge.f2552c ? this.f2568b : null, ((OutConfig) entry.getKey()).c(), ((OutConfig) entry.getKey()).g());
        int iB = ((OutConfig) entry.getKey()).b();
        surfaceEdge2.getClass();
        Threads.a();
        surfaceEdge2.b();
        Preconditions.f("Consumer can only be linked once.", !surfaceEdge2.f2557j);
        surfaceEdge2.f2557j = true;
        SurfaceEdge.SettableSurface settableSurface = surfaceEdge2.l;
        Futures.a(Futures.m(settableSurface.c(), new d(surfaceEdge2, settableSurface, iB, cameraInputInfoF, null), CameraXExecutors.c()), new FutureCallback<SurfaceOutput>() { // from class: androidx.camera.core.processing.SurfaceProcessorNode.1
            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public final void onFailure(Throwable th) {
                int i2 = surfaceEdge2.f2554f;
                if (i2 == 2 && (th instanceof CancellationException)) {
                    Logger.c(3, "SurfaceProcessorNode");
                } else {
                    TargetUtils.a(i2);
                    Logger.c(5, "SurfaceProcessorNode");
                }
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public final void onSuccess(Object obj) {
                SurfaceOutput surfaceOutput = (SurfaceOutput) obj;
                surfaceOutput.getClass();
                try {
                    SurfaceProcessorNode.this.f2567a.c(surfaceOutput);
                } catch (ProcessingException unused) {
                    Logger.b("SurfaceProcessorNode");
                }
            }
        }, CameraXExecutors.c());
    }

    public final void b() {
        this.f2567a.release();
        Threads.c(new hn0(this, 22));
    }

    public final Out c(In in) {
        boolean z;
        Rect rect;
        Threads.a();
        SurfaceProcessorInternal surfaceProcessorInternal = this.f2567a;
        Objects.toString(surfaceProcessorInternal);
        AutoValue_SurfaceProcessorNode_In autoValue_SurfaceProcessorNode_In = (AutoValue_SurfaceProcessorNode_In) in;
        SurfaceEdge surfaceEdge = autoValue_SurfaceProcessorNode_In.f2529a;
        Objects.toString(surfaceEdge);
        Logger.c(3, "SurfaceProcessorNode");
        List<OutConfig> list = autoValue_SurfaceProcessorNode_In.f2530b;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Objects.toString((OutConfig) it.next());
            Logger.c(3, "SurfaceProcessorNode");
        }
        this.f2569c = new Out();
        for (OutConfig outConfig : list) {
            Out out = this.f2569c;
            Rect rectA = outConfig.a();
            int iC = outConfig.c();
            boolean zG = outConfig.g();
            Matrix matrix = surfaceEdge.f2551b;
            Rect rect2 = surfaceEdge.d;
            Matrix matrix2 = new Matrix(matrix);
            Matrix matrixA = TransformUtils.a(new RectF(rectA), TransformUtils.j(outConfig.d()), iC, zG);
            matrix2.postConcat(matrixA);
            Preconditions.a(TransformUtils.e(TransformUtils.i(TransformUtils.g(rectA), iC), false, outConfig.d()));
            if (outConfig.i()) {
                Preconditions.b(outConfig.a().contains(rect2), "Output crop rect " + outConfig.a() + " must contain input crop rect " + rect2);
                Rect rect3 = new Rect();
                RectF rectF = new RectF(rect2);
                matrixA.mapRect(rectF);
                rectF.round(rect3);
                rect = rect3;
                z = false;
            } else {
                Size sizeD = outConfig.d();
                z = false;
                rect = new Rect(0, 0, sizeD.getWidth(), sizeD.getHeight());
            }
            StreamSpec.Builder builderI = surfaceEdge.g.i();
            builderI.f(outConfig.d());
            out.put(outConfig, new SurfaceEdge(outConfig.e(), outConfig.b(), builderI.a(), matrix2, false, rect, surfaceEdge.f2556i - iC, -1, surfaceEdge.f2553e != zG ? true : z));
        }
        try {
            surfaceProcessorInternal.a(surfaceEdge.d(this.f2568b, true));
        } catch (ProcessingException unused) {
            Logger.b("SurfaceProcessorNode");
        }
        for (Map.Entry<OutConfig, SurfaceEdge> entry : this.f2569c.entrySet()) {
            a(surfaceEdge, entry);
            entry.getValue().a(new b5(this, surfaceEdge, entry, 18));
        }
        ir0 ir0Var = new ir0(this.f2569c, 1);
        surfaceEdge.getClass();
        surfaceEdge.o.add(ir0Var);
        return this.f2569c;
    }
}
