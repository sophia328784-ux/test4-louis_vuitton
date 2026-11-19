package com.google.firebase.sessions;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.google.firebase.sessions.InstallationId$Companion", f = "InstallationId.kt", l = {31, 39}, m = "create")
final class InstallationId$Companion$create$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f35444b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f35445c;
    public final /* synthetic */ InstallationId.Companion d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f35446e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InstallationId$Companion$create$1(InstallationId.Companion companion, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = companion;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f35445c = obj;
        this.f35446e |= Integer.MIN_VALUE;
        return this.d.a(null, this);
    }
}
