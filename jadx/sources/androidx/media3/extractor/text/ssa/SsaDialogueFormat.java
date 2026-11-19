package androidx.media3.extractor.text.ssa;

import android.text.TextUtils;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
final class SsaDialogueFormat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f16791a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f16792b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f16793c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f16794e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f16795f;

    public SsaDialogueFormat(int i2, int i3, int i4, int i5, int i6, int i7) {
        this.f16791a = i2;
        this.f16792b = i3;
        this.f16793c = i4;
        this.d = i5;
        this.f16794e = i6;
        this.f16795f = i7;
    }

    public static SsaDialogueFormat a(String str) {
        Preconditions.g(str.startsWith("Format:"));
        String[] strArrSplit = TextUtils.split(str.substring(7), ",");
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        for (int i7 = 0; i7 < strArrSplit.length; i7++) {
            String strC = Ascii.c(strArrSplit[i7].trim());
            strC.getClass();
            switch (strC) {
                case "end":
                    i4 = i7;
                    break;
                case "text":
                    i6 = i7;
                    break;
                case "layer":
                    i2 = i7;
                    break;
                case "start":
                    i3 = i7;
                    break;
                case "style":
                    i5 = i7;
                    break;
            }
        }
        if (i3 == -1 || i4 == -1 || i6 == -1) {
            return null;
        }
        return new SsaDialogueFormat(i2, i3, i4, i5, i6, strArrSplit.length);
    }
}
