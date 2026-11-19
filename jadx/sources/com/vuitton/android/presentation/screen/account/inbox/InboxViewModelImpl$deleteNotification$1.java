package com.vuitton.android.presentation.screen.account.inbox;

import com.vuitton.android.presentation.push.NotificationsManager;
import com.vuitton.android.presentation.screen.account.inbox.models.InboxNotificationUiModel;
import com.vuitton.android.presentation.screen.account.inbox.models.InboxTrackingUIModel;
import defpackage.md;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.inbox.InboxViewModelImpl$deleteNotification$1", f = "InboxViewModelImpl.kt", l = {116}, m = "invokeSuspend", v = 2)
final class InboxViewModelImpl$deleteNotification$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f52361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public InboxViewModelImpl f52362c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f52363e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ InboxViewModelImpl f52364f;
    public final /* synthetic */ String g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InboxViewModelImpl$deleteNotification$1(InboxViewModelImpl inboxViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f52364f = inboxViewModelImpl;
        this.g = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new InboxViewModelImpl$deleteNotification$1(this.f52364f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((InboxViewModelImpl$deleteNotification$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x007d  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objH;
        Object obj2;
        String str;
        InboxViewModelImpl inboxViewModelImpl;
        Throwable thA;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52363e;
        InboxViewModelImpl inboxViewModelImpl2 = this.f52364f;
        if (i2 == 0) {
            ResultKt.b(obj);
            NotificationsManager notificationsManager = inboxViewModelImpl2.d;
            String str2 = this.g;
            objH = notificationsManager.h(str2);
            Result.Companion companion = Result.INSTANCE;
            if (!(objH instanceof Result.Failure)) {
                long j2 = inboxViewModelImpl2.f52353i;
                this.f52361b = objH;
                this.f52362c = inboxViewModelImpl2;
                this.d = str2;
                this.f52363e = 1;
                if (DelayKt.b(j2, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
                obj2 = objH;
                str = str2;
                inboxViewModelImpl = inboxViewModelImpl2;
            }
            thA = Result.a(objH);
            if (thA != null) {
                inboxViewModelImpl2.f52349c.c("InboxViewModelImpl", "Notification deletion failure", thA);
            }
            return Unit.f71739a;
        }
        if (i2 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        str = this.d;
        inboxViewModelImpl = this.f52362c;
        obj2 = this.f52361b;
        ResultKt.b(obj);
        inboxViewModelImpl.gc(InboxTrackingUIModel.NotificationDeleted.f52418a);
        MutableStateFlow mutableStateFlow = inboxViewModelImpl.n;
        Iterable iterable = (Iterable) mutableStateFlow.getValue();
        ArrayList arrayList = new ArrayList();
        for (Object obj3 : iterable) {
            if (!Intrinsics.c(((InboxNotificationUiModel) obj3).f52412a, str)) {
                arrayList.add(obj3);
            }
        }
        mutableStateFlow.setValue(arrayList);
        objH = obj2;
        thA = Result.a(objH);
        if (thA != null) {
            inboxViewModelImpl2.f52349c.c("InboxViewModelImpl", "Notification deletion failure", thA);
        }
        return Unit.f71739a;
    }
}
