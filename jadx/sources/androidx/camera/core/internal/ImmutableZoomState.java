package androidx.camera.core.internal;

import androidx.camera.core.ZoomState;

/* JADX INFO: loaded from: classes.dex */
public abstract class ImmutableZoomState implements ZoomState {
    public static ZoomState e(float f2, float f3, float f4, float f5) {
        return new AutoValue_ImmutableZoomState(f2, f3, f4, f5);
    }

    public static ZoomState f(ZoomState zoomState) {
        return new AutoValue_ImmutableZoomState(zoomState.d(), zoomState.a(), zoomState.c(), zoomState.b());
    }
}
