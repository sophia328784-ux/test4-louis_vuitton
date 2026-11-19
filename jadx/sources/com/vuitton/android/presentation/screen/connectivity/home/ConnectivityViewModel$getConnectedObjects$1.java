package com.vuitton.android.presentation.screen.connectivity.home;

import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel$getConnectedObjects$1", f = "ConnectivityViewModel.kt", l = {121, CertificateBody.profileType}, m = "invokeSuspend", v = 2)
final class ConnectivityViewModel$getConnectedObjects$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56080b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ConnectivityViewModel f56081c;
    public final /* synthetic */ boolean d;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56082a;

        static {
            int[] iArr = new int[LoginState.values().length];
            try {
                iArr[LoginState.LOGGED_IN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LoginState.LOGGED_OUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f56082a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectivityViewModel$getConnectedObjects$1(ConnectivityViewModel connectivityViewModel, boolean z, Continuation continuation) {
        super(2, continuation);
        this.f56081c = connectivityViewModel;
        this.d = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ConnectivityViewModel$getConnectedObjects$1(this.f56081c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ConnectivityViewModel$getConnectedObjects$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0056, code lost:
    
        if (r7 == r0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006f, code lost:
    
        if (r7 == r0) goto L21;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r6.f56080b
            r2 = 0
            r3 = 2
            com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel r4 = r6.f56081c
            r5 = 1
            if (r1 == 0) goto L1d
            if (r1 == r5) goto L19
            if (r1 != r3) goto L13
            kotlin.ResultKt.b(r7)
            goto L59
        L13:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            return r2
        L19:
            kotlin.ResultKt.b(r7)
            goto L72
        L1d:
            kotlin.ResultKt.b(r7)
            com.vuitton.android.domain.service.authentication.UserSessionService r7 = r4.f56074e
            kotlinx.coroutines.flow.StateFlow r7 = r7.g
            java.lang.Object r7 = r7.getValue()
            com.vuitton.foundation.model.domain.model.authentication.LoginState r7 = (com.vuitton.foundation.model.domain.model.authentication.LoginState) r7
            int[] r1 = com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel$getConnectedObjects$1.WhenMappings.f56082a
            int r7 = r7.ordinal()
            r7 = r1[r7]
            if (r7 == r5) goto L60
            if (r7 != r3) goto L5c
            com.vuitton.android.domain.usecase.connectivity.lightup.GetLightUpObjectsUseCase r7 = r4.f56073c
            r6.f56080b = r3
            com.vuitton.android.domain.repository.LightUpRepository r1 = r7.f49798a
            com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase r7 = r7.f49799b
            com.vuitton.foundation.model.domain.model.sync.Feature r2 = com.vuitton.foundation.model.domain.model.sync.Feature.KEEP_ALL
            com.vuitton.foundation.model.domain.model.sync.Feature[] r2 = new com.vuitton.foundation.model.domain.model.sync.Feature[]{r2}
            boolean r2 = r7.b(r2)
            com.vuitton.foundation.model.domain.model.sync.Feature r3 = com.vuitton.foundation.model.domain.model.sync.Feature.SNEAKERS
            com.vuitton.foundation.model.domain.model.sync.Feature[] r3 = new com.vuitton.foundation.model.domain.model.sync.Feature[]{r3}
            boolean r7 = r7.b(r3)
            java.io.Serializable r7 = r1.i(r2, r7, r6)
            if (r7 != r0) goto L59
            goto L71
        L59:
            java.util.List r7 = (java.util.List) r7
            goto L74
        L5c:
            defpackage.v40.g()
            return r2
        L60:
            com.vuitton.android.domain.usecase.connectivity.GetConnectedObjectListUseCase r7 = r4.f56075f
            com.vuitton.android.domain.usecase.connectivity.GetConnectedObjectListUseCase$Params r1 = new com.vuitton.android.domain.usecase.connectivity.GetConnectedObjectListUseCase$Params
            boolean r2 = r6.d
            r1.<init>(r5, r2)
            r6.f56080b = r5
            java.io.Serializable r7 = r7.a(r1, r6)
            if (r7 != r0) goto L72
        L71:
            return r0
        L72:
            java.util.List r7 = (java.util.List) r7
        L74:
            java.lang.Iterable r7 = (java.lang.Iterable) r7
            java.util.ArrayList r6 = new java.util.ArrayList
            r0 = 10
            int r0 = kotlin.collections.CollectionsKt.t(r7, r0)
            r6.<init>(r0)
            java.util.Iterator r7 = r7.iterator()
        L85:
            boolean r0 = r7.hasNext()
            if (r0 == 0) goto L99
            java.lang.Object r0 = r7.next()
            com.vuitton.foundation.model.domain.model.connectivity.ConnectedObject r0 = (com.vuitton.foundation.model.domain.model.connectivity.ConnectedObject) r0
            com.vuitton.android.presentation.screen.connectivity.ConnectedObjectUiModel r0 = com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModelKt.a(r0)
            r6.add(r0)
            goto L85
        L99:
            com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel.Cc(r4, r6)
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel$getConnectedObjects$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
