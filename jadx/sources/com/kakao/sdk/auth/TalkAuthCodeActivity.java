package com.kakao.sdk.auth;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.ResultReceiver;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.appcompat.app.AppCompatActivity;
import com.kakao.sdk.common.model.ClientError;
import com.kakao.sdk.common.model.ClientErrorCause;
import com.kakao.sdk.common.model.KakaoSdkError;
import com.kakao.sdk.common.util.SdkLog;
import com.vuitton.android.R;
import defpackage.ln0;
import java.util.ArrayList;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/kakao/sdk/auth/TalkAuthCodeActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "auth_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class TalkAuthCodeActivity extends AppCompatActivity {
    public static final /* synthetic */ int m = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ResultReceiver f35834i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ActivityResultLauncher f35835j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f35836k;
    public final String l;

    public TalkAuthCodeActivity() {
        ActivityResultLauncher activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ln0(this, 18));
        activityResultLauncherRegisterForActivityResult.getClass();
        this.f35835j = activityResultLauncherRegisterForActivityResult;
        this.f35836k = "com.kakao.sdk.talk.error.type";
        this.l = "com.kakao.sdk.talk.error.description";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        Bundle extras;
        ResultReceiver resultReceiver;
        super.onCreate(bundle);
        setContentView(R.layout.activity_talk_auth_code);
        try {
            Bundle extras2 = getIntent().getExtras();
            if (extras2 == null) {
                throw new IllegalArgumentException("no extras.");
            }
            Bundle bundle2 = extras2.getBundle("key.bundle");
            if (bundle2 != null) {
                if (Build.VERSION.SDK_INT >= 33) {
                    resultReceiver = (ResultReceiver) bundle2.getParcelable("key.result.receiver", ResultReceiver.class);
                } else {
                    Parcelable parcelable = bundle2.getParcelable("key.result.receiver");
                    parcelable.getClass();
                    resultReceiver = (ResultReceiver) parcelable;
                }
                if (resultReceiver == null) {
                    throw new IllegalStateException();
                }
                this.f35834i = resultReceiver;
            }
            int i2 = extras2.getInt("key.request.code");
            SdkLog.d.getClass();
            SdkLog.Companion.b("requestCode: " + i2);
            Intent intent = Build.VERSION.SDK_INT >= 33 ? (Intent) extras2.getParcelable("key.login.intent", Intent.class) : (Intent) extras2.getParcelable("key.login.intent");
            SdkLog.Companion.b("loginIntent:");
            if (intent != null && (extras = intent.getExtras()) != null) {
                SdkLog.Companion.b("\tcom.kakao.sdk.talk.appKey : " + extras.getString("com.kakao.sdk.talk.appKey"));
                SdkLog.Companion.b("\tcom.kakao.sdk.talk.redirectUri : " + extras.getString("com.kakao.sdk.talk.redirectUri"));
                SdkLog.Companion.b("\tcom.kakao.sdk.talk.kaHeader : " + extras.getString("com.kakao.sdk.talk.kaHeader"));
                Bundle bundle3 = extras.getBundle("com.kakao.sdk.talk.extraparams");
                if (bundle3 != null) {
                    SdkLog.Companion.b("\tcom.kakao.sdk.talk.extraparams");
                    Set<String> setKeySet = bundle3.keySet();
                    setKeySet.getClass();
                    Set<String> set = setKeySet;
                    ArrayList<String> arrayList = new ArrayList(CollectionsKt.t(set, 10));
                    for (String str : set) {
                        arrayList.add("\t\t" + str + " : " + bundle3.getString(str));
                    }
                    for (String str2 : arrayList) {
                        SdkLog.d.getClass();
                        SdkLog.Companion.b(str2);
                    }
                }
            }
            this.f35835j.a(intent);
        } catch (Throwable th) {
            SdkLog.d.getClass();
            SdkLog.Companion.a(th);
            ClientError clientError = new ClientError(ClientErrorCause.Unknown, null, 2, 0 == true ? 1 : 0);
            clientError.initCause(th);
            v(clientError);
        }
    }

    public final void v(KakaoSdkError kakaoSdkError) {
        ResultReceiver resultReceiver = this.f35834i;
        if (resultReceiver != null) {
            Bundle bundle = new Bundle();
            bundle.putSerializable("key.exception", kakaoSdkError);
            resultReceiver.send(0, bundle);
        }
        finish();
    }
}
