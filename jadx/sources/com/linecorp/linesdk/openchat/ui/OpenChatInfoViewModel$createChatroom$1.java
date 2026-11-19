package com.linecorp.linesdk.openchat.ui;

import com.linecorp.linesdk.LineApiResponse;
import com.linecorp.linesdk.openchat.OpenChatParameters;
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

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 7, 1}, xi = 48)
@DebugMetadata(c = "com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel$createChatroom$1", f = "OpenChatInfoViewModel.kt", l = {78}, m = "invokeSuspend")
final class OpenChatInfoViewModel$createChatroom$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f36287b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OpenChatInfoViewModel f36288c;
    public final /* synthetic */ OpenChatParameters d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OpenChatInfoViewModel$createChatroom$1(OpenChatInfoViewModel openChatInfoViewModel, OpenChatParameters openChatParameters, Continuation continuation) {
        super(2, continuation);
        this.f36288c = openChatInfoViewModel;
        this.d = openChatParameters;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OpenChatInfoViewModel$createChatroom$1(this.f36288c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OpenChatInfoViewModel$createChatroom$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f36287b;
        OpenChatInfoViewModel openChatInfoViewModel = this.f36288c;
        if (i2 == 0) {
            ResultKt.b(obj);
            openChatInfoViewModel.f36276j.setValue(Boolean.TRUE);
            this.f36287b = 1;
            obj = OpenChatInfoViewModel.zc(openChatInfoViewModel, this.d, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        LineApiResponse lineApiResponse = (LineApiResponse) obj;
        if (lineApiResponse.d()) {
            openChatInfoViewModel.f36274h.setValue(lineApiResponse.c());
        } else {
            openChatInfoViewModel.f36275i.setValue(lineApiResponse);
        }
        openChatInfoViewModel.f36276j.setValue(Boolean.FALSE);
        return Unit.f71739a;
    }
}
