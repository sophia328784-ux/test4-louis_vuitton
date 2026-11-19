package com.google.android.gms.vision.barcode;

import android.content.Context;
import com.google.android.gms.vision.Detector;

/* JADX INFO: loaded from: classes3.dex */
public final class BarcodeDetector extends Detector<Barcode> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.internal.vision.zzm f32178a;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f32179a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.google.android.gms.internal.vision.zzk f32180b = new com.google.android.gms.internal.vision.zzk();

        public Builder(Context context) {
            this.f32179a = context;
        }
    }

    public BarcodeDetector(com.google.android.gms.internal.vision.zzm zzmVar) {
        this.f32178a = zzmVar;
    }
}
