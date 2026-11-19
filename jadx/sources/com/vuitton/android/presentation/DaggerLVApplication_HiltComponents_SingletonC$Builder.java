package com.vuitton.android.presentation;

import com.vuitton.android.core.schedulers.CoroutineDispatchersModule;
import com.vuitton.android.data.audioplayer.di.ControllerDiModule;
import com.vuitton.android.data.di.ApiDiModule;
import com.vuitton.android.data.di.auth.AuthenticationDiModule;
import com.vuitton.android.data.net.serialization.di.SerializationModule;
import dagger.hilt.android.internal.modules.ApplicationContextModule;

/* JADX INFO: loaded from: classes3.dex */
public final class DaggerLVApplication_HiltComponents_SingletonC$Builder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ApiDiModule f50480a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ApplicationContextModule f50481b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AuthenticationDiModule f50482c;
    public ControllerDiModule d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CoroutineDispatchersModule f50483e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public SerializationModule f50484f;
}
