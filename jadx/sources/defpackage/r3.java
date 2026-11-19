package defpackage;

import android.os.Handler;
import androidx.compose.ui.Actual_androidKt;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import com.vuitton.core.infrastructure.chat.ChatTrackerImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r3 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79233b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f79234c;

    public /* synthetic */ r3(Function0 function0, int i2) {
        this.f79233b = i2;
        this.f79234c = function0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f79233b;
        Function0 function0 = this.f79234c;
        switch (i2) {
            case 0:
                Handler handler = Actual_androidKt.f8581a;
                function0.mo47invoke();
                break;
            case 1:
                AndroidComposeView.Companion companion = AndroidComposeView.P1;
                function0.mo47invoke();
                break;
            case 2:
                function0.mo47invoke();
                break;
            case 3:
                function0.mo47invoke();
                break;
            case 4:
                Function1 function1 = AndroidViewHolder.B;
                function0.mo47invoke();
                break;
            case 5:
                int i3 = ChatTrackerImpl.d;
                function0.mo47invoke();
                break;
            case 6:
                function0.mo47invoke();
                break;
            case 7:
                function0.mo47invoke();
                break;
            case 8:
                function0.mo47invoke();
                break;
            default:
                function0.mo47invoke();
                break;
        }
    }
}
