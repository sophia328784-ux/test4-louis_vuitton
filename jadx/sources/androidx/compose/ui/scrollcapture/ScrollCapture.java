package androidx.compose.ui.scrollcapture;

import android.graphics.Point;
import android.view.ScrollCaptureTarget;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.RectHelper_androidKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.semantics.SemanticsOwner;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntRectKt;
import defpackage.xm;
import java.util.function.Consumer;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CoroutineScopeKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/scrollcapture/ScrollCapture;", "Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$ScrollCaptureSessionListener;", "<init>", "()V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ScrollCapture implements ComposeScrollCaptureCallback.ScrollCaptureSessionListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableState f10263a = SnapshotStateKt.g(Boolean.FALSE);

    @Override // androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback.ScrollCaptureSessionListener
    public final void a() {
        ((SnapshotMutableStateImpl) this.f10263a).setValue(Boolean.TRUE);
    }

    @Override // androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback.ScrollCaptureSessionListener
    public final void b() {
        ((SnapshotMutableStateImpl) this.f10263a).setValue(Boolean.FALSE);
    }

    public final void c(AndroidComposeView androidComposeView, SemanticsOwner semanticsOwner, CoroutineContext coroutineContext, Consumer consumer) {
        MutableVector mutableVector = new MutableVector(new ScrollCaptureCandidate[16], 0);
        ScrollCapture_androidKt.a(semanticsOwner.a(), 0, new ScrollCapture$onScrollCaptureSearch$1(1, mutableVector, MutableVector.class, "add", "add(Ljava/lang/Object;)Z", 8));
        mutableVector.r(new xm(new Function1[]{ScrollCapture$onScrollCaptureSearch$2.f10264c, ScrollCapture$onScrollCaptureSearch$3.f10265c}, 0));
        int i2 = mutableVector.d;
        ScrollCaptureCandidate scrollCaptureCandidate = (ScrollCaptureCandidate) (i2 == 0 ? null : mutableVector.f8165b[i2 - 1]);
        if (scrollCaptureCandidate == null) {
            return;
        }
        IntRect intRect = scrollCaptureCandidate.f10268c;
        ComposeScrollCaptureCallback composeScrollCaptureCallback = new ComposeScrollCaptureCallback(scrollCaptureCandidate.f10266a, scrollCaptureCandidate.f10268c, CoroutineScopeKt.a(coroutineContext), this, androidComposeView);
        LayoutCoordinates layoutCoordinates = scrollCaptureCandidate.d;
        Rect rectL = LayoutCoordinatesKt.c(layoutCoordinates).L(layoutCoordinates, true);
        long jC = intRect.c();
        android.graphics.Rect rectA = RectHelper_androidKt.a(IntRectKt.b(rectL));
        IntOffset.Companion companion = IntOffset.f11012b;
        ScrollCaptureTarget scrollCaptureTarget = new ScrollCaptureTarget(androidComposeView, rectA, new Point((int) (jC >> 32), (int) (jC & BodyPartID.bodyIdMax)), composeScrollCaptureCallback);
        scrollCaptureTarget.setScrollBounds(RectHelper_androidKt.a(intRect));
        consumer.accept(scrollCaptureTarget);
    }
}
