package com.vuitton.android.data.datasource.auth;

import android.content.SharedPreferences;
import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import dagger.Lazy;
import defpackage.md;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.datetime.Instant;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.auth.TwistTokenDataSourceImpl$saveToken$2$1", f = "TwistTokenDataSourceImpl.kt", l = {49}, m = "invokeSuspend", v = 2)
final class TwistTokenDataSourceImpl$saveToken$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f43858b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TwistTokenDataSourceImpl f43859c;
    public final /* synthetic */ AuthToken.Twist d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwistTokenDataSourceImpl$saveToken$2$1(TwistTokenDataSourceImpl twistTokenDataSourceImpl, AuthToken.Twist twist, Continuation continuation) {
        super(2, continuation);
        this.f43859c = twistTokenDataSourceImpl;
        this.d = twist;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new TwistTokenDataSourceImpl$saveToken$2$1(this.f43859c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TwistTokenDataSourceImpl$saveToken$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        TwistTokenDataSourceImpl twistTokenDataSourceImpl = this.f43859c;
        Lazy lazy = twistTokenDataSourceImpl.f43822a;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f43858b;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f43858b = 1;
            if (twistTokenDataSourceImpl.b(this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            ((Result) obj).getClass();
        }
        AuthToken.Twist twist = this.d;
        if (twist instanceof AuthToken.Twist.Guest) {
            Object obj2 = lazy.get();
            obj2.getClass();
            SharedPreferences.Editor editorEdit = ((SharedPreferences) obj2).edit();
            AuthToken.Twist.Guest guest = (AuthToken.Twist.Guest) twist;
            editorEdit.putString("PREF_OAUTH_ACCESS_TOKEN_SLAS", guest.f66592a);
            editorEdit.putString("PREF_OAUTH_USID_SLAS", guest.f66593b);
            editorEdit.commit();
        } else {
            if (!(twist instanceof AuthToken.Twist.User)) {
                v40.g();
                return null;
            }
            Object obj3 = lazy.get();
            obj3.getClass();
            SharedPreferences.Editor editorEdit2 = ((SharedPreferences) obj3).edit();
            AuthToken.Twist.User user = (AuthToken.Twist.User) twist;
            editorEdit2.putString(b.a.f24015b, user.f66594a);
            editorEdit2.putString("access_token", user.f66595b);
            editorEdit2.putString("refresh_token", user.f66596c);
            editorEdit2.putString("PREF_OAUTH_ACCESS_TOKEN_SLAS", user.d);
            editorEdit2.putString("PREF_OAUTH_TOKEN_SOT", user.f66597e);
            Instant instant = user.f66598f;
            if (instant != null) {
                editorEdit2.putLong("PREF_SFID_ACCESS_TOKEN_EXPIRATION", instant.a());
            }
            editorEdit2.commit();
        }
        return Unit.f71739a;
    }
}
