package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import android.graphics.Bitmap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ScreenshotUiModel;", "", "", "display", "Landroid/graphics/Bitmap;", "screenshot", "<init>", "(ZLandroid/graphics/Bitmap;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ScreenshotUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f61745a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Bitmap f61746b;

    public /* synthetic */ ScreenshotUiModel(boolean z, Bitmap bitmap, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? null : bitmap);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ScreenshotUiModel)) {
            return false;
        }
        ScreenshotUiModel screenshotUiModel = (ScreenshotUiModel) obj;
        return this.f61745a == screenshotUiModel.f61745a && Intrinsics.c(this.f61746b, screenshotUiModel.f61746b);
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.f61745a) * 31;
        Bitmap bitmap = this.f61746b;
        return iHashCode + (bitmap == null ? 0 : bitmap.hashCode());
    }

    public final String toString() {
        return "ScreenshotUiModel(display=" + this.f61745a + ", screenshot=" + this.f61746b + ")";
    }

    public ScreenshotUiModel(boolean z, Bitmap bitmap) {
        this.f61745a = z;
        this.f61746b = bitmap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ScreenshotUiModel() {
        this(false, null, 3, 0 == true ? 1 : 0);
    }
}
