package com.vuitton.android.presentation.screen.pdp;

import android.location.Address;
import android.net.Uri;
import com.vuitton.android.presentation.model.storelocator.StoreUiModel;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Triple;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl$openStoreMap$1$2$1", f = "FindInStoreViewModelImpl.kt", l = {190}, m = "invokeSuspend", v = 2)
final class FindInStoreViewModelImpl$openStoreMap$1$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61043b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Address f61044c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f61045e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ StoreUiModel f61046f;
    public final /* synthetic */ FindInStoreViewModelImpl g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FindInStoreViewModelImpl$openStoreMap$1$2$1(Address address, Object obj, Object obj2, StoreUiModel storeUiModel, FindInStoreViewModelImpl findInStoreViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f61044c = address;
        this.d = obj;
        this.f61045e = obj2;
        this.f61046f = storeUiModel;
        this.g = findInStoreViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FindInStoreViewModelImpl$openStoreMap$1$2$1(this.f61044c, this.d, this.f61045e, this.f61046f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FindInStoreViewModelImpl$openStoreMap$1$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Triple triple;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61043b;
        if (i2 == 0) {
            ResultKt.b(obj);
            StoreUiModel storeUiModel = this.f61046f;
            Address address = this.f61044c;
            if (address != null) {
                triple = new Triple(new Double(address.getLatitude()), new Double(address.getLongitude()), Uri.encode(address.getLatitude() + "," + address.getLongitude() + "(" + storeUiModel.f51818b + ")"));
            } else {
                triple = new Triple(this.d, this.f61045e, storeUiModel.f51818b + ", " + storeUiModel.f51820e);
            }
            String str = "geo:" + triple.f71716b + "," + triple.f71717c + "?q=" + triple.d;
            BufferedChannel bufferedChannel = this.g.m;
            this.f61043b = 1;
            if (bufferedChannel.u(str, this) == coroutineSingletons) {
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
