package com.google.android.gms.common;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.fragment.app.DialogFragment;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public class SupportErrorDialogFragment extends DialogFragment {
    public Dialog A;
    public DialogInterface.OnCancelListener B;
    public AlertDialog C;

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.B;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = this.A;
        if (dialog != null) {
            return dialog;
        }
        setShowsDialog(false);
        if (this.C == null) {
            Context context = getContext();
            Preconditions.h(context);
            this.C = new AlertDialog.Builder(context).create();
        }
        return this.C;
    }
}
