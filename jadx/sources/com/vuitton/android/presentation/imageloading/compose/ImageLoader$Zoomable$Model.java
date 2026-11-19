package com.vuitton.android.presentation.imageloading.compose;

import androidx.compose.ui.layout.ContentScale;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"com/vuitton/android/presentation/imageloading/compose/ImageLoader$Zoomable$Model", "", DbParams.KEY_DATA, "", "contentDescription", "Landroidx/compose/ui/layout/ContentScale;", "contentScale", "<init>", "(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/layout/ContentScale;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImageLoader$Zoomable$Model {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f51525a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f51526b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ContentScale f51527c;

    public ImageLoader$Zoomable$Model(Object obj, String str, ContentScale contentScale) {
        obj.getClass();
        contentScale.getClass();
        this.f51525a = obj;
        this.f51526b = str;
        this.f51527c = contentScale;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImageLoader$Zoomable$Model)) {
            return false;
        }
        ImageLoader$Zoomable$Model imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) obj;
        return Intrinsics.c(this.f51525a, imageLoader$Zoomable$Model.f51525a) && Intrinsics.c(this.f51526b, imageLoader$Zoomable$Model.f51526b) && Intrinsics.c(this.f51527c, imageLoader$Zoomable$Model.f51527c);
    }

    public final int hashCode() {
        int iHashCode = this.f51525a.hashCode() * 31;
        String str = this.f51526b;
        return this.f51527c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        return "Model(data=" + this.f51525a + ", contentDescription=" + this.f51526b + ", contentScale=" + this.f51527c + ")";
    }
}
