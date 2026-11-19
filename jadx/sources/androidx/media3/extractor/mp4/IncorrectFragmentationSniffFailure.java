package androidx.media3.extractor.mp4;

import androidx.media3.extractor.SniffFailure;
import defpackage.a;

/* JADX INFO: loaded from: classes.dex */
public final class IncorrectFragmentationSniffFailure implements SniffFailure {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final IncorrectFragmentationSniffFailure f16560b = new IncorrectFragmentationSniffFailure(true);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final IncorrectFragmentationSniffFailure f16561c = new IncorrectFragmentationSniffFailure(false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f16562a;

    public IncorrectFragmentationSniffFailure(boolean z) {
        this.f16562a = z;
    }

    public final String toString() {
        return a.p(new StringBuilder("IncorrectFragmentation{expected="), !this.f16562a, "}");
    }
}
