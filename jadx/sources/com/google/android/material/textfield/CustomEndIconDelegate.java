package com.google.android.material.textfield;

import com.google.android.material.internal.CheckableImageButton;

/* JADX INFO: loaded from: classes2.dex */
class CustomEndIconDelegate extends EndIconDelegate {
    @Override // com.google.android.material.textfield.EndIconDelegate
    public final void q() {
        EndCompoundLayout endCompoundLayout = this.f33171b;
        endCompoundLayout.p = null;
        CheckableImageButton checkableImageButton = endCompoundLayout.f33160h;
        checkableImageButton.setOnLongClickListener(null);
        IconHelper.d(checkableImageButton, null);
    }
}
