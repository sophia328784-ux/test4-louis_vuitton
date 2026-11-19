package com.vuitton.android.presentation.screen.connectivity.watch.settings;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsViewModel$renameWatch$1", f = "WatchSettingsViewModel.kt", l = {EACTags.SEX, EACTags.CURRENCY_EXPONENT, 55}, m = "invokeSuspend", v = 2)
final class WatchSettingsViewModel$renameWatch$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f56773b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f56774c;
    public final /* synthetic */ WatchSettingsViewModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f56775e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f56776f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WatchSettingsViewModel$renameWatch$1(WatchSettingsViewModel watchSettingsViewModel, String str, String str2, Continuation continuation) {
        super(2, continuation);
        this.d = watchSettingsViewModel;
        this.f56775e = str;
        this.f56776f = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WatchSettingsViewModel$renameWatch$1(this.d, this.f56775e, this.f56776f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WatchSettingsViewModel$renameWatch$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0064  */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0075, code lost:
    
        if (r5.zc(r8, r3) == r0) goto L25;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r8.f56774c
            r2 = 3
            r3 = 2
            r4 = 1
            com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsViewModel r5 = r8.d
            if (r1 == 0) goto L2b
            if (r1 == r4) goto L22
            if (r1 == r3) goto L1c
            if (r1 != r2) goto L15
            kotlin.ResultKt.b(r9)
            goto L78
        L15:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            r8 = 0
            return r8
        L1c:
            java.lang.Object r1 = r8.f56773b
            kotlin.ResultKt.b(r9)
            goto L5e
        L22:
            kotlin.ResultKt.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r9 = r9.f71708b
        L29:
            r1 = r9
            goto L42
        L2b:
            kotlin.ResultKt.b(r9)
            com.vuitton.android.domain.usecase.connectivity.watch.RenameWatchUseCase r9 = r5.d
            com.vuitton.foundation.model.domain.model.connectivity.watch.RenameWatchParam r1 = new com.vuitton.foundation.model.domain.model.connectivity.watch.RenameWatchParam
            java.lang.String r6 = r8.f56775e
            java.lang.String r7 = r8.f56776f
            r1.<init>(r6, r7)
            r8.f56774c = r4
            java.lang.Object r9 = r9.a(r1, r8)
            if (r9 != r0) goto L29
            goto L77
        L42:
            kotlin.Result$Companion r9 = kotlin.Result.INSTANCE
            boolean r9 = r1 instanceof kotlin.Result.Failure
            if (r9 != 0) goto L5e
            r9 = r1
            kotlin.Unit r9 = (kotlin.Unit) r9
            o51 r9 = new o51
            r4 = 5
            r9.<init>(r4)
            r8.f56773b = r1
            r8.f56774c = r3
            int r3 = com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsViewModel.l
            java.lang.Object r9 = r5.zc(r8, r9)
            if (r9 != r0) goto L5e
            goto L77
        L5e:
            java.lang.Throwable r9 = kotlin.Result.a(r1)
            if (r9 == 0) goto L78
            p11 r3 = new p11
            r4 = 16
            r3.<init>(r9, r4)
            r8.f56773b = r1
            r8.f56774c = r2
            int r9 = com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsViewModel.l
            java.lang.Object r8 = r5.zc(r8, r3)
            if (r8 != r0) goto L78
        L77:
            return r0
        L78:
            kotlin.Unit r8 = kotlin.Unit.f71739a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsViewModel$renameWatch$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
