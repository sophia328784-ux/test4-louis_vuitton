package com.vuitton.android.data.datasource.profile;

import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.profile.ProfileLocalDataSource", f = "ProfileLocalDataSource.kt", l = {76, EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID}, m = "updateAddressList-gIAlu-s", v = 2)
final class ProfileLocalDataSource$updateAddressList$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List f44262b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f44263c;
    public final /* synthetic */ ProfileLocalDataSource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f44264e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProfileLocalDataSource$updateAddressList$1(ProfileLocalDataSource profileLocalDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = profileLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f44263c = obj;
        this.f44264e |= Integer.MIN_VALUE;
        Object objD = this.d.d(null, this);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : new Result(objD);
    }
}
