package androidx.compose.ui;

import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\bç\u0080\u0001\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0005À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/Alignment;", "", "Horizontal", "Vertical", "Companion", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface Alignment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f8582a = Companion.f8583a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/Alignment$Companion;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Companion f8583a = new Companion();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final BiasAlignment f8584b = new BiasAlignment(-1.0f, -1.0f);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final BiasAlignment f8585c = new BiasAlignment(Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f);
        public static final BiasAlignment d = new BiasAlignment(1.0f, -1.0f);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final BiasAlignment f8586e = new BiasAlignment(-1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final BiasAlignment f8587f = new BiasAlignment(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        public static final BiasAlignment g = new BiasAlignment(1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final BiasAlignment f8588h = new BiasAlignment(-1.0f, 1.0f);

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final BiasAlignment f8589i = new BiasAlignment(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final BiasAlignment f8590j = new BiasAlignment(1.0f, 1.0f);

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final BiasAlignment.Vertical f8591k = new BiasAlignment.Vertical(-1.0f);
        public static final BiasAlignment.Vertical l = new BiasAlignment.Vertical(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        public static final BiasAlignment.Vertical m = new BiasAlignment.Vertical(1.0f);
        public static final BiasAlignment.Horizontal n = new BiasAlignment.Horizontal(-1.0f);
        public static final BiasAlignment.Horizontal o = new BiasAlignment.Horizontal(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        public static final BiasAlignment.Horizontal p = new BiasAlignment.Horizontal(1.0f);

        public static BiasAlignment.Horizontal a() {
            return n;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bç\u0080\u0001\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/Alignment$Horizontal;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface Horizontal {
        int a(int i2, int i3, LayoutDirection layoutDirection);
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bç\u0080\u0001\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/Alignment$Vertical;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface Vertical {
        int a(int i2, int i3);
    }

    long a(long j2, long j3, LayoutDirection layoutDirection);
}
