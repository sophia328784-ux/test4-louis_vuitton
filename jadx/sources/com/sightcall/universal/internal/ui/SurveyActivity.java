package com.sightcall.universal.internal.ui;

import android.app.ActivityOptions;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.core.content.ContextCompat;
import com.batch.android.q0.b;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sightcall.universal.R;
import com.sightcall.universal.Universal;
import com.sightcall.universal.agent.Agent;
import com.sightcall.universal.agent.Usecase;
import com.sightcall.universal.internal.model.Survey;
import com.sightcall.universal.internal.util.CustomTabsHelper;
import com.sightcall.universal.model.Session;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.User;

/* JADX INFO: loaded from: classes3.dex */
public class SurveyActivity extends AppCompatActivity {
    private static final String EXTRA_SURVEY = "extra.survey";
    private AlertDialog dialog;
    private Survey survey;

    private static Intent createIntent(Context context, Survey survey) {
        Intent intent = new Intent(context, (Class<?>) SurveyActivity.class);
        intent.addFlags(268435456);
        intent.putExtra(EXTRA_SURVEY, survey);
        return intent;
    }

    private void dismissAlertDialog() {
        AlertDialog alertDialog = this.dialog;
        if (alertDialog == null || !alertDialog.isShowing()) {
            return;
        }
        this.dialog.dismiss();
        this.dialog = null;
    }

    private void displayAlertDialog() {
        if (isFinishing()) {
            return;
        }
        if (this.dialog == null) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            Survey survey = this.survey;
            String str = survey.title;
            AlertController.AlertParams alertParams = builder.f810a;
            alertParams.g = str;
            String str2 = survey.button;
            DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.sightcall.universal.internal.ui.SurveyActivity.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    SurveyActivity.this.redirectToSurveyAndFinish();
                    SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i2);
                }
            };
            alertParams.f801h = str2;
            alertParams.f802i = onClickListener;
            this.dialog = builder.setNegativeButton(R.string.universal_cancel, new DialogInterface.OnClickListener() { // from class: com.sightcall.universal.internal.ui.SurveyActivity.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    SurveyActivity.this.finish();
                    SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i2);
                }
            }).a().create();
        }
        if (this.dialog.isShowing()) {
            return;
        }
        this.dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void redirectToSurveyAndFinish() {
        Uri uri = this.survey.uri(this);
        Universal.logger().i(String.format("Survey redirection: %s", uri));
        String packageNameToUse = CustomTabsHelper.getPackageNameToUse(this);
        if (packageNameToUse == null) {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            intent.addFlags(268435456);
            try {
                startActivity(intent);
            } catch (ActivityNotFoundException e2) {
                Universal.logger().e(e2);
            }
        } else {
            CustomTabsIntent.Builder builder = new CustomTabsIntent.Builder();
            Intent intent2 = builder.f1379a;
            intent2.putExtra("android.support.customtabs.extra.TITLE_VISIBILITY", 1);
            intent2.putExtra("android.support.customtabs.extra.ENABLE_URLBAR_HIDING", true);
            builder.f1380b.f1374a = Integer.valueOf(ContextCompat.getColor(this, com.sightcall.graphik.R.color.universal_colorPrimary) | b.v);
            builder.f1381c = ActivityOptions.makeCustomAnimation(this, android.R.anim.fade_in, android.R.anim.fade_out);
            CustomTabsIntent customTabsIntentA = builder.a();
            Intent intent3 = customTabsIntentA.f1377a;
            intent3.setPackage(packageNameToUse);
            try {
                intent3.setData(uri);
                ContextCompat.startActivity(this, intent3, customTabsIntentA.f1378b);
            } catch (ActivityNotFoundException e3) {
                Universal.logger().e(e3);
            }
        }
        finish();
    }

    public static void start(Context context, Session session) {
        String str;
        String str2;
        Usecase usecase = session.usecase;
        Usecase.Agent agent = usecase.agent();
        Survey survey = usecase.getSurvey(session.config);
        if (survey == null || !survey.isValid()) {
            return;
        }
        User user = Rtcc.instance().user();
        String strLogin = null;
        if (user != null) {
            String strDisplayName = user.displayName();
            if (user instanceof User.Internal) {
                Agent agent2 = Universal.agent().get();
                if (agent != null) {
                    strLogin = agent2.login();
                }
            }
            str2 = strLogin;
            str = strDisplayName;
        } else {
            str = null;
            str2 = null;
        }
        survey.update(context, session.reference(), session.usecase.name(), session.caseReportId(), str, str2);
        context.startActivity(createIntent(context, survey));
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle((CharSequence) null);
        Survey survey = (Survey) getIntent().getParcelableExtra(EXTRA_SURVEY);
        this.survey = survey;
        if (survey == null) {
            finish();
        } else if (survey.immediate) {
            redirectToSurveyAndFinish();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        displayAlertDialog();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        dismissAlertDialog();
        super.onStop();
    }
}
