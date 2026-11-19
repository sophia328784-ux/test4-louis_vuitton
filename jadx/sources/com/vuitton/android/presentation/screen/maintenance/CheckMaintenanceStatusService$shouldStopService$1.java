package com.vuitton.android.presentation.screen.maintenance;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.maintenance.CheckMaintenanceStatusService", f = "CheckMaintenanceStatusService.kt", l = {CertificateBody.profileType}, m = "shouldStopService", v = 2)
final class CheckMaintenanceStatusService$shouldStopService$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f59199b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CheckMaintenanceStatusService f59200c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CheckMaintenanceStatusService$shouldStopService$1(CheckMaintenanceStatusService checkMaintenanceStatusService, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f59200c = checkMaintenanceStatusService;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f59199b = obj;
        this.d |= Integer.MIN_VALUE;
        return CheckMaintenanceStatusService.e(this.f59200c, this);
    }
}
