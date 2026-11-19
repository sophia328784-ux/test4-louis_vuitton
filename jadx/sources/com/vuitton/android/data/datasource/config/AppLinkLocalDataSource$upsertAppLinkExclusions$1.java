package com.vuitton.android.data.datasource.config;

import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.config.AppLinkLocalDataSource", f = "AppLinkLocalDataSource.kt", l = {EACTags.CURRENCY_CODE, EACTags.DATE_OF_BIRTH}, m = "upsertAppLinkExclusions-gIAlu-s", v = 2)
final class AppLinkLocalDataSource$upsertAppLinkExclusions$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List f44011b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f44012c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f44013e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f44014f;
    public final /* synthetic */ AppLinkLocalDataSource g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f44015h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppLinkLocalDataSource$upsertAppLinkExclusions$1(AppLinkLocalDataSource appLinkLocalDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = appLinkLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f44014f = obj;
        this.f44015h |= Integer.MIN_VALUE;
        Object objF = this.g.f(null, this);
        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : new Result(objF);
    }
}
