package kotlin.jvm.internal;

import defpackage.zy0;
import kotlin.Metadata;
import kotlin.collections.FloatIterator;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0014\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/jvm/internal/ArrayFloatIterator;", "Lkotlin/collections/FloatIterator;", "", "array", "<init>", "([F)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
final class ArrayFloatIterator extends FloatIterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float[] f71899b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f71900c;

    public ArrayFloatIterator(float[] fArr) {
        fArr.getClass();
        this.f71899b = fArr;
    }

    @Override // kotlin.collections.FloatIterator
    public final float a() {
        try {
            float[] fArr = this.f71899b;
            int i2 = this.f71900c;
            this.f71900c = i2 + 1;
            return fArr[i2];
        } catch (ArrayIndexOutOfBoundsException e2) {
            this.f71900c--;
            zy0.c(e2.getMessage());
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f71900c < this.f71899b.length;
    }
}
