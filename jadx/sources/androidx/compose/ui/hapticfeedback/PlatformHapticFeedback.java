package androidx.compose.ui.hapticfeedback;

import android.os.Build;
import android.view.View;
import androidx.core.view.ViewCompat;
import java.util.WeakHashMap;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;", "Landroidx/compose/ui/hapticfeedback/HapticFeedback;", "Landroid/view/View;", "view", "<init>", "(Landroid/view/View;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PlatformHapticFeedback implements HapticFeedback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f9195a;

    public PlatformHapticFeedback(View view) {
        this.f9195a = view;
    }

    /* JADX WARN: Code duplicated, block: B:61:0x008b  */
    @Override // androidx.compose.ui.hapticfeedback.HapticFeedback
    public final void a(int i2) {
        int i3;
        HapticFeedbackType.f9193b.getClass();
        int i4 = 1;
        if (i2 == PlatformHapticFeedbackType.f9196a) {
            i3 = 16;
        } else if (i2 == PlatformHapticFeedbackType.f9197b) {
            i3 = 6;
        } else if (i2 == PlatformHapticFeedbackType.f9198c) {
            i3 = 13;
        } else if (i2 == PlatformHapticFeedbackType.d) {
            i3 = 23;
        } else if (i2 == PlatformHapticFeedbackType.f9199e) {
            i3 = 3;
        } else if (i2 == 0) {
            i3 = 0;
        } else if (i2 == PlatformHapticFeedbackType.f9200f) {
            i3 = 17;
        } else if (i2 == PlatformHapticFeedbackType.g) {
            i3 = 27;
        } else if (i2 == PlatformHapticFeedbackType.f9201h) {
            i3 = 26;
        } else if (i2 == PlatformHapticFeedbackType.f9202i) {
            i3 = 9;
        } else if (i2 == PlatformHapticFeedbackType.f9203j) {
            i3 = 22;
        } else if (i2 == PlatformHapticFeedbackType.f9204k) {
            i3 = 21;
        } else {
            i3 = i2 == PlatformHapticFeedbackType.l ? 1 : -1;
        }
        WeakHashMap weakHashMap = ViewCompat.f12200a;
        if (i3 == -1) {
            i4 = -1;
        } else {
            int i5 = Build.VERSION.SDK_INT;
            if (i5 < 34) {
                switch (i3) {
                    case 21:
                    case 23:
                    case 26:
                        i3 = 6;
                        break;
                    case 22:
                    case 24:
                    case 27:
                        i3 = 4;
                        break;
                    case 25:
                        i3 = 0;
                        break;
                }
            }
            if (i5 >= 30) {
                i4 = i3;
            } else if (i3 != 12) {
                if (i3 == 13) {
                    i4 = 6;
                } else if (i3 != 16) {
                    if (i3 != 17) {
                        i4 = i3;
                    } else {
                        i4 = 0;
                    }
                }
            }
        }
        if (i4 == -1) {
            return;
        }
        this.f9195a.performHapticFeedback(i4);
    }
}
