package com.vuitton.android.data.datasource.config;

import android.content.SharedPreferences;
import com.vuitton.foundation.model.domain.model.config.AbTest;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.config.AbTestLocalDataSource$clearObsoleteAbTestAssignments$2$1", f = "AbTestLocalDataSource.kt", l = {}, m = "invokeSuspend", v = 2)
final class AbTestLocalDataSource$clearObsoleteAbTestAssignments$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f43960b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AppConfig f43961c;
    public final /* synthetic */ AbTestLocalDataSource d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbTestLocalDataSource$clearObsoleteAbTestAssignments$2$1(String str, AppConfig appConfig, AbTestLocalDataSource abTestLocalDataSource, Continuation continuation) {
        super(2, continuation);
        this.f43960b = str;
        this.f43961c = appConfig;
        this.d = abTestLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AbTestLocalDataSource$clearObsoleteAbTestAssignments$2$1(this.f43960b, this.f43961c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AbTestLocalDataSource$clearObsoleteAbTestAssignments$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.ArrayList] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ?? arrayList;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        AbTestLocalDataSource.f43955c.getClass();
        StringBuilder sb = new StringBuilder("ab_test_");
        String str = this.f43960b;
        sb.append(str);
        sb.append("_");
        String string = sb.toString();
        List list = this.f43961c.f67230a;
        if (list != null) {
            List<AbTest> list2 = list;
            arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            for (AbTest abTest : list2) {
                AbTestLocalDataSource.f43955c.getClass();
                arrayList.add(AbTestLocalDataSource.Companion.a(str, abTest));
            }
        } else {
            arrayList = EmptyList.f71768b;
        }
        SharedPreferences sharedPreferences = this.d.f43957b;
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        Set<String> setKeySet = sharedPreferences.getAll().keySet();
        ArrayList<String> arrayList2 = new ArrayList();
        for (Object obj2 : setKeySet) {
            String str2 = (String) obj2;
            str2.getClass();
            if (StringsKt.P(str2, string, false)) {
                arrayList2.add(obj2);
            }
        }
        for (String str3 : arrayList2) {
            if (!arrayList.contains(str3)) {
                editorEdit.remove(str3);
            }
        }
        editorEdit.commit();
        return Unit.f71739a;
    }
}
