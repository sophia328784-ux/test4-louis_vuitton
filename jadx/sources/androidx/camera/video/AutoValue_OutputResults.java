package androidx.camera.video;

import android.net.Uri;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_OutputResults extends OutputResults {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Uri f2735a;

    public AutoValue_OutputResults(Uri uri) {
        if (uri != null) {
            this.f2735a = uri;
        } else {
            r81.d("Null outputUri");
            throw null;
        }
    }

    @Override // androidx.camera.video.OutputResults
    public final Uri a() {
        return this.f2735a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof OutputResults) {
            return this.f2735a.equals(((OutputResults) obj).a());
        }
        return false;
    }

    public final int hashCode() {
        return this.f2735a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "OutputResults{outputUri=" + this.f2735a + "}";
    }
}
