package com.vuitton.android.presentation.screen.pdp.vto.beauty.models;

import android.graphics.Bitmap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyPictureUiModel;", "", "Landroid/graphics/Bitmap;", "bitmap", "", "filename", "<init>", "(Landroid/graphics/Bitmap;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BeautyPictureUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Bitmap f62147a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f62148b;

    public BeautyPictureUiModel(Bitmap bitmap, String str) {
        bitmap.getClass();
        str.getClass();
        this.f62147a = bitmap;
        this.f62148b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BeautyPictureUiModel)) {
            return false;
        }
        BeautyPictureUiModel beautyPictureUiModel = (BeautyPictureUiModel) obj;
        return Intrinsics.c(this.f62147a, beautyPictureUiModel.f62147a) && Intrinsics.c(this.f62148b, beautyPictureUiModel.f62148b);
    }

    public final int hashCode() {
        return this.f62148b.hashCode() + (this.f62147a.hashCode() * 31);
    }

    public final String toString() {
        return "BeautyPictureUiModel(bitmap=" + this.f62147a + ", filename=" + this.f62148b + ")";
    }
}
