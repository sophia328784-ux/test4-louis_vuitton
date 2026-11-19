package com.vuitton.android.presentation.screen.authentication.social;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.vuitton.android.presentation.compose.components.EdgeToEdgeKt;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.utils.SecurityUtils;
import com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthMode;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.d01;
import defpackage.ll0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class SocialRegisterActivity extends Hilt_SocialRegisterActivity {
    public static final Companion s = new Companion(null);
    public final ViewModelLazy p;
    public final Lazy q = LazyKt.b(new d01(this, 0));
    public final Lazy r = LazyKt.b(new d01(this, 1));

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0014\u0010\f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u0004¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity$Companion;", "", "", "KEY_EMAIL_VALUE", "Ljava/lang/String;", "KEY_FIRSTNAME_VALUE", "KEY_LASTNAME_VALUE", "KEY_IDENTITY_TOKEN_VALUE", "KEY_RAW_NONCE_VALUE", "KEY_ORIGIN_VALUE", "KEY_ENTRY_POINT_VALUE", "KEY_PROVIDER_VALUE", "KEY_KISA_CONSENTS", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Intent a(Context context, String str, String str2, String str3, String str4, String str5, TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint, SocialAuthMode socialAuthMode, String str6) {
            context.getClass();
            Intent intentPutExtra = new Intent(context, (Class<?>) SocialRegisterActivity.class).putExtra("KEY_EMAIL_VALUE", str).putExtra("KEY_FIRSTNAME_VALUE", str2).putExtra("KEY_LASTNAME_VALUE", str3).putExtra("KEY_IDENTITY_TOKEN_VALUE", str4).putExtra("KEY_RAW_NONCE_VALUE", str5).putExtra("KEY_ORIGIN_VALUE", trackingAuthOrigin).putExtra("KEY_ENTRY_POINT_VALUE", trackingAuthEntryPoint).putExtra("KEY_PROVIDER_VALUE", socialAuthMode).putExtra("KEY_KISA_CONSENTS", str6);
            intentPutExtra.getClass();
            return intentPutExtra;
        }
    }

    public SocialRegisterActivity() {
        final Function0 function0 = null;
        this.p = new ViewModelLazy(Reflection.f71922a.b(SocialRegisterViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.authentication.social.SocialRegisterActivity$special$$inlined$viewModels$default$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.authentication.social.SocialRegisterActivity$special$$inlined$viewModels$default$1
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.authentication.social.SocialRegisterActivity$special$$inlined$viewModels$default$3
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                return (function1 == null || (creationExtras = (CreationExtras) function1.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
    }

    public static TrackingAuthOrigin H(SocialRegisterActivity socialRegisterActivity) {
        Object serializableExtra;
        Intent intent = socialRegisterActivity.getIntent();
        if (intent == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            serializableExtra = intent.getSerializableExtra("KEY_ORIGIN_VALUE", TrackingAuthOrigin.class);
        } else {
            Object serializableExtra2 = intent.getSerializableExtra("KEY_ORIGIN_VALUE");
            serializableExtra = (TrackingAuthOrigin) (serializableExtra2 instanceof TrackingAuthOrigin ? serializableExtra2 : null);
        }
        return (TrackingAuthOrigin) serializableExtra;
    }

    public static TrackingAuthEntryPoint I(SocialRegisterActivity socialRegisterActivity) {
        Object serializableExtra;
        Intent intent = socialRegisterActivity.getIntent();
        if (intent == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            serializableExtra = intent.getSerializableExtra("KEY_PROVIDER_VALUE", TrackingAuthEntryPoint.class);
        } else {
            Object serializableExtra2 = intent.getSerializableExtra("KEY_PROVIDER_VALUE");
            serializableExtra = (TrackingAuthEntryPoint) (serializableExtra2 instanceof TrackingAuthEntryPoint ? serializableExtra2 : null);
        }
        return (TrackingAuthEntryPoint) serializableExtra;
    }

    public final SocialRegisterViewModelImpl J() {
        return (SocialRegisterViewModelImpl) this.p.getF71699b();
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        EdgeToEdgeKt.b(this, false, false, 3);
        ComponentActivityKt.a(this, new ComposableLambdaImpl(-511683610, true, new ll0(this, 20)));
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        SecurityUtils.a(this);
        super.onDestroy();
    }
}
