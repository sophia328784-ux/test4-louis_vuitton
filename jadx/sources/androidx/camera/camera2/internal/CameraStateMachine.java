package androidx.camera.camera2.internal;

import androidx.camera.core.CameraState;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CameraStateRegistry;
import androidx.lifecycle.MutableLiveData;
import defpackage.a61;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
class CameraStateMachine {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CameraStateRegistry f1538a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableLiveData f1539b;

    /* JADX INFO: renamed from: androidx.camera.camera2.internal.CameraStateMachine$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f1540a;

        static {
            int[] iArr = new int[CameraInternal.State.values().length];
            f1540a = iArr;
            try {
                iArr[CameraInternal.State.PENDING_OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1540a[CameraInternal.State.OPENING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1540a[CameraInternal.State.OPEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1540a[CameraInternal.State.CONFIGURED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1540a[CameraInternal.State.CLOSING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1540a[CameraInternal.State.RELEASING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1540a[CameraInternal.State.CLOSED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f1540a[CameraInternal.State.RELEASED.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public CameraStateMachine(CameraStateRegistry cameraStateRegistry) {
        this.f1538a = cameraStateRegistry;
        MutableLiveData mutableLiveData = new MutableLiveData();
        this.f1539b = mutableLiveData;
        mutableLiveData.postValue(CameraState.a(CameraState.Type.CLOSED));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(CameraInternal.State state, CameraState.StateError stateError) {
        CameraState cameraStateA;
        if (stateError == null || stateError.d() != 8) {
            switch (AnonymousClass1.f1540a[state.ordinal()]) {
                case 1:
                    cameraStateA = !this.f1538a.c() ? CameraState.a(CameraState.Type.PENDING_OPEN) : CameraState.a(CameraState.Type.OPENING);
                    break;
                case 2:
                    cameraStateA = CameraState.b(CameraState.Type.OPENING, stateError);
                    break;
                case 3:
                case 4:
                    cameraStateA = CameraState.b(CameraState.Type.OPEN, stateError);
                    break;
                case 5:
                case 6:
                    cameraStateA = CameraState.b(CameraState.Type.CLOSING, stateError);
                    break;
                case 7:
                case 8:
                    cameraStateA = CameraState.b(CameraState.Type.CLOSED, stateError);
                    break;
                default:
                    a61.q(state, "Unknown internal camera state: ");
                    return;
            }
        } else {
            cameraStateA = CameraState.b(CameraState.Type.CLOSED, stateError);
        }
        cameraStateA.toString();
        Objects.toString(state);
        Objects.toString(stateError);
        Logger.c(3, "CameraStateMachine");
        MutableLiveData mutableLiveData = this.f1539b;
        if (Objects.equals((CameraState) mutableLiveData.getValue(), cameraStateA)) {
            return;
        }
        cameraStateA.toString();
        Logger.c(3, "CameraStateMachine");
        mutableLiveData.postValue(cameraStateA);
    }
}
