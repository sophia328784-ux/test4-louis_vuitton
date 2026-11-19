package androidx.camera.core;

import android.util.Rational;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class ViewPort {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2005a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Rational f2006b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2007c;
    public int d;

    public static final class Builder {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Rational f2009b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f2010c;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2008a = 1;
        public int d = 0;

        public Builder(Rational rational, int i2) {
            this.f2009b = rational;
            this.f2010c = i2;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface LayoutDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ScaleType {
    }
}
