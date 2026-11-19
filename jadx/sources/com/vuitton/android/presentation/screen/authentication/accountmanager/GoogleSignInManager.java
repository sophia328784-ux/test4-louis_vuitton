package com.vuitton.android.presentation.screen.authentication.accountmanager;

import android.content.Context;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManager;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface GoogleSignInManager {
    Object a(Context context, TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint, ContinuationImpl continuationImpl);
}
