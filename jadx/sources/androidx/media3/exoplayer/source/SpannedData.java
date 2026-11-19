package androidx.media3.exoplayer.source;

import android.util.SparseArray;
import androidx.media3.common.util.Consumer;
import defpackage.zy0;

/* JADX INFO: loaded from: classes.dex */
final class SpannedData<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f15627a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SparseArray f15628b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Consumer f15629c;

    public SpannedData(Consumer<V> consumer) {
        this.f15628b = new SparseArray();
        this.f15629c = consumer;
        this.f15627a = -1;
    }

    public final Object a(int i2) {
        SparseArray sparseArray;
        if (this.f15627a == -1) {
            this.f15627a = 0;
        }
        while (true) {
            int i3 = this.f15627a;
            sparseArray = this.f15628b;
            if (i3 <= 0 || i2 >= sparseArray.keyAt(i3)) {
                break;
            }
            this.f15627a--;
        }
        while (this.f15627a < sparseArray.size() - 1 && i2 >= sparseArray.keyAt(this.f15627a + 1)) {
            this.f15627a++;
        }
        return sparseArray.valueAt(this.f15627a);
    }

    public SpannedData() {
        this(new zy0(24));
    }
}
