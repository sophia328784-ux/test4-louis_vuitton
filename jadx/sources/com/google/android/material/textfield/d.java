package com.google.android.material.textfield;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f33225b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ EndIconDelegate f33226c;

    public /* synthetic */ d(EndIconDelegate endIconDelegate, int i2) {
        this.f33225b = i2;
        this.f33226c = endIconDelegate;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f33225b;
        EndIconDelegate endIconDelegate = this.f33226c;
        switch (i2) {
            case 0:
                ((ClearTextEndIconDelegate) endIconDelegate).s(true);
                break;
            default:
                DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate = (DropdownMenuEndIconDelegate) endIconDelegate;
                boolean zIsPopupShowing = dropdownMenuEndIconDelegate.f33151h.isPopupShowing();
                dropdownMenuEndIconDelegate.s(zIsPopupShowing);
                dropdownMenuEndIconDelegate.m = zIsPopupShowing;
                break;
        }
    }
}
