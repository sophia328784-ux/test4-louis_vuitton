package com.dynatrace.agent.storage.preference;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.storage.preference.EndPointInfoDataSourceImpl", f = "EndPointInfoDataSourceImpl.kt", l = {EACTags.APPLICATION_IMAGE}, m = "clearPreferences")
final class EndPointInfoDataSourceImpl$clearPreferences$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f26949b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ EndPointInfoDataSourceImpl f26950c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EndPointInfoDataSourceImpl$clearPreferences$1(EndPointInfoDataSourceImpl endPointInfoDataSourceImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f26950c = endPointInfoDataSourceImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f26949b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f26950c.c(this);
    }
}
