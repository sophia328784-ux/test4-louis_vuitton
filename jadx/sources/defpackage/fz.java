package defpackage;

import android.app.TimePickerDialog;
import android.widget.EditText;
import android.widget.TimePicker;
import androidx.fragment.app.Fragment;
import com.vuitton.android.presentation.screen.connectivity.travel.form.FlightFormFragment;
import com.vuitton.android.presentation.screen.connectivity.travel.form.TrainFormFragment;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class fz implements TimePickerDialog.OnTimeSetListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f69233a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ EditText f69234b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Fragment f69235c;

    public /* synthetic */ fz(Fragment fragment, EditText editText, int i2) {
        this.f69233a = i2;
        this.f69235c = fragment;
        this.f69234b = editText;
    }

    @Override // android.app.TimePickerDialog.OnTimeSetListener
    public final void onTimeSet(TimePicker timePicker, int i2, int i3) {
        int i4 = this.f69233a;
        EditText editText = this.f69234b;
        Fragment fragment = this.f69235c;
        switch (i4) {
            case 0:
                FlightFormFragment.Companion companion = FlightFormFragment.Q;
                ((FlightFormFragment) fragment).N(editText, i2, i3);
                break;
            default:
                TrainFormFragment.Companion companion2 = TrainFormFragment.Q;
                ((TrainFormFragment) fragment).N(editText, i2, i3);
                break;
        }
    }
}
