package androidx.camera.core;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_SurfaceOutput_Event extends SurfaceOutput.Event {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SurfaceOutput f1876a;

    public AutoValue_SurfaceOutput_Event(SurfaceOutput surfaceOutput) {
        this.f1876a = surfaceOutput;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof SurfaceOutput.Event) && this.f1876a.equals(((AutoValue_SurfaceOutput_Event) ((SurfaceOutput.Event) obj)).f1876a);
    }

    public final int hashCode() {
        return this.f1876a.hashCode() ^ (-721379959);
    }

    public final String toString() {
        return "Event{eventCode=0, surfaceOutput=" + this.f1876a + "}";
    }
}
