package com.vuitton.android.data.net.atg;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.net.atg.ATGSessionManagerImpl", f = "ATGSessionManagerImpl.kt", l = {56, EACTags.ADDRESS}, m = "withATGSession", v = 2)
final class ATGSessionManagerImpl$withATGSession$1<T> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f47008b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f47009c;
    public final /* synthetic */ ATGSessionManagerImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47010e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ATGSessionManagerImpl$withATGSession$1(ATGSessionManagerImpl aTGSessionManagerImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = aTGSessionManagerImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47009c = obj;
        this.f47010e |= Integer.MIN_VALUE;
        return this.d.b(null, this);
    }
}
