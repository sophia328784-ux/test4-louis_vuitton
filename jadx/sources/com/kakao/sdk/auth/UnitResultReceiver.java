package com.kakao.sdk.auth;

import com.kakao.sdk.common.util.BaseResultReceiver;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\b&\u0018\u00002\u001c\u0012\u0004\u0012\u00020\u0002\u0012\u0012\u0012\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u00020\u00030\u0001:\u0001\u0005¨\u0006\u0006"}, d2 = {"Lcom/kakao/sdk/auth/UnitResultReceiver;", "Lcom/kakao/sdk/common/util/BaseResultReceiver;", "", "Lkotlin/Function1;", "", "Companion", "auth_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class UnitResultReceiver extends BaseResultReceiver<Unit, Function1<? super Throwable, ? extends Unit>> {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/kakao/sdk/auth/UnitResultReceiver$Companion;", "", "auth_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public UnitResultReceiver(String str, DefaultConstructorMarker defaultConstructorMarker) {
        super(str);
    }

    @Override // com.kakao.sdk.common.util.BaseResultReceiver
    public final void b(Throwable th) {
        th.getClass();
        Function1 function1 = (Function1) this.f35877c;
        if (function1 != null) {
            function1.invoke(th);
        }
    }

    @Override // com.kakao.sdk.common.util.BaseResultReceiver
    public final void c(Object obj) {
        Function1 function1 = (Function1) this.f35877c;
        if (function1 != null) {
            function1.invoke(null);
        }
    }
}
