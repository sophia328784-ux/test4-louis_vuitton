package com.google.android.material.textfield;

import android.content.Context;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.internal.CheckableImageButton;

/* JADX INFO: loaded from: classes2.dex */
abstract class EndIconDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextInputLayout f33170a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EndCompoundLayout f33171b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f33172c;
    public final CheckableImageButton d;

    public EndIconDelegate(EndCompoundLayout endCompoundLayout) {
        this.f33170a = endCompoundLayout.f33156b;
        this.f33171b = endCompoundLayout;
        this.f33172c = endCompoundLayout.getContext();
        this.d = endCompoundLayout.f33160h;
    }

    public void a() {
    }

    public void b() {
    }

    public int c() {
        return 0;
    }

    public int d() {
        return 0;
    }

    public View.OnFocusChangeListener e() {
        return null;
    }

    public View.OnClickListener f() {
        return null;
    }

    public View.OnFocusChangeListener g() {
        return null;
    }

    public AccessibilityManager.TouchExplorationStateChangeListener h() {
        return null;
    }

    public boolean i(int i2) {
        return true;
    }

    public boolean j() {
        return this instanceof DropdownMenuEndIconDelegate;
    }

    public boolean k() {
        return false;
    }

    public void l(EditText editText) {
    }

    public void m(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
    }

    public void n(AccessibilityEvent accessibilityEvent) {
    }

    public void o(boolean z) {
    }

    public final void p() {
        this.f33171b.e(false);
    }

    public void q() {
    }

    public void r() {
    }
}
