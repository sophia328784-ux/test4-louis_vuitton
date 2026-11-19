package com.cyberfend.cyfsecurity;

import ZjTIAZ.AcVtYN;
import ZjTIAZ.CNATAC;
import ZjTIAZ.GWINqE;
import ZjTIAZ.XcIOkP;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;
import com.dynatrace.android.callback.Callback;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.vuitton.android.R;

/* JADX INFO: loaded from: classes2.dex */
public class CCADialogActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Button f25332i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CircleProgressBar f25333j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public XcIOkP.GznHzJ f25334k = new XcIOkP.GznHzJ() { // from class: com.cyberfend.cyfsecurity.CCADialogActivity.1
        @Override // ZjTIAZ.XcIOkP.GznHzJ
        public final void a(final float f2) {
            try {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.cyberfend.cyfsecurity.CCADialogActivity.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        CCADialogActivity.this.f25333j.setProgress(f2);
                    }
                });
            } catch (Exception e2) {
                GWINqE.b(e2);
            }
        }
    };

    /* JADX INFO: renamed from: com.cyberfend.cyfsecurity.CCADialogActivity$2, reason: invalid class name */
    class AnonymousClass2 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Callback.n(view);
            try {
                XcIOkP.d.getClass();
                try {
                    AcVtYN acVtYN = AcVtYN.I;
                    acVtYN.getClass();
                    try {
                        int i2 = acVtYN.f137b;
                        if (i2 == 1) {
                            acVtYN.m(2);
                        } else if (i2 == 3) {
                            acVtYN.m(0);
                        }
                    } catch (Exception e2) {
                        GWINqE.b(e2);
                    }
                } catch (Exception e3) {
                    GWINqE.b(e3);
                }
                Callback.o();
                SensorsDataAutoTrackHelper.trackViewOnClick(view);
            } catch (Throwable th) {
                Callback.o();
                SensorsDataAutoTrackHelper.trackViewOnClick(view);
                throw th;
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            setContentView(R.layout.activity_ccadialog);
            setFinishOnTouchOutside(false);
            this.f25333j = (CircleProgressBar) findViewById(R.id.dialogActivity_dialog_progressBar);
            String stringExtra = getIntent().getStringExtra(CNATAC.a("MfT\u0013g[[Lt"));
            String stringExtra2 = getIntent().getStringExtra(CNATAC.a("MfT\u0013~W\\SpVP"));
            String stringExtra3 = getIntent().getStringExtra(CNATAC.a("MfT\u0013pSACt]\u0015~@BCWG"));
            ((TextView) findViewById(R.id.dialogActivity_dialog_title)).setText(stringExtra);
            ((TextView) findViewById(R.id.dialogActivity_dialog_message)).setText(stringExtra2);
            Button button = (Button) findViewById(R.id.dialogActivity_dialog_button);
            this.f25332i = button;
            button.setText(stringExtra3);
            this.f25332i.setOnClickListener(new AnonymousClass2());
            int intExtra = getIntent().getIntExtra(CNATAC.a("ZMp^V\u0012lO}^G"), ContextCompat.getColor(this, R.color.akamaiCCAcolorPrimary));
            this.f25332i.setTextColor(intExtra);
            this.f25333j.setProgressBarColor(intExtra);
            XcIOkP.d.a(this.f25334k);
        } catch (Exception e2) {
            GWINqE.b(e2);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        try {
            this.f25334k = null;
            XcIOkP.d.f316a = null;
        } catch (Exception e2) {
            GWINqE.b(e2);
        }
    }
}
