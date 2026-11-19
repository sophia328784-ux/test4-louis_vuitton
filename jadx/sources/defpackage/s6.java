package defpackage;

import android.window.OnBackInvokedCallback;
import androidx.navigationevent.OnBackInvokedInput;
import com.google.android.material.motion.MaterialBackHandler;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class s6 implements OnBackInvokedCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f79721a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f79722b;

    public /* synthetic */ s6(Object obj, int i2) {
        this.f79721a = i2;
        this.f79722b = obj;
    }

    public final void onBackInvoked() {
        int i2 = this.f79721a;
        Object obj = this.f79722b;
        switch (i2) {
            case 0:
                Function0 function0 = (Function0) obj;
                if (function0 != null) {
                    function0.mo47invoke();
                }
                break;
            case 1:
                ((MaterialBackHandler) obj).d();
                break;
            case 2:
                ((OnBackInvokedInput) obj).a();
                break;
            default:
                ((Runnable) obj).run();
                break;
        }
    }
}
