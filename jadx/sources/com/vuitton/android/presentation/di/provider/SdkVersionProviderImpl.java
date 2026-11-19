package com.vuitton.android.presentation.di.provider;

import android.os.Build;
import com.vuitton.android.domain.provider.sdk.SdkVersionProvider;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/di/provider/SdkVersionProviderImpl;", "Lcom/vuitton/android/domain/provider/sdk/SdkVersionProvider;", "<init>", "()V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SdkVersionProviderImpl implements SdkVersionProvider {
    @Inject
    public SdkVersionProviderImpl() {
    }

    @Override // com.vuitton.android.domain.provider.sdk.SdkVersionProvider
    public final boolean a() {
        return Build.VERSION.SDK_INT >= 33;
    }
}
