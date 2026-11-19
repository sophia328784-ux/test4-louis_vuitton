package com.vuitton.android.presentation.screen.certificates;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.presentation.screen.certificates.model.CertificateFeatureFlags;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.certificates.CertificateViewModelImpl$getCertificatesList$1", f = "CertificateViewModelImpl.kt", l = {94, 101, 103}, m = "invokeSuspend", v = 2)
final class CertificateViewModelImpl$getCertificatesList$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CertificateFeatureFlags f55623b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Deferred f55624c;
    public Deferred d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public MutableStateFlow f55625e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f55626f;
    public List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public CertificateFeatureFlags f55627h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f55628i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f55629j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f55630k;
    public /* synthetic */ Object l;
    public final /* synthetic */ CertificateViewModelImpl m;
    public final /* synthetic */ MonitorAction n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CertificateViewModelImpl$getCertificatesList$1(CertificateViewModelImpl certificateViewModelImpl, MonitorAction monitorAction, Continuation continuation) {
        super(2, continuation);
        this.m = certificateViewModelImpl;
        this.n = monitorAction;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        CertificateViewModelImpl$getCertificatesList$1 certificateViewModelImpl$getCertificatesList$1 = new CertificateViewModelImpl$getCertificatesList$1(this.m, this.n, continuation);
        certificateViewModelImpl$getCertificatesList$1.l = obj;
        return certificateViewModelImpl$getCertificatesList$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CertificateViewModelImpl$getCertificatesList$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:27:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:31:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:34:0x0103 A[Catch: Exception -> 0x003e, TRY_LEAVE, TryCatch #0 {Exception -> 0x003e, blocks: (B:8:0x002f, B:32:0x00ec, B:34:0x0103, B:24:0x008f, B:28:0x00c1, B:16:0x0055, B:23:0x007b), top: B:43:0x0015 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x0107  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v4, types: [com.vuitton.android.presentation.screen.certificates.model.CertificateFeatureFlags, java.lang.Object, java.util.List] */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00e3 -> B:10:0x003b). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r25) {
        /*
            Method dump skipped, instruction units count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.certificates.CertificateViewModelImpl$getCertificatesList$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
