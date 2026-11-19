package androidx.compose.foundation.gestures;

import java.util.ArrayList;
import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/foundation/gestures/DraggableAnchorsConfig;", "T", "", "<init>", "()V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DraggableAnchorsConfig<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f4556a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float[] f4557b;

    public DraggableAnchorsConfig() {
        float[] fArr = new float[5];
        for (int i2 = 0; i2 < 5; i2++) {
            fArr[i2] = Float.NaN;
        }
        this.f4557b = fArr;
    }

    public final void a(Enum r3, float f2) {
        ArrayList arrayList = this.f4556a;
        arrayList.add(r3);
        if (this.f4557b.length < arrayList.size()) {
            this.f4557b = Arrays.copyOf(this.f4557b, arrayList.size() + 2);
        }
        this.f4557b[arrayList.size() - 1] = f2;
    }
}
