package com.vuitton.android.data.datasource.dynamicyield;

import androidx.datastore.preferences.core.MutablePreferences;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "preferences", "Landroidx/datastore/preferences/core/MutablePreferences;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.dynamicyield.DynamicYieldDataSource$saveUserDyIdAssociation$2", f = "DynamicYieldDataSource.kt", l = {}, m = "invokeSuspend", v = 2)
final class DynamicYieldDataSource$saveUserDyIdAssociation$2 extends SuspendLambda implements Function2<MutablePreferences, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f44113b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f44114c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DynamicYieldDataSource$saveUserDyIdAssociation$2(String str, String str2, Continuation continuation) {
        super(2, continuation);
        this.f44114c = str;
        this.d = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        DynamicYieldDataSource$saveUserDyIdAssociation$2 dynamicYieldDataSource$saveUserDyIdAssociation$2 = new DynamicYieldDataSource$saveUserDyIdAssociation$2(this.f44114c, this.d, continuation);
        dynamicYieldDataSource$saveUserDyIdAssociation$2.f44113b = obj;
        return dynamicYieldDataSource$saveUserDyIdAssociation$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DynamicYieldDataSource$saveUserDyIdAssociation$2) create((MutablePreferences) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MutablePreferences mutablePreferences = (MutablePreferences) this.f44113b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        mutablePreferences.e(DynamicYieldDataSource.d, this.f44114c);
        mutablePreferences.e(DynamicYieldDataSource.f44104e, this.d);
        return Unit.f71739a;
    }
}
