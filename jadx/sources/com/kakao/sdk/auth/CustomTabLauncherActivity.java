package com.kakao.sdk.auth;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.os.ResultReceiver;
import androidx.appcompat.app.AppCompatActivity;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.core.content.ContextCompat;
import com.kakao.sdk.common.model.ClientError;
import com.kakao.sdk.common.model.ClientErrorCause;
import com.kakao.sdk.common.util.KakaoCustomTabsClient;
import com.kakao.sdk.common.util.KakaoCustomTabsClient$openWithDefault$connection$1;
import com.kakao.sdk.common.util.SdkLog;
import com.kakao.sdk.common.util.SdkLogLevel;
import defpackage.qr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/kakao/sdk/auth/CustomTabLauncherActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "auth_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class CustomTabLauncherActivity extends AppCompatActivity {
    public static final /* synthetic */ int n = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ResultReceiver f35829i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Uri f35830j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f35831k;
    public KakaoCustomTabsClient$openWithDefault$connection$1 l;
    public Handler m;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        Bundle bundle2;
        ResultReceiver resultReceiver;
        Uri uri;
        super.onCreate(bundle);
        Intent intent = getIntent();
        intent.getClass();
        try {
            Bundle extras = intent.getExtras();
            if (extras != null && (bundle2 = extras.getBundle("key.bundle")) != null) {
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 33) {
                    resultReceiver = (ResultReceiver) bundle2.getParcelable("key.result.receiver", ResultReceiver.class);
                } else {
                    Parcelable parcelable = bundle2.getParcelable("key.result.receiver");
                    parcelable.getClass();
                    resultReceiver = (ResultReceiver) parcelable;
                }
                if (resultReceiver == null) {
                    throw new IllegalStateException();
                }
                this.f35829i = resultReceiver;
                if (i2 >= 33) {
                    uri = (Uri) bundle2.getParcelable("key.full_authorize_uri", Uri.class);
                } else {
                    Parcelable parcelable2 = bundle2.getParcelable("key.full_authorize_uri");
                    parcelable2.getClass();
                    uri = (Uri) parcelable2;
                }
                if (uri == null) {
                    throw new IllegalStateException();
                }
                this.f35830j = uri;
            }
            this.m = new Handler(Looper.getMainLooper(), new qr(this, 0));
        } catch (Throwable th) {
            SdkLog.d.getClass();
            SdkLog.Companion.a(th);
            ClientError clientError = new ClientError(ClientErrorCause.Unknown, null, 2, 0 == true ? 1 : 0);
            clientError.initCause(th);
            w(clientError);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        KakaoCustomTabsClient$openWithDefault$connection$1 kakaoCustomTabsClient$openWithDefault$connection$1 = this.l;
        if (kakaoCustomTabsClient$openWithDefault$connection$1 != null) {
            unbindService(kakaoCustomTabsClient$openWithDefault$connection$1);
        }
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        Uri data;
        Handler handler;
        super.onNewIntent(intent);
        SdkLog.d.getClass();
        SdkLog.Companion.b("onNewIntent");
        setIntent(intent);
        Handler handler2 = this.m;
        if (Intrinsics.c(handler2 != null ? Boolean.valueOf(handler2.hasMessages(0)) : null, Boolean.TRUE) && (handler = this.m) != null) {
            handler.removeMessages(0);
        }
        this.m = null;
        if (intent != null && (data = intent.getData()) != null) {
            ResultReceiver resultReceiver = this.f35829i;
            if (resultReceiver != null) {
                Bundle bundle = new Bundle();
                bundle.putParcelable("key.url", data);
                resultReceiver.send(-1, bundle);
            }
            finish();
        }
        finish();
    }

    @Override // android.app.Activity
    public final void onRestoreInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onRestoreInstanceState(bundle);
        this.f35831k = bundle.getBoolean("key.customtabs.opened", this.f35831k);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        Handler handler;
        super.onResume();
        if (this.f35831k) {
            SdkLog.d.getClass();
            SdkLog.Companion.b("trigger delay message");
            Handler handler2 = this.m;
            if (!Intrinsics.c(handler2 != null ? Boolean.valueOf(handler2.hasMessages(0)) : null, Boolean.FALSE) || (handler = this.m) == null) {
                return;
            }
            handler.sendEmptyMessageDelayed(0, 100L);
            return;
        }
        this.f35831k = true;
        Uri uri = this.f35830j;
        if (uri == null) {
            w(new ClientError(ClientErrorCause.IllegalState, "url has been not initialized."));
            return;
        }
        SdkLog.d.getClass();
        SdkLog.Companion.b("Authorize Uri: " + uri);
        try {
            KakaoCustomTabsClient$openWithDefault$connection$1 kakaoCustomTabsClient$openWithDefault$connection$1A = KakaoCustomTabsClient.a(this, uri);
            this.l = kakaoCustomTabsClient$openWithDefault$connection$1A;
            if (kakaoCustomTabsClient$openWithDefault$connection$1A == null) {
                SdkLog.Companion.b("try to open chrome without service binding");
                v(uri);
            }
        } catch (UnsupportedOperationException e2) {
            SdkLog.d.getClass();
            SdkLog.a((SdkLog) SdkLog.f35886e.getF71699b(), e2, SdkLogLevel.W);
            v(uri);
        }
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("key.customtabs.opened", this.f35831k);
    }

    public final void v(Uri uri) {
        try {
            uri.getClass();
            CustomTabsIntent.Builder builder = new CustomTabsIntent.Builder();
            Intent intent = builder.f1379a;
            intent.putExtra("android.support.customtabs.extra.ENABLE_URLBAR_HIDING", true);
            intent.putExtra("android.support.customtabs.extra.TITLE_VISIBILITY", 1);
            CustomTabsIntent customTabsIntentA = builder.a();
            Intent intent2 = customTabsIntentA.f1377a;
            intent2.setData(uri);
            ContextCompat.startActivity(this, intent2, customTabsIntentA.f1378b);
        } catch (ActivityNotFoundException e2) {
            SdkLog.d.getClass();
            SdkLog.a((SdkLog) SdkLog.f35886e.getF71699b(), e2, SdkLogLevel.W);
            w(new ClientError(ClientErrorCause.NotSupported, "No browser has been installed on a device."));
        }
    }

    public final void w(ClientError clientError) {
        ResultReceiver resultReceiver = this.f35829i;
        if (resultReceiver != null) {
            Bundle bundle = new Bundle();
            bundle.putSerializable("key.exception", clientError);
            resultReceiver.send(0, bundle);
        }
        finish();
    }
}
