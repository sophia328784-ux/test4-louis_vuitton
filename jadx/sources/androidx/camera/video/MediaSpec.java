package androidx.camera.video;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public abstract class MediaSpec {

    /* JADX INFO: loaded from: classes3.dex */
    public static abstract class Builder {
        public abstract MediaSpec a();
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface OutputFormat {
    }

    public abstract int a();
}
