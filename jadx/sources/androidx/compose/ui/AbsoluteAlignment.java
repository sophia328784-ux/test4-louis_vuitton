package androidx.compose.ui;

import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/AbsoluteAlignment;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class AbsoluteAlignment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BiasAbsoluteAlignment f8578a = new BiasAbsoluteAlignment(-1.0f, -1.0f);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final BiasAbsoluteAlignment f8579b = new BiasAbsoluteAlignment(1.0f, -1.0f);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final BiasAbsoluteAlignment.Horizontal f8580c;
    public static final BiasAbsoluteAlignment.Horizontal d;

    static {
        new BiasAbsoluteAlignment(-1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        new BiasAbsoluteAlignment(1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        new BiasAbsoluteAlignment(-1.0f, 1.0f);
        new BiasAbsoluteAlignment(1.0f, 1.0f);
        f8580c = new BiasAbsoluteAlignment.Horizontal(-1.0f);
        d = new BiasAbsoluteAlignment.Horizontal(1.0f);
    }
}
