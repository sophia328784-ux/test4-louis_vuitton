package com.google.android.material.bottomsheet;

import android.app.Dialog;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatDialogFragment;

/* JADX INFO: loaded from: classes4.dex */
public class BottomSheetDialogFragment extends AppCompatDialogFragment {
    private boolean A;

    public BottomSheetDialogFragment() {
    }

    public static void q(BottomSheetDialogFragment bottomSheetDialogFragment) {
        if (bottomSheetDialogFragment.A) {
            super.dismissAllowingStateLoss();
        } else {
            super.dismiss();
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismiss() {
        Dialog dialog = getDialog();
        if (dialog instanceof BottomSheetDialog) {
            BottomSheetDialog bottomSheetDialog = (BottomSheetDialog) dialog;
            if (bottomSheetDialog.f32378c == null) {
                bottomSheetDialog.b();
            }
            boolean z = bottomSheetDialog.f32378c.J;
        }
        super.dismiss();
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismissAllowingStateLoss() {
        Dialog dialog = getDialog();
        if (dialog instanceof BottomSheetDialog) {
            BottomSheetDialog bottomSheetDialog = (BottomSheetDialog) dialog;
            if (bottomSheetDialog.f32378c == null) {
                bottomSheetDialog.b();
            }
            boolean z = bottomSheetDialog.f32378c.J;
        }
        super.dismissAllowingStateLoss();
    }

    @Override // androidx.appcompat.app.AppCompatDialogFragment, androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        return new BottomSheetDialog(getContext(), getTheme());
    }

    public BottomSheetDialogFragment(int i2) {
        super(i2);
    }
}
