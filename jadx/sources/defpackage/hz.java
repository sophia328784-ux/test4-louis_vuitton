package defpackage;

import android.view.View;
import android.widget.EditText;
import com.vuitton.android.presentation.screen.connectivity.travel.form.FlightFormFragment;
import com.vuitton.android.presentation.screen.connectivity.travel.form.TrainFormFragment;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class hz implements View.OnFocusChangeListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69814b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ EditText f69815c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ hz(EditText editText, Function0 function0, int i2) {
        this.f69814b = i2;
        this.f69815c = editText;
        this.d = function0;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        int i2 = this.f69814b;
        Function0 function0 = this.d;
        EditText editText = this.f69815c;
        switch (i2) {
            case 0:
                FlightFormFragment.Companion companion = FlightFormFragment.Q;
                if (z && !editText.isAccessibilityFocused()) {
                    function0.mo47invoke();
                    break;
                }
                break;
            default:
                TrainFormFragment.Companion companion2 = TrainFormFragment.Q;
                if (z && !editText.isAccessibilityFocused()) {
                    function0.mo47invoke();
                    break;
                }
                break;
        }
    }
}
