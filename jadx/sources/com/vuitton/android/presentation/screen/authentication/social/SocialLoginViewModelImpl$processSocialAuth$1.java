package com.vuitton.android.presentation.screen.authentication.social;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModelImpl$processSocialAuth$1", f = "SocialLoginViewModelImpl.kt", l = {401, 403, 406, 407, 414, 417}, m = "invokeSuspend", v = 2)
final class SocialLoginViewModelImpl$processSocialAuth$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f54065b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f54066c;
    public SocialLoginViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public MonitorAction f54067e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public TrackingAuthOrigin f54068f;
    public SocialAuthMode g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f54069h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f54070i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ SocialLoginViewModelImpl f54071j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ boolean f54072k;
    public final /* synthetic */ SocialAuthMode l;
    public final /* synthetic */ MonitorAction m;
    public final /* synthetic */ TrackingAuthOrigin n;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f54073a;

        static {
            int[] iArr = new int[SocialAuthMode.values().length];
            try {
                iArr[SocialAuthMode.GOOGLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SocialAuthMode.LINE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SocialAuthMode.KAKAO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f54073a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SocialLoginViewModelImpl$processSocialAuth$1(SocialLoginViewModelImpl socialLoginViewModelImpl, boolean z, SocialAuthMode socialAuthMode, MonitorAction monitorAction, TrackingAuthOrigin trackingAuthOrigin, Continuation continuation) {
        super(2, continuation);
        this.f54071j = socialLoginViewModelImpl;
        this.f54072k = z;
        this.l = socialAuthMode;
        this.m = monitorAction;
        this.n = trackingAuthOrigin;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SocialLoginViewModelImpl$processSocialAuth$1(this.f54071j, this.f54072k, this.l, this.m, this.n, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SocialLoginViewModelImpl$processSocialAuth$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0133  */
    /* JADX WARN: Code duplicated, block: B:41:0x0135  */
    /* JADX WARN: Code duplicated, block: B:44:0x013d A[Catch: all -> 0x0028, TryCatch #0 {all -> 0x0028, blocks: (B:7:0x0023, B:12:0x0035, B:57:0x01aa, B:59:0x01b0, B:61:0x01c4, B:63:0x01dd, B:65:0x01e3, B:68:0x01ef, B:69:0x01f2, B:72:0x01fe, B:75:0x0203, B:15:0x0048, B:52:0x018d, B:18:0x0062, B:48:0x0163, B:21:0x0071, B:42:0x0137, B:44:0x013d, B:38:0x0127), top: B:82:0x0016 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x015a  */
    /* JADX WARN: Code duplicated, block: B:47:0x015c  */
    /* JADX WARN: Code duplicated, block: B:50:0x0188  */
    /* JADX WARN: Code duplicated, block: B:51:0x018a  */
    /* JADX WARN: Code duplicated, block: B:54:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:55:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:57:0x01aa A[Catch: all -> 0x0028, PHI: r7 r10
      0x01aa: PHI (r7v17 java.lang.Object) = (r7v7 java.lang.Object), (r7v18 java.lang.Object) binds: [B:43:0x013b, B:56:0x01a8] A[DONT_GENERATE, DONT_INLINE]
      0x01aa: PHI (r10v16 com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModelImpl$SocialAuthAction) = 
      (r10v6 com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModelImpl$SocialAuthAction)
      (r10v18 com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModelImpl$SocialAuthAction)
     binds: [B:43:0x013b, B:56:0x01a8] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {all -> 0x0028, blocks: (B:7:0x0023, B:12:0x0035, B:57:0x01aa, B:59:0x01b0, B:61:0x01c4, B:63:0x01dd, B:65:0x01e3, B:68:0x01ef, B:69:0x01f2, B:72:0x01fe, B:75:0x0203, B:15:0x0048, B:52:0x018d, B:18:0x0062, B:48:0x0163, B:21:0x0071, B:42:0x0137, B:44:0x013d, B:38:0x0127), top: B:82:0x0016 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x01b0 A[Catch: all -> 0x0028, TryCatch #0 {all -> 0x0028, blocks: (B:7:0x0023, B:12:0x0035, B:57:0x01aa, B:59:0x01b0, B:61:0x01c4, B:63:0x01dd, B:65:0x01e3, B:68:0x01ef, B:69:0x01f2, B:72:0x01fe, B:75:0x0203, B:15:0x0048, B:52:0x018d, B:18:0x0062, B:48:0x0163, B:21:0x0071, B:42:0x0137, B:44:0x013d, B:38:0x0127), top: B:82:0x0016 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x01c4 A[Catch: all -> 0x0028, TryCatch #0 {all -> 0x0028, blocks: (B:7:0x0023, B:12:0x0035, B:57:0x01aa, B:59:0x01b0, B:61:0x01c4, B:63:0x01dd, B:65:0x01e3, B:68:0x01ef, B:69:0x01f2, B:72:0x01fe, B:75:0x0203, B:15:0x0048, B:52:0x018d, B:18:0x0062, B:48:0x0163, B:21:0x0071, B:42:0x0137, B:44:0x013d, B:38:0x0127), top: B:82:0x0016 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x01dd A[Catch: all -> 0x0028, TryCatch #0 {all -> 0x0028, blocks: (B:7:0x0023, B:12:0x0035, B:57:0x01aa, B:59:0x01b0, B:61:0x01c4, B:63:0x01dd, B:65:0x01e3, B:68:0x01ef, B:69:0x01f2, B:72:0x01fe, B:75:0x0203, B:15:0x0048, B:52:0x018d, B:18:0x0062, B:48:0x0163, B:21:0x0071, B:42:0x0137, B:44:0x013d, B:38:0x0127), top: B:82:0x0016 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x01f2 A[Catch: all -> 0x0028, TryCatch #0 {all -> 0x0028, blocks: (B:7:0x0023, B:12:0x0035, B:57:0x01aa, B:59:0x01b0, B:61:0x01c4, B:63:0x01dd, B:65:0x01e3, B:68:0x01ef, B:69:0x01f2, B:72:0x01fe, B:75:0x0203, B:15:0x0048, B:52:0x018d, B:18:0x0062, B:48:0x0163, B:21:0x0071, B:42:0x0137, B:44:0x013d, B:38:0x0127), top: B:82:0x0016 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:72:0x01fe A[Catch: all -> 0x0028, TryCatch #0 {all -> 0x0028, blocks: (B:7:0x0023, B:12:0x0035, B:57:0x01aa, B:59:0x01b0, B:61:0x01c4, B:63:0x01dd, B:65:0x01e3, B:68:0x01ef, B:69:0x01f2, B:72:0x01fe, B:75:0x0203, B:15:0x0048, B:52:0x018d, B:18:0x0062, B:48:0x0163, B:21:0x0071, B:42:0x0137, B:44:0x013d, B:38:0x0127), top: B:82:0x0016 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x0202  */
    /* JADX WARN: Code duplicated, block: B:75:0x0203 A[Catch: all -> 0x0028, TRY_LEAVE, TryCatch #0 {all -> 0x0028, blocks: (B:7:0x0023, B:12:0x0035, B:57:0x01aa, B:59:0x01b0, B:61:0x01c4, B:63:0x01dd, B:65:0x01e3, B:68:0x01ef, B:69:0x01f2, B:72:0x01fe, B:75:0x0203, B:15:0x0048, B:52:0x018d, B:18:0x0062, B:48:0x0163, B:21:0x0071, B:42:0x0137, B:44:0x013d, B:38:0x0127), top: B:82:0x0016 }] */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x022a, code lost:
    
        if (r2.u(r1, r41) == r5) goto L77;
     */
    /* JADX WARN: Type inference failed for: r14v6, types: [com.vuitton.android.domain.monitoring.MonitorAction, com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin, com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthMode] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r42) {
        /*
            Method dump skipped, instruction units count: 590
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModelImpl$processSocialAuth$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
