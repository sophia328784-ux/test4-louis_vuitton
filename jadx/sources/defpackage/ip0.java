package defpackage;

import android.content.DialogInterface;
import com.batch.android.d0.a;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ip0 implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71186b;

    public /* synthetic */ ip0(int i2) {
        this.f71186b = i2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        switch (this.f71186b) {
            case 0:
                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i2);
                break;
            case 1:
                a.a(dialogInterface, i2);
                break;
            default:
                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i2);
                break;
        }
    }
}
