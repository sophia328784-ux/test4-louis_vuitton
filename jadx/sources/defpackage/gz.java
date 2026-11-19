package defpackage;

import android.app.DatePickerDialog;
import android.widget.DatePicker;
import android.widget.EditText;
import androidx.fragment.app.Fragment;
import com.vuitton.android.presentation.screen.connectivity.travel.form.FlightFormFragment;
import com.vuitton.android.presentation.screen.connectivity.travel.form.HotelFormFragment;
import com.vuitton.android.presentation.screen.connectivity.travel.form.TrainFormFragment;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class gz implements DatePickerDialog.OnDateSetListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f69518a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ EditText f69519b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Fragment f69520c;

    public /* synthetic */ gz(Fragment fragment, EditText editText, int i2) {
        this.f69518a = i2;
        this.f69520c = fragment;
        this.f69519b = editText;
    }

    @Override // android.app.DatePickerDialog.OnDateSetListener
    public final void onDateSet(DatePicker datePicker, int i2, int i3, int i4) {
        int i5 = this.f69518a;
        EditText editText = this.f69519b;
        Fragment fragment = this.f69520c;
        switch (i5) {
            case 0:
                FlightFormFragment.Companion companion = FlightFormFragment.Q;
                ((FlightFormFragment) fragment).L(editText, i2, i3, i4);
                break;
            case 1:
                HotelFormFragment.Companion companion2 = HotelFormFragment.G;
                ((HotelFormFragment) fragment).L(editText, i2, i3, i4);
                break;
            default:
                TrainFormFragment.Companion companion3 = TrainFormFragment.Q;
                ((TrainFormFragment) fragment).L(editText, i2, i3, i4);
                break;
        }
    }
}
