package androidx.camera.core.impl.utils;

import android.util.Size;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public final class CompareSizesByArea implements Comparator<Size> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f2389b;

    public CompareSizesByArea(boolean z) {
        this.f2389b = z;
    }

    @Override // java.util.Comparator
    public final int compare(Size size, Size size2) {
        Size size3 = size;
        Size size4 = size2;
        int iSignum = Long.signum((((long) size3.getWidth()) * ((long) size3.getHeight())) - (((long) size4.getWidth()) * ((long) size4.getHeight())));
        return this.f2389b ? iSignum * (-1) : iSignum;
    }

    public CompareSizesByArea() {
        this(false);
    }
}
