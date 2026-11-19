package com.linecorp.linesdk.auth.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.linecorp.linesdk.LineApiError;
import com.linecorp.linesdk.LineApiResponseCode;
import com.linecorp.linesdk.auth.LineAuthenticationConfig;
import com.linecorp.linesdk.auth.LineAuthenticationParams;
import com.linecorp.linesdk.auth.LineLoginResult;
import com.linecorp.linesdk.internal.pkce.PKCECode;
import com.linecorp.linesdk.utils.StringUtils;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import com.vuitton.android.R;

/* JADX INFO: loaded from: classes2.dex */
public class LineAuthenticationActivity extends Activity {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f36152e = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f36153b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LineAuthenticationStatus f36154c;
    public LineAuthenticationController d;

    public final void a(LineLoginResult lineLoginResult) {
        LineAuthenticationStatus lineAuthenticationStatus = this.f36154c;
        if (lineAuthenticationStatus == null) {
            finish();
            return;
        }
        LineAuthenticationStatus.Status status = lineAuthenticationStatus.f36165f;
        if ((status != LineAuthenticationStatus.Status.STARTED || this.f36153b) && status != LineAuthenticationStatus.Status.INTENT_HANDLED) {
            return;
        }
        Intent intent = new Intent();
        intent.putExtra("authentication_result", lineLoginResult);
        setResult(-1, intent);
        finish();
    }

    @Override // android.app.Activity
    public final void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        if (this.f36154c.f36165f == LineAuthenticationStatus.Status.STARTED) {
            LineAuthenticationController lineAuthenticationController = this.d;
            if (i2 != 3) {
                lineAuthenticationController.getClass();
            } else {
                if (lineAuthenticationController.f36161h.f36165f == LineAuthenticationStatus.Status.INTENT_RECEIVED) {
                    return;
                }
                new Handler(Looper.getMainLooper()).postDelayed(new LineAuthenticationController.CancelAuthenticationTask(), 1000L);
            }
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        LineAuthenticationStatus lineAuthenticationStatus;
        super.onCreate(bundle);
        setContentView(R.layout.linesdk_activity_lineauthentication);
        Intent intent = getIntent();
        Uri data = intent.getData();
        if (data != null && data.getScheme().equals("lineauth")) {
            LineAuthenticationController.f36155i = intent;
            finish();
            return;
        }
        LineAuthenticationConfig lineAuthenticationConfig = (LineAuthenticationConfig) intent.getParcelableExtra("authentication_config");
        LineAuthenticationParams lineAuthenticationParams = (LineAuthenticationParams) intent.getParcelableExtra("authentication_params");
        if (lineAuthenticationConfig == null || lineAuthenticationParams == null) {
            a(LineLoginResult.a(LineApiResponseCode.INTERNAL_ERROR, new LineApiError("The requested parameter is illegal.")));
            return;
        }
        if (bundle == null || (lineAuthenticationStatus = (LineAuthenticationStatus) bundle.getParcelable("authentication_status")) == null) {
            lineAuthenticationStatus = new LineAuthenticationStatus();
        }
        this.f36154c = lineAuthenticationStatus;
        this.d = new LineAuthenticationController(this, lineAuthenticationConfig, lineAuthenticationStatus, lineAuthenticationParams);
    }

    @Override // android.app.Activity
    public final void onNewIntent(Intent intent) {
        PushAutoTrackHelper.onNewIntent(this, intent);
        super.onNewIntent(intent);
        if (this.f36154c.f36165f == LineAuthenticationStatus.Status.STARTED) {
            this.d.a(intent);
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        LineAuthenticationStatus.Status status = this.f36154c.f36165f;
        if (status == LineAuthenticationStatus.Status.INIT) {
            LineAuthenticationController lineAuthenticationController = this.d;
            LineAuthenticationActivity lineAuthenticationActivity = lineAuthenticationController.f36156a;
            LineAuthenticationStatus lineAuthenticationStatus = lineAuthenticationController.f36161h;
            lineAuthenticationStatus.f36165f = LineAuthenticationStatus.Status.STARTED;
            PKCECode pKCECode = new PKCECode(StringUtils.a(64));
            lineAuthenticationStatus.f36162b = pKCECode;
            try {
                BrowserAuthenticationApi.Request requestA = lineAuthenticationController.f36159e.a(lineAuthenticationActivity, lineAuthenticationController.f36157b, pKCECode, lineAuthenticationController.g);
                Bundle bundle = requestA.f36143b;
                Intent intent = requestA.f36142a;
                if (requestA.d) {
                    lineAuthenticationActivity.startActivity(intent, bundle);
                } else {
                    lineAuthenticationActivity.startActivityForResult(intent, 3, bundle);
                }
                lineAuthenticationStatus.f36163c = requestA.f36144c;
            } catch (ActivityNotFoundException e2) {
                lineAuthenticationStatus.f36165f = LineAuthenticationStatus.Status.INTENT_HANDLED;
                lineAuthenticationActivity.a(LineLoginResult.a(LineApiResponseCode.INTERNAL_ERROR, new LineApiError(e2, LineApiError.ErrorCode.LOGIN_ACTIVITY_NOT_FOUND)));
            }
        } else if (status != LineAuthenticationStatus.Status.INTENT_RECEIVED) {
            LineAuthenticationController lineAuthenticationController2 = this.d;
            lineAuthenticationController2.getClass();
            new Handler(Looper.getMainLooper()).postDelayed(new LineAuthenticationController.CancelAuthenticationTask(), 1000L);
        }
        this.f36153b = false;
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("authentication_status", this.f36154c);
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
        this.f36153b = true;
    }
}
