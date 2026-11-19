package androidx.compose.ui.scrollcapture;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Landroidx/compose/ui/scrollcapture/ScrollCaptureCandidate;", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
final class ScrollCapture$onScrollCaptureSearch$2 extends Lambda implements Function1<ScrollCaptureCandidate, Comparable<?>> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ScrollCapture$onScrollCaptureSearch$2 f10264c = new ScrollCapture$onScrollCaptureSearch$2(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return Integer.valueOf(((ScrollCaptureCandidate) obj).f10267b);
    }
}
