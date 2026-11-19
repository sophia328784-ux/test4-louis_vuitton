package androidx.camera.camera2.internal;

import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import androidx.camera.core.CameraControl;
import androidx.camera.core.Logger;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class w implements CallbackToFutureAdapter.Resolver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ FocusMeteringControl f1841b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f1842c;

    public /* synthetic */ w(FocusMeteringControl focusMeteringControl, boolean z) {
        this.f1841b = focusMeteringControl;
        this.f1842c = z;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public final Object i(final CallbackToFutureAdapter.Completer completer) {
        final FocusMeteringControl focusMeteringControl = this.f1841b;
        Executor executor = focusMeteringControl.f1581b;
        final boolean z = this.f1842c;
        executor.execute(new Runnable() { // from class: androidx.camera.camera2.internal.x
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r3v1, types: [androidx.camera.camera2.internal.Camera2CameraControlImpl$CaptureResultListener, androidx.camera.camera2.internal.y] */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // java.lang.Runnable
            public final void run() {
                final FocusMeteringControl focusMeteringControl2 = focusMeteringControl;
                boolean z2 = z;
                final CallbackToFutureAdapter.Completer completer2 = completer;
                Camera2CameraControlImpl camera2CameraControlImpl = focusMeteringControl2.f1580a;
                camera2CameraControlImpl.f1416b.f1427a.remove(focusMeteringControl2.f1587j);
                focusMeteringControl2.f1586i = z2;
                if (!focusMeteringControl2.d) {
                    completer2.d(new CameraControl.OperationCanceledException("Camera is not active."));
                    return;
                }
                final long jX = focusMeteringControl2.f1580a.x();
                ?? r3 = new Camera2CameraControlImpl.CaptureResultListener() { // from class: androidx.camera.camera2.internal.y
                    @Override // androidx.camera.camera2.internal.Camera2CameraControlImpl.CaptureResultListener
                    public final boolean a(TotalCaptureResult totalCaptureResult) {
                        boolean z3 = ((Integer) totalCaptureResult.get(CaptureResult.CONTROL_AE_MODE)).intValue() == 5;
                        Logger.c(3, "FocusMeteringControl");
                        if (z3 != focusMeteringControl2.f1586i || !Camera2CameraControlImpl.u(totalCaptureResult, jX)) {
                            return false;
                        }
                        Logger.c(3, "FocusMeteringControl");
                        completer2.b(null);
                        return true;
                    }
                };
                focusMeteringControl2.f1587j = r3;
                focusMeteringControl2.f1580a.n(r3);
            }
        });
        return "enableExternalFlashAeMode";
    }
}
