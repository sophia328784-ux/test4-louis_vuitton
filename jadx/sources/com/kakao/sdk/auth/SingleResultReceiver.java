package com.kakao.sdk.auth;

import com.kakao.sdk.common.util.BaseResultReceiver;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012$\u0012\u0004\u0012\u00028\u0000\u0012\u001a\u0012\u0018\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u00040\u0003:\u0001\u0007¨\u0006\b"}, d2 = {"Lcom/kakao/sdk/auth/SingleResultReceiver;", "", "T", "Lcom/kakao/sdk/common/util/BaseResultReceiver;", "Lkotlin/Function2;", "", "", "Companion", "auth_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class SingleResultReceiver<T> extends BaseResultReceiver<T, Function2<? super T, ? super Throwable, ? extends Unit>> {
    public static final Companion d = new Companion(null);

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/kakao/sdk/auth/SingleResultReceiver$Companion;", "", "auth_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public SingleResultReceiver(String str, DefaultConstructorMarker defaultConstructorMarker) {
        super(str);
    }

    @Override // com.kakao.sdk.common.util.BaseResultReceiver
    public final void b(Throwable th) {
        th.getClass();
        Function2 function2 = (Function2) this.f35877c;
        if (function2 != null) {
            function2.invoke(null, th);
        }
    }

    @Override // com.kakao.sdk.common.util.BaseResultReceiver
    public final void c(Object obj) {
        Function2 function2 = (Function2) this.f35877c;
        if (function2 != null) {
            function2.invoke(obj, null);
        }
    }
}
