package com.vuitton.android.presentation.screen.account.inbox;

import com.vuitton.android.presentation.push.NotificationsManager;
import com.vuitton.android.presentation.screen.account.inbox.models.InboxNotificationUiModel;
import defpackage.md;
import java.util.ArrayList;
import java.util.Date;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.inbox.InboxViewModelImpl$setNotificationAsRead$1", f = "InboxViewModelImpl.kt", l = {179}, m = "invokeSuspend", v = 2)
final class InboxViewModelImpl$setNotificationAsRead$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52372b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ InboxViewModelImpl f52373c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InboxViewModelImpl$setNotificationAsRead$1(InboxViewModelImpl inboxViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f52373c = inboxViewModelImpl;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new InboxViewModelImpl$setNotificationAsRead$1(this.f52373c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((InboxViewModelImpl$setNotificationAsRead$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objI;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52372b;
        String str = this.d;
        InboxViewModelImpl inboxViewModelImpl = this.f52373c;
        if (i2 == 0) {
            ResultKt.b(obj);
            NotificationsManager notificationsManager = inboxViewModelImpl.d;
            this.f52372b = 1;
            objI = notificationsManager.i(str, this);
            if (objI == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objI = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objI instanceof Result.Failure)) {
            MutableStateFlow mutableStateFlow = inboxViewModelImpl.n;
            Iterable<InboxNotificationUiModel> iterable = (Iterable) mutableStateFlow.getValue();
            ArrayList arrayList = new ArrayList(CollectionsKt.t(iterable, 10));
            for (InboxNotificationUiModel inboxNotificationUiModel : iterable) {
                if (Intrinsics.c(inboxNotificationUiModel.f52412a, str)) {
                    String str2 = inboxNotificationUiModel.f52412a;
                    String str3 = inboxNotificationUiModel.f52413b;
                    String str4 = inboxNotificationUiModel.f52414c;
                    String str5 = inboxNotificationUiModel.d;
                    String str6 = inboxNotificationUiModel.f52415e;
                    Date date = inboxNotificationUiModel.g;
                    str2.getClass();
                    str4.getClass();
                    date.getClass();
                    inboxNotificationUiModel = new InboxNotificationUiModel(str2, str3, str4, str5, str6, false, date);
                }
                arrayList.add(inboxNotificationUiModel);
            }
            mutableStateFlow.setValue(arrayList);
        }
        Throwable thA = Result.a(objI);
        if (thA != null) {
            inboxViewModelImpl.f52349c.c("InboxViewModelImpl", "Set notification as read failure", thA);
        }
        return Unit.f71739a;
    }
}
