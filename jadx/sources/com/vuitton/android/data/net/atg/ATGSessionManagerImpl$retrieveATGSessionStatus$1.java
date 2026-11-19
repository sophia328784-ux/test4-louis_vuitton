package com.vuitton.android.data.net.atg;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.net.atg.ATGSessionManagerImpl", f = "ATGSessionManagerImpl.kt", l = {140, 141, 154, 155}, m = "retrieveATGSessionStatus", v = 2)
final class ATGSessionManagerImpl$retrieveATGSessionStatus$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f47004b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SessionCookieState f47005c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f47006e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ATGSessionManagerImpl f47007f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ATGSessionManagerImpl$retrieveATGSessionStatus$1(ATGSessionManagerImpl aTGSessionManagerImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47007f = aTGSessionManagerImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47006e = obj;
        this.g |= Integer.MIN_VALUE;
        int i2 = ATGSessionManagerImpl.f46997f;
        return this.f47007f.d(false, this);
    }
}
