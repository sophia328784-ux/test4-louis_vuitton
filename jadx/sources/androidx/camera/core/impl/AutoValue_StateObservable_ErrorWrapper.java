package androidx.camera.core.impl;

import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_StateObservable_ErrorWrapper extends StateObservable.ErrorWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Throwable f2204a;

    public AutoValue_StateObservable_ErrorWrapper(Throwable th) {
        if (th != null) {
            this.f2204a = th;
        } else {
            r81.d("Null error");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StateObservable.ErrorWrapper)) {
            return false;
        }
        return this.f2204a.equals(((AutoValue_StateObservable_ErrorWrapper) ((StateObservable.ErrorWrapper) obj)).f2204a);
    }

    public final int hashCode() {
        return this.f2204a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "ErrorWrapper{error=" + this.f2204a + "}";
    }
}
