package com.vuitton.android.presentation.screen.account.myinformation;

import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl$loadDynamicProfileForm$3", f = "MyInformationViewModelImpl.kt", l = {210, 212}, m = "invokeSuspend", v = 2)
public final class MyInformationViewModelImpl$loadDynamicProfileForm$3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52554b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MyInformationViewModelImpl f52555c;
    public final /* synthetic */ Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f52556e;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f52559a;

        static {
            int[] iArr = new int[FormSectionTypeUiModel.values().length];
            try {
                iArr[FormSectionTypeUiModel.PHONE_NUMBER1.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FormSectionTypeUiModel.PHONE_BLOC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FormSectionTypeUiModel.CIVILITY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FormSectionTypeUiModel.FIRSTNAME1.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[FormSectionTypeUiModel.LASTNAME1.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[FormSectionTypeUiModel.FIRSTNAME2.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[FormSectionTypeUiModel.LASTNAME2.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[FormSectionTypeUiModel.BRANCH_ID.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[FormSectionTypeUiModel.VAT_CODE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            f52559a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyInformationViewModelImpl$loadDynamicProfileForm$3(MyInformationViewModelImpl myInformationViewModelImpl, Function1 function1, Function1 function2, Continuation continuation) {
        super(2, continuation);
        this.f52555c = myInformationViewModelImpl;
        this.d = function1;
        this.f52556e = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MyInformationViewModelImpl$loadDynamicProfileForm$3(this.f52555c, this.d, this.f52556e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MyInformationViewModelImpl$loadDynamicProfileForm$3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0084  */
    /* JADX WARN: Code duplicated, block: B:23:0x008b  */
    /* JADX WARN: Code duplicated, block: B:24:0x008f  */
    /* JADX WARN: Code duplicated, block: B:28:0x0099  */
    /* JADX WARN: Code duplicated, block: B:30:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:31:0x00b4  */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0074, code lost:
    
        if (r0 == r14) goto L17;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r17) {
        /*
            r16 = this;
            r10 = r16
            com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl r12 = r10.f52555c
            kotlinx.coroutines.flow.MutableStateFlow r13 = r12.x
            kotlin.coroutines.intrinsics.CoroutineSingletons r14 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r0 = r10.f52554b
            r1 = 2
            r2 = 1
            r15 = 0
            if (r0 == 0) goto L2d
            if (r0 == r2) goto L23
            if (r0 != r1) goto L1d
            kotlin.ResultKt.b(r17)
            r0 = r17
            kotlin.Result r0 = (kotlin.Result) r0
            java.lang.Object r0 = r0.f71708b
            goto L7c
        L1d:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r0)
            return r15
        L23:
            kotlin.ResultKt.b(r17)
            r0 = r17
            kotlin.Result r0 = (kotlin.Result) r0
            java.lang.Object r0 = r0.f71708b
            goto L3e
        L2d:
            kotlin.ResultKt.b(r17)
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            r13.setValue(r0)
            r10.f52554b = r2
            java.lang.Object r0 = com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl.yc(r12, r10)
            if (r0 != r14) goto L3e
            goto L76
        L3e:
            java.lang.Throwable r2 = kotlin.Result.a(r0)
            if (r2 != 0) goto L77
            kotlin.ResultKt.b(r0)
            com.vuitton.foundation.model.domain.model.profile.Profile r0 = (com.vuitton.foundation.model.domain.model.profile.Profile) r0
            com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisor r0 = r12.f52531f
            com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl$loadDynamicProfileForm$3$1$1 r2 = new com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl$loadDynamicProfileForm$3$1$1
            r2.<init>(r12, r15)
            wd0 r3 = new wd0
            r4 = 0
            kotlin.jvm.functions.Function1 r5 = r10.f52556e
            r3.<init>(r5, r12, r4)
            vd0 r6 = new vd0
            r4 = 3
            r6.<init>(r12, r4)
            ba0 r9 = new ba0
            r4 = 28
            r9.<init>(r4)
            r10.f52554b = r1
            r1 = r2
            kotlin.jvm.functions.Function1 r2 = r10.d
            r4 = 0
            r5 = 0
            r7 = 0
            r8 = 0
            r11 = 216(0xd8, float:3.03E-43)
            java.lang.Object r0 = com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisor.e(r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            if (r0 != r14) goto L7c
        L76:
            return r14
        L77:
            kotlin.Result$Failure r0 = new kotlin.Result$Failure
            r0.<init>(r2)
        L7c:
            kotlin.Result$Companion r1 = kotlin.Result.INSTANCE
            boolean r1 = r0 instanceof kotlin.Result.Failure
            java.lang.String r2 = "openMyInformationMonitor"
            if (r1 != 0) goto L93
            r1 = r0
            kotlin.Unit r1 = (kotlin.Unit) r1
            com.vuitton.android.domain.monitoring.MonitorAction r1 = r12.H
            if (r1 == 0) goto L8f
            r1.b()
            goto L93
        L8f:
            kotlin.jvm.internal.Intrinsics.h(r2)
            throw r15
        L93:
            java.lang.Throwable r0 = kotlin.Result.a(r0)
            if (r0 == 0) goto Lb8
            com.vuitton.foundation.logger.Logger r1 = r12.f52527a
            java.lang.String r3 = "MyInformationViewModelImpl"
            java.lang.String r4 = r0.getMessage()
            r1.c(r3, r4, r15)
            com.vuitton.android.domain.monitoring.MonitorAction r1 = r12.H
            if (r1 == 0) goto Lb4
            com.vuitton.android.domain.monitoring.mylv.MyInformationMonitoring$Error$OpenMyInformationError r2 = new com.vuitton.android.domain.monitoring.mylv.MyInformationMonitoring$Error$OpenMyInformationError
            r2.<init>(r0)
            r1.d(r2)
            r1.b()
            goto Lb8
        Lb4:
            kotlin.jvm.internal.Intrinsics.h(r2)
            throw r15
        Lb8:
            java.lang.Boolean r0 = java.lang.Boolean.FALSE
            r13.setValue(r0)
            kotlin.Unit r0 = kotlin.Unit.f71739a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl$loadDynamicProfileForm$3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
