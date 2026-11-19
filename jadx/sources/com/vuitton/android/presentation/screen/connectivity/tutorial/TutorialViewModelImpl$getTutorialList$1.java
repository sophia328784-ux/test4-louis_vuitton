package com.vuitton.android.presentation.screen.connectivity.tutorial;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.tutorial.TutorialViewModelImpl$getTutorialList$1", f = "TutorialViewModelImpl.kt", l = {35, 36, 37}, m = "invokeSuspend", v = 2)
final class TutorialViewModelImpl$getTutorialList$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56669b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f56670c;
    public final /* synthetic */ TutorialType d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ TutorialViewModelImpl f56671e;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56672a;

        static {
            int[] iArr = new int[TutorialType.values().length];
            try {
                iArr[TutorialType.EARPHONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TutorialType.HORIZON_SPEAKER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TutorialType.WATCH_V3.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f56672a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TutorialViewModelImpl$getTutorialList$1(TutorialType tutorialType, TutorialViewModelImpl tutorialViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.d = tutorialType;
        this.f56671e = tutorialViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        TutorialViewModelImpl$getTutorialList$1 tutorialViewModelImpl$getTutorialList$1 = new TutorialViewModelImpl$getTutorialList$1(this.d, this.f56671e, continuation);
        tutorialViewModelImpl$getTutorialList$1.f56670c = obj;
        return tutorialViewModelImpl$getTutorialList$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TutorialViewModelImpl$getTutorialList$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0071, code lost:
    
        if (r9 == r2) goto L33;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            com.vuitton.android.presentation.screen.connectivity.tutorial.TutorialViewModelImpl r0 = r8.f56671e
            androidx.lifecycle.MutableLiveData r1 = r0.f56668e
            java.lang.Object r2 = r8.f56670c
            kotlinx.coroutines.CoroutineScope r2 = (kotlinx.coroutines.CoroutineScope) r2
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r8.f56669b
            r4 = 3
            r5 = 2
            r6 = 1
            r7 = 0
            if (r3 == 0) goto L2c
            if (r3 == r6) goto L28
            if (r3 == r5) goto L24
            if (r3 != r4) goto L1e
            kotlin.ResultKt.b(r9)     // Catch: java.lang.Throwable -> L1c
            goto L4e
        L1c:
            r8 = move-exception
            goto L79
        L1e:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            return r7
        L24:
            kotlin.ResultKt.b(r9)     // Catch: java.lang.Throwable -> L1c
            goto L64
        L28:
            kotlin.ResultKt.b(r9)     // Catch: java.lang.Throwable -> L1c
            goto L74
        L2c:
            kotlin.ResultKt.b(r9)
            com.vuitton.android.presentation.screen.connectivity.tutorial.TutorialType r9 = r8.d
            kotlin.Result$Companion r3 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L1c
            int[] r3 = com.vuitton.android.presentation.screen.connectivity.tutorial.TutorialViewModelImpl$getTutorialList$1.WhenMappings.f56672a     // Catch: java.lang.Throwable -> L1c
            int r9 = r9.ordinal()     // Catch: java.lang.Throwable -> L1c
            r9 = r3[r9]     // Catch: java.lang.Throwable -> L1c
            if (r9 == r6) goto L67
            if (r9 == r5) goto L57
            if (r9 != r4) goto L51
            com.vuitton.android.domain.usecase.connectivity.watchv3.GetWatchV3TutorialUseCase r9 = r0.f56665a     // Catch: java.lang.Throwable -> L1c
            r8.f56670c = r7     // Catch: java.lang.Throwable -> L1c
            r8.f56669b = r4     // Catch: java.lang.Throwable -> L1c
            java.lang.Object r9 = r9.a(r8)     // Catch: java.lang.Throwable -> L1c
            if (r9 != r2) goto L4e
            goto L73
        L4e:
            java.util.List r9 = (java.util.List) r9     // Catch: java.lang.Throwable -> L1c
            goto L76
        L51:
            kotlin.NoWhenBranchMatchedException r8 = new kotlin.NoWhenBranchMatchedException     // Catch: java.lang.Throwable -> L1c
            r8.<init>()     // Catch: java.lang.Throwable -> L1c
            throw r8     // Catch: java.lang.Throwable -> L1c
        L57:
            com.vuitton.android.domain.usecase.connectivity.horizon.GetHorizonSpeakerTutorialUseCase r9 = r0.f56667c     // Catch: java.lang.Throwable -> L1c
            r8.f56670c = r7     // Catch: java.lang.Throwable -> L1c
            r8.f56669b = r5     // Catch: java.lang.Throwable -> L1c
            java.lang.Object r9 = r9.a(r8)     // Catch: java.lang.Throwable -> L1c
            if (r9 != r2) goto L64
            goto L73
        L64:
            java.util.List r9 = (java.util.List) r9     // Catch: java.lang.Throwable -> L1c
            goto L76
        L67:
            com.vuitton.android.domain.usecase.connectivity.earphone.GetEarphoneTutorialUseCase r9 = r0.f56666b     // Catch: java.lang.Throwable -> L1c
            r8.f56670c = r7     // Catch: java.lang.Throwable -> L1c
            r8.f56669b = r6     // Catch: java.lang.Throwable -> L1c
            java.lang.Object r9 = r9.a(r8)     // Catch: java.lang.Throwable -> L1c
            if (r9 != r2) goto L74
        L73:
            return r2
        L74:
            java.util.List r9 = (java.util.List) r9     // Catch: java.lang.Throwable -> L1c
        L76:
            kotlin.Result$Companion r8 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L1c
            goto L80
        L79:
            kotlin.Result$Companion r9 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r9 = new kotlin.Result$Failure
            r9.<init>(r8)
        L80:
            java.lang.Throwable r8 = kotlin.Result.a(r9)
            if (r8 != 0) goto L91
            java.util.List r9 = (java.util.List) r9
            kotlin.Result r8 = new kotlin.Result
            r8.<init>(r9)
            r1.setValue(r8)
            goto L9e
        L91:
            kotlin.Result$Failure r9 = new kotlin.Result$Failure
            r9.<init>(r8)
            kotlin.Result r8 = new kotlin.Result
            r8.<init>(r9)
            r1.postValue(r8)
        L9e:
            kotlin.Unit r8 = kotlin.Unit.f71739a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.connectivity.tutorial.TutorialViewModelImpl$getTutorialList$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
