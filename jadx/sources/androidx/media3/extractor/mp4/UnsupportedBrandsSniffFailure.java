package androidx.media3.extractor.mp4;

import androidx.media3.common.util.Util;
import androidx.media3.extractor.SniffFailure;
import com.google.common.primitives.ImmutableIntArray;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class UnsupportedBrandsSniffFailure implements SniffFailure {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f16621a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmutableIntArray f16622b;

    public UnsupportedBrandsSniffFailure(int i2, int[] iArr) {
        this.f16621a = i2;
        ImmutableIntArray immutableIntArray = (iArr == null || iArr.length == 0) ? ImmutableIntArray.d : new ImmutableIntArray(Arrays.copyOf(iArr, iArr.length));
        this.f16622b = immutableIntArray;
    }

    public final String toString() {
        ImmutableIntArray immutableIntArray = this.f16622b;
        ArrayList arrayList = new ArrayList(immutableIntArray.f33775c);
        for (int i2 = 0; i2 < immutableIntArray.f33775c; i2++) {
            arrayList.add(Util.d0(immutableIntArray.b(i2)));
        }
        return "UnsupportedBrands{major=" + Util.d0(this.f16621a) + ", compatible=" + arrayList + "}";
    }
}
