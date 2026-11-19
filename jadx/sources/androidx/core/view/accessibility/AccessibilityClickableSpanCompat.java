package androidx.core.view.accessibility;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class AccessibilityClickableSpanCompat extends ClickableSpan {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f12265b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AccessibilityNodeInfoCompat f12266c;
    public final int d;

    public AccessibilityClickableSpanCompat(int i2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, int i3) {
        this.f12265b = i2;
        this.f12266c = accessibilityNodeInfoCompat;
        this.d = i3;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f12265b);
        this.f12266c.f12267a.performAction(this.d, bundle);
    }
}
