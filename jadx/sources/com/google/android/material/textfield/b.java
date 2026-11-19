package com.google.android.material.textfield;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class b implements View.OnFocusChangeListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f33221b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ EndIconDelegate f33222c;

    public /* synthetic */ b(EndIconDelegate endIconDelegate, int i2) {
        this.f33221b = i2;
        this.f33222c = endIconDelegate;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        int i2 = this.f33221b;
        EndIconDelegate endIconDelegate = this.f33222c;
        switch (i2) {
            case 0:
                ClearTextEndIconDelegate clearTextEndIconDelegate = (ClearTextEndIconDelegate) endIconDelegate;
                clearTextEndIconDelegate.s(clearTextEndIconDelegate.t());
                break;
            default:
                DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate = (DropdownMenuEndIconDelegate) endIconDelegate;
                dropdownMenuEndIconDelegate.l = z;
                dropdownMenuEndIconDelegate.p();
                if (!z) {
                    dropdownMenuEndIconDelegate.s(false);
                    dropdownMenuEndIconDelegate.m = false;
                }
                break;
        }
    }
}
