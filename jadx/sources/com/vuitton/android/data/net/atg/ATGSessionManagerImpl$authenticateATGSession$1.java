package com.vuitton.android.data.net.atg;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.net.atg.ATGSessionManagerImpl", f = "ATGSessionManagerImpl.kt", l = {184, 188}, m = "authenticateATGSession", v = 2)
final class ATGSessionManagerImpl$authenticateATGSession$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47002b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ATGSessionManagerImpl f47003c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ATGSessionManagerImpl$authenticateATGSession$1(ATGSessionManagerImpl aTGSessionManagerImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47003c = aTGSessionManagerImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47002b = obj;
        this.d |= Integer.MIN_VALUE;
        int i2 = ATGSessionManagerImpl.f46997f;
        return this.f47003c.c(this);
    }
}
