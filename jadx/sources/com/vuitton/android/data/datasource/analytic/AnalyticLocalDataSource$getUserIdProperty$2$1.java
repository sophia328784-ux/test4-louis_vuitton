package com.vuitton.android.data.datasource.analytic;

import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.analytic.AnalyticLocalDataSource$getUserIdProperty$2$1", f = "AnalyticLocalDataSource.kt", l = {}, m = "invokeSuspend", v = 2)
final class AnalyticLocalDataSource$getUserIdProperty$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f43755b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f43756c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnalyticLocalDataSource$getUserIdProperty$2$1(String str, String str2, Continuation continuation) {
        super(2, continuation);
        this.f43755b = str;
        this.f43756c = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AnalyticLocalDataSource$getUserIdProperty$2$1(this.f43755b, this.f43756c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AnalyticLocalDataSource$getUserIdProperty$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws NoSuchAlgorithmException {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        String str = this.f43755b;
        if (str == null || StringsKt.w(str)) {
            str = null;
        }
        String str2 = this.f43756c;
        if (str2 == null || StringsKt.w(str2)) {
            str2 = null;
        }
        if (str == null) {
            str = str2;
        }
        if (str == null) {
            return null;
        }
        String strF = StringKtExtKt.f(str);
        Locale locale = Locale.ENGLISH;
        locale.getClass();
        String lowerCase = strF.toLowerCase(locale);
        lowerCase.getClass();
        return lowerCase;
    }
}
