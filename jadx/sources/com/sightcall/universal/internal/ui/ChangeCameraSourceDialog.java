package com.sightcall.universal.internal.ui;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sightcall.universal.R;
import defpackage.d21;
import net.rtccloud.sdk.VideoModule;

/* JADX INFO: loaded from: classes3.dex */
public class ChangeCameraSourceDialog extends BaseDialogFragment {
    public static final String ARG_SOURCE = d21.j("ChangeCameraSourceDialog", ".source");
    private static final String TAG = "ChangeCameraSourceDialog";
    private OnRequestCameraSourceListener listener;

    public interface OnRequestCameraSourceListener {
        void onRequestCameraSourceConfirmation(VideoModule.CameraSource cameraSource, boolean z);
    }

    public static ChangeCameraSourceDialog newInstance(VideoModule.CameraSource cameraSource) {
        ChangeCameraSourceDialog changeCameraSourceDialog = new ChangeCameraSourceDialog();
        Bundle bundle = new Bundle();
        bundle.putParcelable(ARG_SOURCE, cameraSource);
        changeCameraSourceDialog.setArguments(bundle);
        return changeCameraSourceDialog;
    }

    public static void show(FragmentManager fragmentManager, VideoModule.CameraSource cameraSource) {
        String str = TAG;
        if (fragmentManager.G(str) == null) {
            FragmentTransaction fragmentTransactionD = fragmentManager.d();
            fragmentTransactionD.b(newInstance(cameraSource), str);
            fragmentTransactionD.f();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sightcall.universal.internal.ui.BaseDialogFragment
    public void onAttachToContext(Context context) {
        if (context instanceof OnRequestCameraSourceListener) {
            this.listener = (OnRequestCameraSourceListener) context;
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        final VideoModule.CameraSource cameraSource = (VideoModule.CameraSource) getArguments().getParcelable(ARG_SOURCE);
        if (cameraSource == null) {
            return null;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.f(cameraSource.isFront() ? R.string.universal_dialog_camera_front : R.string.universal_dialog_camera_rear);
        return builder.setPositiveButton(R.string.universal_dialog_accept, new DialogInterface.OnClickListener() { // from class: com.sightcall.universal.internal.ui.ChangeCameraSourceDialog.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                if (ChangeCameraSourceDialog.this.listener != null) {
                    ChangeCameraSourceDialog.this.listener.onRequestCameraSourceConfirmation(cameraSource, true);
                }
                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i2);
            }
        }).setNegativeButton(R.string.universal_dialog_deny, new DialogInterface.OnClickListener() { // from class: com.sightcall.universal.internal.ui.ChangeCameraSourceDialog.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                if (ChangeCameraSourceDialog.this.listener != null) {
                    ChangeCameraSourceDialog.this.listener.onRequestCameraSourceConfirmation(cameraSource, false);
                }
                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i2);
            }
        }).create();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.listener = null;
    }
}
