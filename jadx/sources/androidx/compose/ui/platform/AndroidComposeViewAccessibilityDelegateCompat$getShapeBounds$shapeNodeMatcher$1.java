package androidx.compose.ui.platform;

import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1", "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1 implements SemanticsPropertyReceiver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f9916b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Shape f9917c;

    public AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1(Shape shape) {
        this.f9917c = shape;
    }

    @Override // androidx.compose.ui.semantics.SemanticsPropertyReceiver
    public final void a(SemanticsPropertyKey semanticsPropertyKey, Object obj) {
        if (obj == this.f9917c) {
            this.f9916b = true;
        }
    }
}
