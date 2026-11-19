package com.vuitton.android.data.datasource.profile;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.profile.ProfileLocalDataSource", f = "ProfileLocalDataSource.kt", l = {EACTags.HISTORICAL_BYTES}, m = "clearProfile-IoAF18A", v = 2)
final class ProfileLocalDataSource$clearProfile$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f44241b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ProfileLocalDataSource f44242c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProfileLocalDataSource$clearProfile$1(ProfileLocalDataSource profileLocalDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f44242c = profileLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f44241b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f44242c.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
