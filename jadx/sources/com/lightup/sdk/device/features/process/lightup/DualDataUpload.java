package com.lightup.sdk.device.features.process.lightup;

import com.lightup.sdk.device.ble.scanner.listeners.DataUploadListener;
import com.lightup.sdk.device.enums.DataUploadError;
import com.lightup.sdk.device.features.process.LightingUpload;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload;", "", "Lcom/lightup/sdk/device/features/process/LightingUpload;", "upload1", "upload2", "Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;", "listener", "<init>", "(Lcom/lightup/sdk/device/features/process/LightingUpload;Lcom/lightup/sdk/device/features/process/LightingUpload;Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;)V", "library"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DualDataUpload {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DataUploadListener f36012a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f36013b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public DataUploadError f36014c;
    public double d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public double f36015e;

    public DualDataUpload(LightingUpload lightingUpload, LightingUpload lightingUpload2, DataUploadListener dataUploadListener) {
        lightingUpload.getClass();
        lightingUpload2.getClass();
        dataUploadListener.getClass();
        this.f36012a = dataUploadListener;
        this.f36013b = new AtomicBoolean(false);
        lightingUpload.setDataUploadListener(new DataUploadListener() { // from class: com.lightup.sdk.device.features.process.lightup.DualDataUpload$start$1
            @Override // com.lightup.sdk.device.ble.scanner.listeners.DataUploadListener
            public final void onCompleted() {
                this.f36016a.b();
            }

            @Override // com.lightup.sdk.device.ble.scanner.listeners.DataUploadListener
            public final void onError(DataUploadError dataUploadError) {
                dataUploadError.getClass();
                DualDataUpload dualDataUpload = this.f36016a;
                dualDataUpload.f36014c = dataUploadError;
                dualDataUpload.b();
            }

            @Override // com.lightup.sdk.device.ble.scanner.listeners.DataUploadListener
            public final void onProgress(double d) {
                DualDataUpload.a(this.f36016a, true, d);
            }
        });
        lightingUpload2.setDataUploadListener(new DataUploadListener() { // from class: com.lightup.sdk.device.features.process.lightup.DualDataUpload$start$2
            @Override // com.lightup.sdk.device.ble.scanner.listeners.DataUploadListener
            public final void onCompleted() {
                this.f36017a.b();
            }

            @Override // com.lightup.sdk.device.ble.scanner.listeners.DataUploadListener
            public final void onError(DataUploadError dataUploadError) {
                dataUploadError.getClass();
                DualDataUpload dualDataUpload = this.f36017a;
                dualDataUpload.f36014c = dataUploadError;
                dualDataUpload.b();
            }

            @Override // com.lightup.sdk.device.ble.scanner.listeners.DataUploadListener
            public final void onProgress(double d) {
                DualDataUpload.a(this.f36017a, false, d);
            }
        });
        lightingUpload.execute();
        lightingUpload2.execute();
    }

    public static final void a(DualDataUpload dualDataUpload, boolean z, double d) {
        if (z) {
            dualDataUpload.d = d;
        } else {
            dualDataUpload.f36015e = d;
        }
        dualDataUpload.f36012a.onProgress((dualDataUpload.d + dualDataUpload.f36015e) / 2.0d);
    }

    public final void b() {
        if (this.f36013b.getAndSet(true)) {
            DataUploadError dataUploadError = this.f36014c;
            DataUploadListener dataUploadListener = this.f36012a;
            if (dataUploadError != null) {
                dataUploadListener.onError(dataUploadError);
            } else {
                dataUploadListener.onCompleted();
            }
        }
    }
}
