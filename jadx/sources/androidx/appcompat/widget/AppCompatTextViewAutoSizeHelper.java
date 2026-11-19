package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.RectF;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
class AppCompatTextViewAutoSizeHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1193a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f1194b = -1.0f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f1195c = -1.0f;
    public float d = -1.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f1196e = new int[0];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1197f = false;
    public final TextView g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Context f1198h;

    public static class Impl {
    }

    public static class Impl23 extends Impl {
    }

    public static class Impl29 extends Impl23 {
    }

    static {
        new RectF();
        new ConcurrentHashMap();
    }

    public AppCompatTextViewAutoSizeHelper(TextView textView) {
        this.g = textView;
        this.f1198h = textView.getContext();
        new Impl29();
    }

    public static int[] a(int[] iArr) {
        int length = iArr.length;
        if (length != 0) {
            Arrays.sort(iArr);
            ArrayList arrayList = new ArrayList();
            for (int i2 : iArr) {
                if (i2 > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i2)) < 0) {
                    arrayList.add(Integer.valueOf(i2));
                }
            }
            if (length != arrayList.size()) {
                int size = arrayList.size();
                int[] iArr2 = new int[size];
                for (int i3 = 0; i3 < size; i3++) {
                    iArr2[i3] = ((Integer) arrayList.get(i3)).intValue();
                }
                return iArr2;
            }
        }
        return iArr;
    }

    public final boolean b() {
        return !(this.g instanceof AppCompatEditText);
    }
}
