package com.vuitton.android.data.datasource.config;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.config.AppLinkLocalDataSource", f = "AppLinkLocalDataSource.kt", l = {EACTags.SEX}, m = "clearAppLinksExclusion-IoAF18A", v = 2)
final class AppLinkLocalDataSource$clearAppLinksExclusion$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43995b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AppLinkLocalDataSource f43996c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppLinkLocalDataSource$clearAppLinksExclusion$1(AppLinkLocalDataSource appLinkLocalDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43996c = appLinkLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f43995b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f43996c.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
