package com.sightcall.universal.internal.ui;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sightcall.universal.R;

/* JADX INFO: loaded from: classes3.dex */
public class OverlayPermissionDialog extends BaseDialogFragment {
    private static final String TAG = "OverlayPermissionDialog";
    private OnRequestOverlayPermissionListener listener;

    public interface OnRequestOverlayPermissionListener {
        void onRequestOverlayPermissionConfirmation(boolean z);
    }

    public static void show(FragmentManager fragmentManager, OnRequestOverlayPermissionListener onRequestOverlayPermissionListener) {
        String str = TAG;
        if (fragmentManager.G(str) == null) {
            OverlayPermissionDialog overlayPermissionDialog = new OverlayPermissionDialog();
            overlayPermissionDialog.listener = onRequestOverlayPermissionListener;
            FragmentTransaction fragmentTransactionD = fragmentManager.d();
            fragmentTransactionD.i(0, overlayPermissionDialog, str, 1);
            fragmentTransactionD.f();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sightcall.universal.internal.ui.BaseDialogFragment
    public void onAttachToContext(Context context) {
        if (context instanceof OnRequestOverlayPermissionListener) {
            this.listener = (OnRequestOverlayPermissionListener) context;
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        super.onCancel(dialogInterface);
        OnRequestOverlayPermissionListener onRequestOverlayPermissionListener = this.listener;
        if (onRequestOverlayPermissionListener != null) {
            onRequestOverlayPermissionListener.onRequestOverlayPermissionConfirmation(false);
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.f(R.string.universal_dialog_screen_sharing);
        int i2 = R.string.universal_dialog_overlay_permission;
        AlertController.AlertParams alertParams = builder.f810a;
        alertParams.g = alertParams.f796a.getText(i2);
        AlertDialog alertDialogCreate = builder.setPositiveButton(R.string.universal_dialog_grant, new DialogInterface.OnClickListener() { // from class: com.sightcall.universal.internal.ui.OverlayPermissionDialog.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i3) {
                if (OverlayPermissionDialog.this.listener != null) {
                    OverlayPermissionDialog.this.listener.onRequestOverlayPermissionConfirmation(true);
                }
                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i3);
            }
        }).setNegativeButton(R.string.universal_dialog_deny, new DialogInterface.OnClickListener() { // from class: com.sightcall.universal.internal.ui.OverlayPermissionDialog.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i3) {
                if (OverlayPermissionDialog.this.listener != null) {
                    OverlayPermissionDialog.this.listener.onRequestOverlayPermissionConfirmation(false);
                }
                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i3);
            }
        }).create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        return alertDialogCreate;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.listener = null;
    }
}
