package com.vuitton.android.data.datasource.config;

import android.content.SharedPreferences;
import com.vuitton.foundation.model.domain.model.config.AbTest;
import defpackage.az;
import defpackage.zy0;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.random.Random;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.config.AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$2$1", f = "AbTestLocalDataSource.kt", l = {}, m = "invokeSuspend", v = 2)
final class AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f43972b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AbTest f43973c;
    public final /* synthetic */ AbTestLocalDataSource d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$2$1(String str, AbTest abTest, AbTestLocalDataSource abTestLocalDataSource, Continuation continuation) {
        super(2, continuation);
        this.f43972b = str;
        this.f43973c = abTest;
        this.d = abTestLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$2$1(this.f43972b, this.f43973c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        AbTestLocalDataSource.f43955c.getClass();
        String strA = AbTestLocalDataSource.Companion.a(this.f43972b, this.f43973c);
        SharedPreferences sharedPreferences = this.d.f43957b;
        if (sharedPreferences.contains(strA)) {
            return Unit.f71739a;
        }
        int iD = 0;
        IntRange intRangeJ = RangesKt.j(0, 100);
        Random.Companion companion = Random.INSTANCE;
        intRangeJ.getClass();
        companion.getClass();
        try {
            companion.getClass();
            if (intRangeJ.isEmpty()) {
                az.m(intRangeJ, "Cannot get random in empty range: ");
            } else {
                int i2 = intRangeJ.f71952c;
                int i3 = intRangeJ.f71951b;
                if (i2 < Integer.MAX_VALUE) {
                    iD = Random.f71941c.e(i3, i2 + 1);
                } else if (i3 > Integer.MIN_VALUE) {
                    iD = Random.f71941c.e(i3 - 1, i2) + 1;
                } else {
                    iD = Random.f71941c.d();
                }
            }
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putInt(strA, iD);
            editorEdit.commit();
            return Unit.f71739a;
        } catch (IllegalArgumentException e2) {
            zy0.c(e2.getMessage());
            return null;
        }
    }
}
