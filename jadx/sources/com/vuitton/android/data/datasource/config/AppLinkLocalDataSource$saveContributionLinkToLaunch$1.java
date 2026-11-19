package com.vuitton.android.data.datasource.config;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.config.AppLinkLocalDataSource", f = "AppLinkLocalDataSource.kt", l = {EACTags.ELEMENT_LIST}, m = "saveContributionLinkToLaunch-gIAlu-s", v = 2)
final class AppLinkLocalDataSource$saveContributionLinkToLaunch$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f44007b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AppLinkLocalDataSource f44008c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppLinkLocalDataSource$saveContributionLinkToLaunch$1(AppLinkLocalDataSource appLinkLocalDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f44008c = appLinkLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f44007b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objE = this.f44008c.e(null, this);
        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : new Result(objE);
    }
}
