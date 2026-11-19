package com.vuitton.android.presentation.ar.renderer;

import android.view.Choreographer;
import com.google.android.filament.Renderer;
import com.google.android.filament.SwapChain;
import com.google.ar.core.Frame;
import com.google.ar.core.Session;
import com.vuitton.android.presentation.ar.arcore.ArCore;
import com.vuitton.android.presentation.ar.filament.Filament;
import com.vuitton.foundation.logger.LegacyLogger;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\rB2\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012!\u0010\n\u001a\u001d\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t0\u0004¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/ar/renderer/FrameCallback;", "Landroid/view/Choreographer$FrameCallback;", "Lcom/vuitton/android/presentation/ar/arcore/ArCore;", "arCore", "Lkotlin/Function1;", "Lcom/google/ar/core/Frame;", "Lkotlin/ParameterName;", "name", "frame", "", "doFrame", "<init>", "(Lcom/vuitton/android/presentation/ar/arcore/ArCore;Lkotlin/jvm/functions/Function1;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FrameCallback implements Choreographer.FrameCallback {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f50615e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArCore f50616b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function1 f50617c;
    public final Choreographer d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001c\u0010\u0004\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/ar/renderer/FrameCallback$Companion;", "", "", "kotlin.jvm.PlatformType", "TAG", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f50615e = "FrameCallback";
    }

    public FrameCallback(ArCore arCore, Function1<? super Frame, Unit> function1) {
        arCore.getClass();
        function1.getClass();
        this.f50616b = arCore;
        this.f50617c = function1;
        Choreographer choreographer = Choreographer.getInstance();
        choreographer.getClass();
        this.d = choreographer;
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j2) {
        Object failure;
        ArCore arCore = this.f50616b;
        this.d.postFrameCallback(this);
        try {
            Result.Companion companion = Result.INSTANCE;
            Session session = arCore.s;
            Filament filament = arCore.f50560b;
            Frame frameUpdate = session.update();
            frameUpdate.getClass();
            if (frameUpdate.getTimestamp() != 0 && frameUpdate.getTimestamp() != arCore.v) {
                arCore.v = frameUpdate.getTimestamp();
                arCore.f(frameUpdate, filament);
                this.f50617c.invoke(frameUpdate);
            }
            if (arCore.v != 0 && filament.l.f28620c) {
                Renderer renderer = filament.d;
                SwapChain swapChain = filament.f50587j;
                swapChain.getClass();
                if (renderer.a(swapChain, j2)) {
                    filament.getClass();
                    filament.d.d(filament.g);
                    filament.d.b();
                }
            }
            failure = Unit.f71739a;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA == null) {
            return;
        }
        LegacyLogger.f66205a.c(f50615e, "FrameCallbackException " + thA, null);
    }
}
