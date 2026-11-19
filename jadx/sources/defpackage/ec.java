package defpackage;

import android.os.Bundle;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.fragment.app.FragmentResultListener;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivity;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ec implements FragmentResultListener, ActivityResultCallback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AuthenticationActivity f68824b;

    @Override // androidx.fragment.app.FragmentResultListener
    public void a(String str, Bundle bundle) {
        AuthenticationActivity.H(this.f68824b, str, bundle);
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void b(Object obj) {
        ActivityResult activityResult = (ActivityResult) obj;
        AuthenticationActivity.Companion companion = AuthenticationActivity.u;
        activityResult.getClass();
        int i2 = activityResult.f731b;
        AuthenticationActivity authenticationActivity = this.f68824b;
        if (i2 == -1) {
            authenticationActivity.setResult(-1);
        }
        authenticationActivity.finish();
    }
}
