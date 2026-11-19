package androidx.media3.common;

import android.view.View;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes.dex */
public final class AdOverlayInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f13662a;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final View f13663a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f13664b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f13665c;

        public Builder(View view, int i2) {
            this.f13663a = view;
            this.f13664b = i2;
        }
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Purpose {
    }

    @Deprecated
    public AdOverlayInfo(View view, int i2, String str) {
        this.f13662a = view;
    }

    @Deprecated
    public AdOverlayInfo(View view, int i2) {
        this(view, i2, null);
    }
}
