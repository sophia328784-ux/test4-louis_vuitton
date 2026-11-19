package com.sightcall.universal.internal.location;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sightcall.universal.R;
import com.sightcall.universal.internal.location.LocationDialog;
import com.sightcall.universal.internal.ui.BaseDialogFragment;

/* JADX INFO: loaded from: classes3.dex */
public class LocationDialog extends BaseDialogFragment {
    private static final String TAG = "LocationDialog";
    private OnLocationDialogListener listener;
    private final Long timeout;
    private final Handler timeoutHandler = new Handler(Looper.getMainLooper());
    private final Runnable timeoutRunner = new Runnable() { // from class: com.sightcall.universal.internal.location.LocationDialog.1
        @Override // java.lang.Runnable
        public void run() {
            LocationDialog.this.listener.onRequestLocationConfirmation(LocationDialogResult.TIMEOUT);
            LocationDialog.this.dismiss();
        }
    };

    public enum LocationDialogResult {
        ACCEPTED,
        DECLINED,
        TIMEOUT
    }

    public interface OnLocationDialogListener {
        void onRequestLocationConfirmation(LocationDialogResult locationDialogResult);
    }

    public LocationDialog(Long l) {
        this.timeout = l;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreateDialog$0(DialogInterface dialogInterface, int i2) {
        OnLocationDialogListener onLocationDialogListener = this.listener;
        if (onLocationDialogListener != null) {
            onLocationDialogListener.onRequestLocationConfirmation(LocationDialogResult.ACCEPTED);
        }
        SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreateDialog$1(DialogInterface dialogInterface, int i2) {
        OnLocationDialogListener onLocationDialogListener = this.listener;
        if (onLocationDialogListener != null) {
            onLocationDialogListener.onRequestLocationConfirmation(LocationDialogResult.DECLINED);
        }
        SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i2);
    }

    public static LocationDialog newInstance(Long l) {
        return new LocationDialog(l);
    }

    public static void show(FragmentManager fragmentManager) {
        showDialog(fragmentManager, null);
    }

    private static void showDialog(FragmentManager fragmentManager, Long l) {
        String str = TAG;
        if (fragmentManager.G(str) == null) {
            FragmentTransaction fragmentTransactionD = fragmentManager.d();
            fragmentTransactionD.b(newInstance(l), str);
            fragmentTransactionD.f();
        }
    }

    private void startTimeoutHandler() {
        Long l = this.timeout;
        if (l == null || l.longValue() <= 0) {
            return;
        }
        this.timeoutHandler.postDelayed(this.timeoutRunner, this.timeout.longValue());
    }

    private void stopTimeoutHandler() {
        this.timeoutHandler.removeCallbacksAndMessages(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sightcall.universal.internal.ui.BaseDialogFragment
    public void onAttachToContext(Context context) {
        startTimeoutHandler();
        if (context instanceof OnLocationDialogListener) {
            this.listener = (OnLocationDialogListener) context;
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        int i2 = R.string.universal_location_request;
        AlertController.AlertParams alertParams = builder.f810a;
        alertParams.g = alertParams.f796a.getText(i2);
        final int i3 = 0;
        final int i4 = 1;
        AlertDialog alertDialogCreate = builder.setPositiveButton(R.string.universal_location_request_yes, new DialogInterface.OnClickListener(this) { // from class: ga0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ LocationDialog f69359c;

            {
                this.f69359c = this;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i5) {
                int i6 = i3;
                LocationDialog locationDialog = this.f69359c;
                switch (i6) {
                    case 0:
                        locationDialog.lambda$onCreateDialog$0(dialogInterface, i5);
                        break;
                    default:
                        locationDialog.lambda$onCreateDialog$1(dialogInterface, i5);
                        break;
                }
            }
        }).setNegativeButton(R.string.universal_location_request_no, new DialogInterface.OnClickListener(this) { // from class: ga0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ LocationDialog f69359c;

            {
                this.f69359c = this;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i5) {
                int i6 = i4;
                LocationDialog locationDialog = this.f69359c;
                switch (i6) {
                    case 0:
                        locationDialog.lambda$onCreateDialog$0(dialogInterface, i5);
                        break;
                    default:
                        locationDialog.lambda$onCreateDialog$1(dialogInterface, i5);
                        break;
                }
            }
        }).a().create();
        alertDialogCreate.setCancelable(false);
        alertDialogCreate.setCanceledOnTouchOutside(false);
        setCancelable(false);
        return alertDialogCreate;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        stopTimeoutHandler();
        this.listener = null;
    }

    public static void show(FragmentManager fragmentManager, Long l) {
        showDialog(fragmentManager, l);
    }
}
