package com.vuitton.android.presentation.contact;

import com.vuitton.android.presentation.chat.ChatContactUsUiModel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function6;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;", "contactMode", "Lcom/vuitton/android/presentation/contact/ContactUsMode;", "featureFlagEnabled", "", "careServiceFlagEnabled", "consentOptIn", "chatEnabled"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.contact.ContactUsDelegateImpl$getState$1", f = "ContactUsDelegateImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class ContactUsDelegateImpl$getState$1 extends SuspendLambda implements Function6<ContactUsMode, Boolean, Boolean, Boolean, Boolean, Continuation<? super ChatContactUsUiModel>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ ContactUsMode f51103b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ boolean f51104c;
    public /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ boolean f51105e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ boolean f51106f;

    public ContactUsDelegateImpl$getState$1(Continuation continuation) {
        super(6, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ContactUsMode contactUsMode = this.f51103b;
        boolean z = this.f51104c;
        boolean z2 = this.d;
        boolean z3 = this.f51105e;
        boolean z4 = this.f51106f;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        if (!z || (contactUsMode == ContactUsMode.DISTANT_CARE && !z2)) {
            return ChatContactUsUiModel.ChatDisabled.f50675a;
        }
        if (z3) {
            return z4 ? ChatContactUsUiModel.Available.f50674a : ChatContactUsUiModel.AdvisorNotAvailable.f50673a;
        }
        return ChatContactUsUiModel.UserOptOut.f50676a;
    }

    @Override // kotlin.jvm.functions.Function6
    public final Object l(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
        boolean zBooleanValue2 = ((Boolean) obj3).booleanValue();
        boolean zBooleanValue3 = ((Boolean) obj4).booleanValue();
        boolean zBooleanValue4 = ((Boolean) obj5).booleanValue();
        ContactUsDelegateImpl$getState$1 contactUsDelegateImpl$getState$1 = new ContactUsDelegateImpl$getState$1((Continuation) obj6);
        contactUsDelegateImpl$getState$1.f51103b = (ContactUsMode) obj;
        contactUsDelegateImpl$getState$1.f51104c = zBooleanValue;
        contactUsDelegateImpl$getState$1.d = zBooleanValue2;
        contactUsDelegateImpl$getState$1.f51105e = zBooleanValue3;
        contactUsDelegateImpl$getState$1.f51106f = zBooleanValue4;
        return contactUsDelegateImpl$getState$1.invokeSuspend(Unit.f71739a);
    }
}
