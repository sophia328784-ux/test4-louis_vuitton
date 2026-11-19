package com.lightup.sdk.device.features.process.dataupload;

/* JADX INFO: loaded from: classes2.dex */
public abstract class FirmwareUpdateListener implements DataUpdateListener {

    public static class Progress {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final double f36003a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f36004b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f36005c;

        public Progress(double d, int i2, int i3) {
            this.f36003a = d;
            this.f36004b = i2;
            this.f36005c = i3;
        }

        public int getCurrentStep() {
            return this.f36004b;
        }

        public int getNumberOfSteps() {
            return this.f36005c;
        }

        public double getStepProgress() {
            return this.f36003a;
        }
    }

    @Override // com.lightup.sdk.device.features.process.dataupload.DataUpdateListener
    public final void onError() {
        throw new IllegalStateException("Nope");
    }

    public abstract void onError(FirmwareUpdateError firmwareUpdateError);

    public abstract void onLinkBackUp();

    public abstract void onLinkBroken();

    @Override // com.lightup.sdk.device.features.process.dataupload.DataUpdateListener
    public final void onProgress(double d) {
        throw new IllegalStateException("Nope");
    }

    public abstract void onProgress(Progress progress);
}
