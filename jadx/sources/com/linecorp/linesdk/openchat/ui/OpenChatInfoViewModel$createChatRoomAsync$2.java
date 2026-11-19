package com.linecorp.linesdk.openchat.ui;

import com.linecorp.linesdk.LineApiResponse;
import com.linecorp.linesdk.openchat.OpenChatParameters;
import com.linecorp.linesdk.openchat.OpenChatRoomInfo;
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
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u00020\u0001*\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "Lcom/linecorp/linesdk/LineApiResponse;", "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;", "kotlin.jvm.PlatformType", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 7, 1}, xi = 48)
@DebugMetadata(c = "com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel$createChatRoomAsync$2", f = "OpenChatInfoViewModel.kt", l = {}, m = "invokeSuspend")
final class OpenChatInfoViewModel$createChatRoomAsync$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super LineApiResponse<OpenChatRoomInfo>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ OpenChatInfoViewModel f36285b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OpenChatParameters f36286c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OpenChatInfoViewModel$createChatRoomAsync$2(OpenChatInfoViewModel openChatInfoViewModel, OpenChatParameters openChatParameters, Continuation continuation) {
        super(2, continuation);
        this.f36285b = openChatInfoViewModel;
        this.f36286c = openChatParameters;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OpenChatInfoViewModel$createChatRoomAsync$2(this.f36285b, this.f36286c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OpenChatInfoViewModel$createChatRoomAsync$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        return this.f36285b.f36270b.a(this.f36286c);
    }
}
