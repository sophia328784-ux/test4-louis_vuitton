package com.vuitton.android.presentation.screen.connectivity.section;

import androidx.lifecycle.MutableLiveData;
import com.vuitton.android.presentation.screen.connectivity.ConnectivityMapperKt;
import com.vuitton.foundation.model.domain.model.connectivity.common.Video;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailViewModelImpl$getTrunkSpeakerCardsToDisplay$1", f = "ConnectivitySectionDetailViewModelImpl.kt", l = {126, CertificateBody.profileType, CertificateBody.profileType}, m = "invokeSuspend", v = 2)
final class ConnectivitySectionDetailViewModelImpl$getTrunkSpeakerCardsToDisplay$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f56294b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Deferred f56295c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f56296e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f56297f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ConnectivitySectionDetailViewModelImpl f56298h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectivitySectionDetailViewModelImpl$getTrunkSpeakerCardsToDisplay$1(ConnectivitySectionDetailViewModelImpl connectivitySectionDetailViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f56298h = connectivitySectionDetailViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ConnectivitySectionDetailViewModelImpl$getTrunkSpeakerCardsToDisplay$1 connectivitySectionDetailViewModelImpl$getTrunkSpeakerCardsToDisplay$1 = new ConnectivitySectionDetailViewModelImpl$getTrunkSpeakerCardsToDisplay$1(this.f56298h, continuation);
        connectivitySectionDetailViewModelImpl$getTrunkSpeakerCardsToDisplay$1.g = obj;
        return connectivitySectionDetailViewModelImpl$getTrunkSpeakerCardsToDisplay$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ConnectivitySectionDetailViewModelImpl$getTrunkSpeakerCardsToDisplay$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0091  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:38:0x00c3  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object failure;
        Throwable thA;
        Deferred deferredA;
        int i2;
        Deferred deferred;
        Object objK;
        Object obj2;
        ConnectivitySectionDetailViewModelImpl connectivitySectionDetailViewModelImpl = this.f56298h;
        MutableLiveData mutableLiveData = connectivitySectionDetailViewModelImpl.t;
        CoroutineScope coroutineScope = (CoroutineScope) this.g;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = this.f56297f;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                deferredA = BuildersKt.a(coroutineScope, null, new ConnectivitySectionDetailViewModelImpl$getTrunkSpeakerCardsToDisplay$1$1$trunkSpeakerVideo$1(connectivitySectionDetailViewModelImpl, null), 3);
                Deferred deferredA2 = BuildersKt.a(coroutineScope, null, new ConnectivitySectionDetailViewModelImpl$getTrunkSpeakerCardsToDisplay$1$1$trunkSpeakerSkuList$1(connectivitySectionDetailViewModelImpl, null), 3);
                Deferred[] deferredArr = {deferredA, deferredA2};
                this.g = null;
                this.f56294b = deferredA;
                this.f56295c = deferredA2;
                this.f56296e = 0;
                this.f56297f = 1;
                if (AwaitKt.a(deferredArr, this) != coroutineSingletons) {
                    i2 = 0;
                    deferred = deferredA2;
                }
                return coroutineSingletons;
            }
            if (i3 == 1) {
                i2 = this.f56296e;
                deferred = this.f56295c;
                deferredA = (Deferred) this.f56294b;
                ResultKt.b(obj);
            } else {
                if (i3 == 2) {
                    i2 = this.f56296e;
                    deferred = this.f56295c;
                    ResultKt.b(obj);
                    this.g = null;
                    this.f56294b = null;
                    this.f56295c = null;
                    this.d = obj;
                    this.f56296e = i2;
                    this.f56297f = 3;
                    objK = deferred.k(this);
                    if (objK != coroutineSingletons) {
                        Object obj3 = obj;
                        obj = objK;
                        obj2 = obj3;
                    }
                    return coroutineSingletons;
                }
                if (i3 != 3) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                obj2 = this.d;
                ResultKt.b(obj);
            }
            failure = new Pair(obj2, obj);
            Result.Companion companion2 = Result.INSTANCE;
            thA = Result.a(failure);
            if (thA == null) {
                Pair pair = (Pair) failure;
                mutableLiveData.postValue(new Result(new Pair(ConnectivityMapperKt.a((Video) pair.f71705b), pair.f71706c)));
            } else {
                mutableLiveData.postValue(new Result(new Result.Failure(thA)));
            }
            return Unit.f71739a;
            this.g = null;
            this.f56294b = null;
            this.f56295c = deferred;
            this.f56296e = i2;
            this.f56297f = 2;
            obj = deferredA.k(this);
            if (obj != coroutineSingletons) {
                this.g = null;
                this.f56294b = null;
                this.f56295c = null;
                this.d = obj;
                this.f56296e = i2;
                this.f56297f = 3;
                objK = deferred.k(this);
                if (objK != coroutineSingletons) {
                    Object obj4 = obj;
                    obj = objK;
                    obj2 = obj4;
                    failure = new Pair(obj2, obj);
                    Result.Companion companion3 = Result.INSTANCE;
                    thA = Result.a(failure);
                    if (thA == null) {
                        Pair pair2 = (Pair) failure;
                        mutableLiveData.postValue(new Result(new Pair(ConnectivityMapperKt.a((Video) pair2.f71705b), pair2.f71706c)));
                    } else {
                        mutableLiveData.postValue(new Result(new Result.Failure(thA)));
                    }
                    return Unit.f71739a;
                }
            }
            return coroutineSingletons;
        } catch (Throwable th) {
            Result.Companion companion4 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
    }
}
