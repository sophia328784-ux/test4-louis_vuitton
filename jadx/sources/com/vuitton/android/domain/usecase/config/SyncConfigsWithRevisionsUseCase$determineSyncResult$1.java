package com.vuitton.android.domain.usecase.config;

import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.config.version.ConfigsVersion;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.config.SyncConfigsWithRevisionsUseCase", f = "SyncConfigsWithRevisionsUseCase.kt", l = {EACTags.MESSAGE_REFERENCE, EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID, 88, 89}, m = "determineSyncResult", v = 2)
final class SyncConfigsWithRevisionsUseCase$determineSyncResult$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ConfigsVersion f49727b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AppConfig f49728c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49729e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f49730f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ SyncConfigsWithRevisionsUseCase f49731h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f49732i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SyncConfigsWithRevisionsUseCase$determineSyncResult$1(SyncConfigsWithRevisionsUseCase syncConfigsWithRevisionsUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49731h = syncConfigsWithRevisionsUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.f49732i |= Integer.MIN_VALUE;
        int i2 = SyncConfigsWithRevisionsUseCase.f49717i;
        return this.f49731h.a(null, this);
    }
}
