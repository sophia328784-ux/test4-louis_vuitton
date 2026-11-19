package com.vuitton.android.presentation.screen.authentication.social;

import androidx.activity.ComponentActivity;
import androidx.appcompat.app.AppCompatActivity;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthMode;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface SocialLoginViewModel {
    Flow Q6();

    StateFlow a();

    Flow b();

    void b2(ComponentActivity componentActivity, boolean z, TrackingAuthOrigin trackingAuthOrigin);

    void ec(AppCompatActivity appCompatActivity, boolean z, TrackingAuthOrigin trackingAuthOrigin);

    Flow g0();

    Flow g6();

    void g7(AppCompatActivity appCompatActivity);

    Flow k();

    void q2(AppCompatActivity appCompatActivity, boolean z, TrackingAuthOrigin trackingAuthOrigin);

    void rb(boolean z, TrackingAuthOrigin trackingAuthOrigin, SocialAuthMode socialAuthMode);

    void z8();
}
