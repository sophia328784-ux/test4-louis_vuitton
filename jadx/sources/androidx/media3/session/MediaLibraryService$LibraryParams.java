package androidx.media3.session;

import android.os.Bundle;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes.dex */
public final class MediaLibraryService$LibraryParams {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f17368e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f17369f;
    public static final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f17370h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Bundle f17371a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f17372b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f17373c;
    public final boolean d;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f17374a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f17375b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f17376c;
        public Bundle d = Bundle.EMPTY;
    }

    static {
        String str = Util.f14242a;
        f17368e = Integer.toString(0, 36);
        f17369f = Integer.toString(1, 36);
        g = Integer.toString(2, 36);
        f17370h = Integer.toString(3, 36);
    }

    public MediaLibraryService$LibraryParams(Bundle bundle, boolean z, boolean z2, boolean z3) {
        this.f17371a = new Bundle(bundle);
        this.f17372b = z;
        this.f17373c = z2;
        this.d = z3;
    }

    public static MediaLibraryService$LibraryParams a(Bundle bundle) {
        Bundle bundleP = Util.p(bundle.getBundle(f17368e));
        boolean z = bundle.getBoolean(f17369f, false);
        boolean z2 = bundle.getBoolean(g, false);
        boolean z3 = bundle.getBoolean(f17370h, false);
        if (bundleP == null) {
            bundleP = Bundle.EMPTY;
        }
        return new MediaLibraryService$LibraryParams(bundleP, z, z2, z3);
    }
}
