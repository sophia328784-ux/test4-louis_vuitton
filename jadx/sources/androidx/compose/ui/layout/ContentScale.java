package androidx.compose.ui.layout;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001:\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/layout/ContentScale;", "", "Companion", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface ContentScale {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f9447a = Companion.f9448a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/layout/ContentScale$Companion;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Companion f9448a = new Companion();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final ContentScale$Companion$Crop$1 f9449b = new ContentScale$Companion$Crop$1();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final ContentScale$Companion$Fit$1 f9450c = new ContentScale$Companion$Fit$1();
        public static final ContentScale$Companion$FillHeight$1 d = new ContentScale$Companion$FillHeight$1();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final ContentScale$Companion$FillWidth$1 f9451e = new ContentScale$Companion$FillWidth$1();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final ContentScale$Companion$Inside$1 f9452f = new ContentScale$Companion$Inside$1();
        public static final FixedScale g = new FixedScale(1.0f);

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final ContentScale$Companion$FillBounds$1 f9453h = new ContentScale$Companion$FillBounds$1();
    }

    long a(long j2, long j3);
}
