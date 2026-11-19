package com.otaliastudios.cameraview.engine.orchestrator;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public class CameraStateOrchestrator extends CameraOrchestrator {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public CameraState f38958f;
    public CameraState g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f38959h;

    public CameraStateOrchestrator(CameraOrchestrator.Callback callback) {
        super(callback);
        CameraState cameraState = CameraState.OFF;
        this.f38958f = cameraState;
        this.g = cameraState;
        this.f38959h = 0;
    }

    public final Task e(final CameraState cameraState, final CameraState cameraState2, boolean z, final Callable callable) {
        String str;
        final int i2 = this.f38959h + 1;
        this.f38959h = i2;
        this.g = cameraState2;
        boolean zA = cameraState2.a(cameraState);
        final boolean z2 = !zA;
        if (zA) {
            str = cameraState.name() + " >> " + cameraState2.name();
        } else {
            str = cameraState.name() + " << " + cameraState2.name();
        }
        final String str2 = str;
        Task taskC = c(0L, str2, new Callable<Task<Object>>() { // from class: com.otaliastudios.cameraview.engine.orchestrator.CameraStateOrchestrator.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Task<Object> call() throws Exception {
                CameraStateOrchestrator cameraStateOrchestrator = CameraStateOrchestrator.this;
                if (cameraStateOrchestrator.f38958f != cameraState) {
                    CameraOrchestrator.f38949e.b(2, str2.toUpperCase(), "- State mismatch, aborting. current:", CameraStateOrchestrator.this.f38958f, "from:", cameraState, "to:", cameraState2);
                    return Tasks.d();
                }
                return ((Task) callable.call()).h(cameraStateOrchestrator.f38950a.a().d, new Continuation<Object, Task<Object>>() { // from class: com.otaliastudios.cameraview.engine.orchestrator.CameraStateOrchestrator.2.1
                    @Override // com.google.android.gms.tasks.Continuation
                    public final Object d(Task task) {
                        boolean zIsSuccessful = task.isSuccessful();
                        AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                        if (!zIsSuccessful && !z2) {
                            return task;
                        }
                        CameraStateOrchestrator.this.f38958f = cameraState2;
                        return task;
                    }
                });
            }
        }, z);
        taskC.addOnCompleteListener(new OnCompleteListener<Object>() { // from class: com.otaliastudios.cameraview.engine.orchestrator.CameraStateOrchestrator.1
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task<Object> task) {
                CameraStateOrchestrator cameraStateOrchestrator = CameraStateOrchestrator.this;
                if (i2 == cameraStateOrchestrator.f38959h) {
                    cameraStateOrchestrator.g = cameraStateOrchestrator.f38958f;
                }
            }
        });
        return taskC;
    }

    public final void f(String str, final CameraState cameraState, final Runnable runnable) {
        b(str, 0L, new Runnable() { // from class: com.otaliastudios.cameraview.engine.orchestrator.CameraStateOrchestrator.3
            @Override // java.lang.Runnable
            public void run() {
                if (CameraStateOrchestrator.this.f38958f.a(cameraState)) {
                    runnable.run();
                }
            }
        });
    }

    public final void g(String str, final CameraState cameraState, long j2, final Runnable runnable) {
        b(str, j2, new Runnable() { // from class: com.otaliastudios.cameraview.engine.orchestrator.CameraStateOrchestrator.4
            @Override // java.lang.Runnable
            public void run() {
                if (CameraStateOrchestrator.this.f38958f.a(cameraState)) {
                    runnable.run();
                }
            }
        });
    }
}
