package com.sightcall.universal.internal.ui;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.widget.Button;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sightcall.universal.R;
import defpackage.d21;

/* JADX INFO: loaded from: classes3.dex */
public class AcceptDenyDialog extends BaseDialogFragment {
    public static final int ACTIVATE_CAMERA = 1;
    public static final int ACTIVATE_MICROPHONE = 2;
    public static final String ARG_MESSAGE = d21.j("AcceptDenyDialog", ".message");
    public static final int SWITCH_GUEST = 3;
    private static final String TAG = "AcceptDenyDialog";
    private OnAcceptDenyCallback callback;

    public interface OnAcceptDenyCallback {
        void onAccept();

        void onDeny();
    }

    public static AcceptDenyDialog newInstance(int i2, OnAcceptDenyCallback onAcceptDenyCallback) {
        AcceptDenyDialog acceptDenyDialog = new AcceptDenyDialog();
        acceptDenyDialog.attachCallback(onAcceptDenyCallback);
        Bundle bundle = new Bundle();
        bundle.putInt(ARG_MESSAGE, i2);
        acceptDenyDialog.setArguments(bundle);
        return acceptDenyDialog;
    }

    public static void show(FragmentManager fragmentManager, int i2, OnAcceptDenyCallback onAcceptDenyCallback) {
        String str = TAG;
        if (fragmentManager.G(str) == null) {
            FragmentTransaction fragmentTransactionD = fragmentManager.d();
            fragmentTransactionD.b(newInstance(i2, onAcceptDenyCallback), str);
            fragmentTransactionD.f();
        }
    }

    public void attachCallback(OnAcceptDenyCallback onAcceptDenyCallback) {
        this.callback = onAcceptDenyCallback;
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        int i2;
        int i3 = getArguments().getInt(ARG_MESSAGE);
        if (i3 == 1) {
            i2 = R.string.universal_dialog_activate_camera;
        } else if (i3 != 2) {
            i2 = i3 != 3 ? R.string.universal_dialog_activate_camera : R.string.universal_dialog_switch_role;
        } else {
            i2 = R.string.universal_dialog_activate_microphone;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.f(i2);
        AlertDialog alertDialogCreate = builder.setPositiveButton(R.string.universal_dialog_accept, new DialogInterface.OnClickListener() { // from class: com.sightcall.universal.internal.ui.AcceptDenyDialog.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i4) {
                if (AcceptDenyDialog.this.callback != null) {
                    AcceptDenyDialog.this.callback.onAccept();
                }
                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i4);
            }
        }).setNegativeButton(R.string.universal_dialog_deny, new DialogInterface.OnClickListener() { // from class: com.sightcall.universal.internal.ui.AcceptDenyDialog.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i4) {
                if (AcceptDenyDialog.this.callback != null) {
                    AcceptDenyDialog.this.callback.onDeny();
                }
                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i4);
            }
        }).create();
        Button button = alertDialogCreate.getButton(-1);
        Button button2 = alertDialogCreate.getButton(-2);
        if (button != null) {
            button.setContentDescription("hf_use_description|Accept");
        }
        if (button2 != null) {
            button2.setContentDescription("hf_use_description|Deny");
        }
        return alertDialogCreate;
    }
}
