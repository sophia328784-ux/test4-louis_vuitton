package com.linecorp.linesdk.openchat.ui;

import androidx.lifecycle.MutableLiveData;
import com.linecorp.linesdk.LineApiResponse;
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
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 7, 1}, xi = 48)
@DebugMetadata(c = "com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel$checkAgreementStatus$1", f = "OpenChatInfoViewModel.kt", l = {EACTags.ADDRESS}, m = "invokeSuspend")
final class OpenChatInfoViewModel$checkAgreementStatus$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f36278b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OpenChatInfoViewModel f36279c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OpenChatInfoViewModel$checkAgreementStatus$1(OpenChatInfoViewModel openChatInfoViewModel, Continuation continuation) {
        super(2, continuation);
        this.f36279c = openChatInfoViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OpenChatInfoViewModel$checkAgreementStatus$1(this.f36279c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OpenChatInfoViewModel$checkAgreementStatus$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f36278b;
        OpenChatInfoViewModel openChatInfoViewModel = this.f36279c;
        boolean z = true;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f36278b = 1;
            obj = OpenChatInfoViewModel.yc(openChatInfoViewModel, this);
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
        MutableLiveData mutableLiveData = openChatInfoViewModel.f36277k;
        if (lineApiResponse.d() && ((Boolean) lineApiResponse.c()).booleanValue()) {
            z = false;
        }
        mutableLiveData.setValue(Boolean.valueOf(z));
        return Unit.f71739a;
    }
}
