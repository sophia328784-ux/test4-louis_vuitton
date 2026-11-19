package androidx.camera.video;

import android.util.Size;
import com.networkbench.agent.impl.util.r;
import com.sightcall.uvc.Camera;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes.dex */
public abstract class Quality {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Quality f2766a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Quality f2767b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Quality f2768c;
    public static final Quality d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Quality f2769e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Quality f2770f;
    public static final Quality g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final HashSet f2771h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final List f2772i;

    public static abstract class ConstantQuality extends Quality {
        public abstract int a();

        public abstract String b();

        public abstract List c();

        public abstract int d();
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface QualitySource {
    }

    static {
        AutoValue_Quality_ConstantQuality autoValue_Quality_ConstantQuality = new AutoValue_Quality_ConstantQuality(4, 2002, "SD", Collections.unmodifiableList(Arrays.asList(new Size(Sink.Video.MAX_DIMENSION_LOW, Camera.DEFAULT_PREVIEW_HEIGHT), new Size(Camera.DEFAULT_PREVIEW_WIDTH, Camera.DEFAULT_PREVIEW_HEIGHT))));
        f2766a = autoValue_Quality_ConstantQuality;
        AutoValue_Quality_ConstantQuality autoValue_Quality_ConstantQuality2 = new AutoValue_Quality_ConstantQuality(5, 2003, "HD", Collections.singletonList(new Size(Sink.Video.MAX_DIMENSION_HIGH, Sink.Video.MAX_DIMENSION_LOW)));
        f2767b = autoValue_Quality_ConstantQuality2;
        AutoValue_Quality_ConstantQuality autoValue_Quality_ConstantQuality3 = new AutoValue_Quality_ConstantQuality(6, 2004, "FHD", Collections.singletonList(new Size(Sink.Screenshare.MAX_DIMENSION_HIGH, Sink.Screenshare.MAX_DIMENSION_LOW)));
        f2768c = autoValue_Quality_ConstantQuality3;
        AutoValue_Quality_ConstantQuality autoValue_Quality_ConstantQuality4 = new AutoValue_Quality_ConstantQuality(8, 2005, "UHD", Collections.singletonList(new Size(3840, 2160)));
        d = autoValue_Quality_ConstantQuality4;
        List list = Collections.EMPTY_LIST;
        AutoValue_Quality_ConstantQuality autoValue_Quality_ConstantQuality5 = new AutoValue_Quality_ConstantQuality(0, r.E, "LOWEST", list);
        f2769e = autoValue_Quality_ConstantQuality5;
        AutoValue_Quality_ConstantQuality autoValue_Quality_ConstantQuality6 = new AutoValue_Quality_ConstantQuality(1, 2001, "HIGHEST", list);
        f2770f = autoValue_Quality_ConstantQuality6;
        g = new AutoValue_Quality_ConstantQuality(-1, -1, "NONE", list);
        f2771h = new HashSet(Arrays.asList(autoValue_Quality_ConstantQuality5, autoValue_Quality_ConstantQuality6, autoValue_Quality_ConstantQuality, autoValue_Quality_ConstantQuality2, autoValue_Quality_ConstantQuality3, autoValue_Quality_ConstantQuality4));
        f2772i = Arrays.asList(autoValue_Quality_ConstantQuality4, autoValue_Quality_ConstantQuality3, autoValue_Quality_ConstantQuality2, autoValue_Quality_ConstantQuality);
    }
}
