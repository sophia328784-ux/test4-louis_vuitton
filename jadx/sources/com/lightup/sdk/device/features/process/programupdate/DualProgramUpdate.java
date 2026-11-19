package com.lightup.sdk.device.features.process.programupdate;

import com.lightup.sdk.device.enums.UpdateError;
import com.lightup.sdk.device.features.process.dataupload.FirmwareUpdateError;
import com.lightup.sdk.device.features.process.dataupload.FirmwareUpdateListener;
import com.lightup.sdk.device.model.listeners.UpdateDeviceListener;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class DualProgramUpdate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UpdateDeviceListener f36018a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public UpdateError f36020c;
    public double d = 0.0d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public double f36021e = 0.0d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f36019b = new AtomicBoolean(false);

    public class ProgramUpdateHandler extends FirmwareUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final DualProgramUpdate f36022a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f36023b;

        public ProgramUpdateHandler(DualProgramUpdate dualProgramUpdate, boolean z) {
            this.f36022a = dualProgramUpdate;
            this.f36023b = z;
        }

        @Override // com.lightup.sdk.device.features.process.dataupload.DataUpdateListener
        public final void onCompleted() {
            DualProgramUpdate dualProgramUpdate = this.f36022a;
            if (dualProgramUpdate.f36019b.getAndSet(true)) {
                UpdateError updateError = dualProgramUpdate.f36020c;
                UpdateDeviceListener updateDeviceListener = dualProgramUpdate.f36018a;
                if (updateError != null) {
                    updateDeviceListener.onUpdateError(updateError);
                } else {
                    updateDeviceListener.onDone();
                }
            }
        }

        @Override // com.lightup.sdk.device.features.process.dataupload.FirmwareUpdateListener
        public final void onError(FirmwareUpdateError firmwareUpdateError) {
            FirmwareUpdateError firmwareUpdateError2 = FirmwareUpdateError.CONNECTION_LOST;
            DualProgramUpdate dualProgramUpdate = this.f36022a;
            if (firmwareUpdateError == firmwareUpdateError2) {
                UpdateError updateError = UpdateError.UNEXPECTED_ERROR;
                dualProgramUpdate.getClass();
                updateError.toString();
                dualProgramUpdate.f36020c = updateError;
                if (dualProgramUpdate.f36019b.getAndSet(true)) {
                    UpdateError updateError2 = dualProgramUpdate.f36020c;
                    UpdateDeviceListener updateDeviceListener = dualProgramUpdate.f36018a;
                    if (updateError2 != null) {
                        updateDeviceListener.onUpdateError(updateError2);
                        return;
                    } else {
                        updateDeviceListener.onDone();
                        return;
                    }
                }
                return;
            }
            UpdateError updateErrorFromFirmwareUpdateError = UpdateError.fromFirmwareUpdateError(firmwareUpdateError);
            dualProgramUpdate.getClass();
            updateErrorFromFirmwareUpdateError.toString();
            dualProgramUpdate.f36020c = updateErrorFromFirmwareUpdateError;
            if (dualProgramUpdate.f36019b.getAndSet(true)) {
                UpdateError updateError3 = dualProgramUpdate.f36020c;
                UpdateDeviceListener updateDeviceListener2 = dualProgramUpdate.f36018a;
                if (updateError3 != null) {
                    updateDeviceListener2.onUpdateError(updateError3);
                } else {
                    updateDeviceListener2.onDone();
                }
            }
        }

        @Override // com.lightup.sdk.device.features.process.dataupload.FirmwareUpdateListener
        public final void onLinkBackUp() {
        }

        @Override // com.lightup.sdk.device.features.process.dataupload.FirmwareUpdateListener
        public final void onLinkBroken() {
        }

        @Override // com.lightup.sdk.device.features.process.dataupload.FirmwareUpdateListener
        public final void onProgress(FirmwareUpdateListener.Progress progress) {
            double stepProgress = progress.getStepProgress();
            DualProgramUpdate dualProgramUpdate = this.f36022a;
            if (this.f36023b) {
                dualProgramUpdate.d = stepProgress;
            } else {
                dualProgramUpdate.f36021e = stepProgress;
            }
            dualProgramUpdate.f36018a.onProgress(1, 1, (dualProgramUpdate.d + dualProgramUpdate.f36021e) / 2.0d);
        }
    }

    public DualProgramUpdate(ProgramUpdate programUpdate, ProgramUpdate programUpdate2, UpdateDeviceListener updateDeviceListener) {
        this.f36018a = updateDeviceListener;
        programUpdate.setFirmwareUpdateListener(new ProgramUpdateHandler(this, true));
        programUpdate2.setFirmwareUpdateListener(new ProgramUpdateHandler(this, false));
        programUpdate.execute();
        programUpdate2.execute();
    }
}
