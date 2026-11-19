package com.google.android.material.sidesheet;

import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
final class RightSheetDelegate extends SheetDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SideSheetBehavior f33029a;

    public RightSheetDelegate(SideSheetBehavior sideSheetBehavior) {
        this.f33029a = sideSheetBehavior;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final int a(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.rightMargin;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final float b(int i2) {
        float f2 = this.f33029a.n;
        return (f2 - i2) / (f2 - d());
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final int c(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.rightMargin;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final int d() {
        SideSheetBehavior sideSheetBehavior = this.f33029a;
        return Math.max(0, (sideSheetBehavior.n - sideSheetBehavior.m) - sideSheetBehavior.p);
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final int e() {
        return this.f33029a.n;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final int f() {
        return this.f33029a.n;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final int g() {
        return d();
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final int h(View view) {
        return view.getLeft() - this.f33029a.p;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final int i(CoordinatorLayout coordinatorLayout) {
        return coordinatorLayout.getRight();
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final int j() {
        return 0;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final boolean k(float f2) {
        return f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final boolean l(View view) {
        return view.getLeft() > (this.f33029a.n + d()) / 2;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final boolean m(float f2, float f3) {
        return Math.abs(f2) > Math.abs(f3) && Math.abs(f2) > 500.0f;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final boolean n(float f2, View view) {
        return Math.abs((f2 * this.f33029a.l) + ((float) view.getRight())) > 0.5f;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final void o(ViewGroup.MarginLayoutParams marginLayoutParams, int i2) {
        marginLayoutParams.rightMargin = i2;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final void p(ViewGroup.MarginLayoutParams marginLayoutParams, int i2, int i3) {
        int i4 = this.f33029a.n;
        if (i2 <= i4) {
            marginLayoutParams.rightMargin = i4 - i2;
        }
    }
}
