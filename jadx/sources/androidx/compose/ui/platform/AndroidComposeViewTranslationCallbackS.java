package androidx.compose.ui.platform;

import android.view.View;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bÁ\u0002\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0007\u0010\u0006¨\u0006\b"}, d2 = {"Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS;", "", "Landroid/view/View;", "view", "", NBSSpanMetricUnit.Bit, "(Landroid/view/View;)V", "a", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidComposeViewTranslationCallbackS {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AndroidComposeViewTranslationCallbackS f9930a = new AndroidComposeViewTranslationCallbackS();

    public final void a(View view) {
        view.clearViewTranslationCallback();
    }

    public final void b(View view) {
        view.setViewTranslationCallback(AndroidComposeViewTranslationCallback.f9929a);
    }
}
