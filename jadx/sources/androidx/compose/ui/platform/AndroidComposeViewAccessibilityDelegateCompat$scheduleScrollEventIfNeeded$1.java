package androidx.compose.ui.platform;

import androidx.collection.MutableIntList;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNodeWithAdjustedBounds;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
final class AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1 extends Lambda implements Function0<Unit> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ScrollObservationScope f9919c;
    public final /* synthetic */ AndroidComposeViewAccessibilityDelegateCompat d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1(ScrollObservationScope scrollObservationScope, AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat) {
        super(0);
        this.f9919c = scrollObservationScope;
        this.d = androidComposeViewAccessibilityDelegateCompat;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        SemanticsNode semanticsNode;
        LayoutNode layoutNode;
        ScrollObservationScope scrollObservationScope = this.f9919c;
        ScrollAxisRange scrollAxisRange = scrollObservationScope.f10149f;
        ScrollAxisRange scrollAxisRange2 = scrollObservationScope.g;
        Float f2 = scrollObservationScope.d;
        Float f3 = scrollObservationScope.f10148e;
        float fFloatValue = (scrollAxisRange == null || f2 == null) ? 0.0f : ((Number) scrollAxisRange.f10298a.mo47invoke()).floatValue() - f2.floatValue();
        float fFloatValue2 = (scrollAxisRange2 == null || f3 == null) ? 0.0f : ((Number) scrollAxisRange2.f10298a.mo47invoke()).floatValue() - f3.floatValue();
        if (fFloatValue != Call.Parameters.DEFAULT_CAMERA_ZOOM || fFloatValue2 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            int i2 = scrollObservationScope.f10146b;
            MutableIntList mutableIntList = AndroidComposeViewAccessibilityDelegateCompat.O;
            AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = this.d;
            int iA = androidComposeViewAccessibilityDelegateCompat.A(i2);
            SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) androidComposeViewAccessibilityDelegateCompat.s().b(androidComposeViewAccessibilityDelegateCompat.l);
            if (semanticsNodeWithAdjustedBounds != null) {
                try {
                    AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = androidComposeViewAccessibilityDelegateCompat.n;
                    if (accessibilityNodeInfoCompat != null) {
                        accessibilityNodeInfoCompat.f12267a.setBoundsInScreen(androidComposeViewAccessibilityDelegateCompat.k(semanticsNodeWithAdjustedBounds));
                    }
                } catch (IllegalStateException unused) {
                }
            }
            SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds2 = (SemanticsNodeWithAdjustedBounds) androidComposeViewAccessibilityDelegateCompat.s().b(androidComposeViewAccessibilityDelegateCompat.m);
            if (semanticsNodeWithAdjustedBounds2 != null) {
                try {
                    AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2 = androidComposeViewAccessibilityDelegateCompat.o;
                    if (accessibilityNodeInfoCompat2 != null) {
                        accessibilityNodeInfoCompat2.f12267a.setBoundsInScreen(androidComposeViewAccessibilityDelegateCompat.k(semanticsNodeWithAdjustedBounds2));
                    }
                } catch (IllegalStateException unused2) {
                }
            }
            androidComposeViewAccessibilityDelegateCompat.f9899e.invalidate();
            SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds3 = (SemanticsNodeWithAdjustedBounds) androidComposeViewAccessibilityDelegateCompat.s().b(iA);
            if (semanticsNodeWithAdjustedBounds3 != null && (semanticsNode = semanticsNodeWithAdjustedBounds3.f10325a) != null && (layoutNode = semanticsNode.f10320c) != null) {
                if (scrollAxisRange != null) {
                    androidComposeViewAccessibilityDelegateCompat.q.i(iA, scrollAxisRange);
                }
                if (scrollAxisRange2 != null) {
                    androidComposeViewAccessibilityDelegateCompat.r.i(iA, scrollAxisRange2);
                }
                androidComposeViewAccessibilityDelegateCompat.w(layoutNode);
            }
        }
        if (scrollAxisRange != null) {
            scrollObservationScope.d = (Float) scrollAxisRange.f10298a.mo47invoke();
        }
        if (scrollAxisRange2 != null) {
            scrollObservationScope.f10148e = (Float) scrollAxisRange2.f10298a.mo47invoke();
        }
        return Unit.f71739a;
    }
}
