package defpackage;

import android.os.Trace;
import android.view.MotionEvent;
import androidx.compose.ui.platform.AndroidComposeView;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class n5 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76449b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AndroidComposeView f76450c;

    public /* synthetic */ n5(AndroidComposeView androidComposeView, int i2) {
        this.f76449b = i2;
        this.f76450c = androidComposeView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f76449b;
        AndroidComposeView androidComposeView = this.f76450c;
        switch (i2) {
            case 0:
                ArrayDeque arrayDeque = androidComposeView.f9869j;
                AndroidComposeView.Companion companion = AndroidComposeView.P1;
                Trace.beginSection("AndroidOwner:outOfFrameExecutor");
                while (!arrayDeque.isEmpty()) {
                    try {
                        ((Function0) arrayDeque.removeLast()).mo47invoke();
                    } catch (Throwable th) {
                        Trace.endSection();
                        throw th;
                    }
                }
                Trace.endSection();
                return;
            case 1:
                androidComposeView.G1 = false;
                MotionEvent motionEvent = androidComposeView.y1;
                motionEvent.getClass();
                if (motionEvent.getActionMasked() == 10) {
                    androidComposeView.b0(motionEvent);
                    return;
                } else {
                    md.k("The ACTION_HOVER_EXIT event was not cleared.");
                    return;
                }
            case 2:
                AndroidComposeView.R(androidComposeView.getRoot());
                return;
            default:
                AndroidComposeView.R(androidComposeView.getRoot());
                return;
        }
    }
}
