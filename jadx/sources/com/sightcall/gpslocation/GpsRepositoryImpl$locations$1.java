package com.sightcall.gpslocation;

import android.location.Location;
import com.sightcall.pratik.Result;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0004\u0012\b\u0012\u00060\u0005j\u0002`\u00060\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", "Lcom/sightcall/pratik/Result;", "Landroid/location/Location;", "Ljava/lang/Exception;", "Lkotlin/Exception;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.sightcall.gpslocation.GpsRepositoryImpl$locations$1", f = "GpsRepositoryImpl.kt", l = {26}, m = "invokeSuspend", v = 2)
public final class GpsRepositoryImpl$locations$1 extends SuspendLambda implements Function2<ProducerScope<? super Result<Location, Exception>>, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ GpsRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GpsRepositoryImpl$locations$1(GpsRepositoryImpl gpsRepositoryImpl, Continuation<? super GpsRepositoryImpl$locations$1> continuation) {
        super(2, continuation);
        this.this$0 = gpsRepositoryImpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokeSuspend$lambda$0(ProducerScope producerScope, Location location) {
        producerScope.b(new Result.Success(location));
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokeSuspend$lambda$1(ProducerScope producerScope, Exception exc) {
        producerScope.b(new Result.Error(exc));
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokeSuspend$lambda$2(GpsRepositoryImpl gpsRepositoryImpl) {
        gpsRepositoryImpl.gpsDataSource.stopGps();
        return Unit.f71739a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        GpsRepositoryImpl$locations$1 gpsRepositoryImpl$locations$1 = new GpsRepositoryImpl$locations$1(this.this$0, continuation);
        gpsRepositoryImpl$locations$1.L$0 = obj;
        return gpsRepositoryImpl$locations$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope<? super Result<Location, Exception>> producerScope, Continuation<? super Unit> continuation) {
        return ((GpsRepositoryImpl$locations$1) create(producerScope, continuation)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        final ProducerScope producerScope = (ProducerScope) this.L$0;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.label;
        if (i2 == 0) {
            ResultKt.b(obj);
            final int i3 = 0;
            final int i4 = 1;
            this.this$0.gpsDataSource.startGps(new Function1() { // from class: com.sightcall.gpslocation.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    int i5 = i3;
                    ProducerScope producerScope2 = producerScope;
                    switch (i5) {
                        case 0:
                            return GpsRepositoryImpl$locations$1.invokeSuspend$lambda$0(producerScope2, (Location) obj2);
                        default:
                            return GpsRepositoryImpl$locations$1.invokeSuspend$lambda$1(producerScope2, (Exception) obj2);
                    }
                }
            }, new Function1() { // from class: com.sightcall.gpslocation.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    int i5 = i4;
                    ProducerScope producerScope2 = producerScope;
                    switch (i5) {
                        case 0:
                            return GpsRepositoryImpl$locations$1.invokeSuspend$lambda$0(producerScope2, (Location) obj2);
                        default:
                            return GpsRepositoryImpl$locations$1.invokeSuspend$lambda$1(producerScope2, (Exception) obj2);
                    }
                }
            });
            final GpsRepositoryImpl gpsRepositoryImpl = this.this$0;
            Function0 function0 = new Function0() { // from class: com.sightcall.gpslocation.b
                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    return GpsRepositoryImpl$locations$1.invokeSuspend$lambda$2(gpsRepositoryImpl);
                }
            };
            this.L$0 = null;
            this.label = 1;
            if (ProduceKt.a(producerScope, function0, this) == coroutineSingletons) {
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
