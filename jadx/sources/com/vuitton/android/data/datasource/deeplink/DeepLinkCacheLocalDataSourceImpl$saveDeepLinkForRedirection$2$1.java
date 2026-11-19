package com.vuitton.android.data.datasource.deeplink;

import android.content.SharedPreferences;
import defpackage.md;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.deeplink.DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$2$1", f = "DeepLinkCacheLocalDataSourceImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f44072b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DeepLinkCacheLocalDataSourceImpl f44073c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$2$1(String str, DeepLinkCacheLocalDataSourceImpl deepLinkCacheLocalDataSourceImpl, Continuation continuation) {
        super(2, continuation);
        this.f44072b = str;
        this.f44073c = deepLinkCacheLocalDataSourceImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$2$1(this.f44072b, this.f44073c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        String str = this.f44072b;
        if (StringsKt.w(str)) {
            md.k("Deep link cannot be blank");
            return null;
        }
        DeepLinkCacheLocalDataSourceImpl deepLinkCacheLocalDataSourceImpl = this.f44073c;
        SharedPreferences.Editor editorEdit = deepLinkCacheLocalDataSourceImpl.f44057b.edit();
        editorEdit.putString("deep_link_for_redirection", str);
        editorEdit.putLong("deep_link_for_redirection_creation_timestamp", deepLinkCacheLocalDataSourceImpl.f44058c.a());
        editorEdit.commit();
        return Unit.f71739a;
    }
}
