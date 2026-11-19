package com.vuitton.android.presentation.redirectlink;

import android.net.Uri;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.redirectlink.DeepLinkHandler$dispatchLvDeepLinks$2", f = "DeepLinkHandler.kt", l = {111, 115, 116, 117, 118, 119, 120, 121}, m = "invokeSuspend", v = 2)
final class DeepLinkHandler$dispatchLvDeepLinks$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f51930b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f51931c;
    public final /* synthetic */ DeepLinkHandler d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Uri f51932e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f51933f;
    public final /* synthetic */ String g;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.redirectlink.DeepLinkHandler$dispatchLvDeepLinks$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.redirectlink.DeepLinkHandler$dispatchLvDeepLinks$2$1", f = "DeepLinkHandler.kt", l = {104}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f51934b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ DeepLinkHandler f51935c;
        public final /* synthetic */ Uri d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(DeepLinkHandler deepLinkHandler, Uri uri, Continuation continuation) {
            super(2, continuation);
            this.f51935c = deepLinkHandler;
            this.d = uri;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f51935c, this.d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objA;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f51934b;
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f51934b = 1;
                DeepLinkHandler deepLinkHandler = this.f51935c;
                deepLinkHandler.getClass();
                Uri uri = this.d;
                if (uri.getQueryParameterNames().isEmpty() || (objA = deepLinkHandler.a(uri, this)) != coroutineSingletons) {
                    objA = Unit.f71739a;
                }
                if (objA == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeepLinkHandler$dispatchLvDeepLinks$2(DeepLinkHandler deepLinkHandler, Uri uri, boolean z, String str, Continuation continuation) {
        super(2, continuation);
        this.d = deepLinkHandler;
        this.f51932e = uri;
        this.f51933f = z;
        this.g = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        DeepLinkHandler$dispatchLvDeepLinks$2 deepLinkHandler$dispatchLvDeepLinks$2 = new DeepLinkHandler$dispatchLvDeepLinks$2(this.d, this.f51932e, this.f51933f, this.g, continuation);
        deepLinkHandler$dispatchLvDeepLinks$2.f51931c = obj;
        return deepLinkHandler$dispatchLvDeepLinks$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DeepLinkHandler$dispatchLvDeepLinks$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:258:0x05a6  */
    /* JADX WARN: Code duplicated, block: B:261:0x05ac  */
    /* JADX WARN: Code duplicated, block: B:262:0x05bb  */
    /* JADX WARN: Code duplicated, block: B:264:0x05c3  */
    /* JADX WARN: Code duplicated, block: B:267:0x05fe  */
    /* JADX WARN: Code duplicated, block: B:271:0x062b  */
    /* JADX WARN: Code duplicated, block: B:278:0x060c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:280:0x05f8 A[SYNTHETIC] */
    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r5v22 java.lang.Object, still in use, count: 2, list:
          (r5v22 java.lang.Object) from 0x05a2: PHI (r5 I:??) = (r5v17 java.lang.Object), (r5v22 java.lang.Object) binds: [B:255:0x05a1, B:275:0x05a2] A[DONT_GENERATE, DONT_INLINE]
          (r5v22 java.lang.Object) from 0x0594: CHECK_CAST (com.vuitton.android.presentation.redirectlink.PaymentCheckoutProvider) (r5v22 java.lang.Object)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:132)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:67)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:50)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:96)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:36)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:44)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            Method dump skipped, instruction units count: 1618
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.redirectlink.DeepLinkHandler$dispatchLvDeepLinks$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
