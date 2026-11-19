package com.vuitton.android.data.datasource.aicompanion;

import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesKt;
import defpackage.md;
import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Landroidx/datastore/preferences/core/Preferences;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.aicompanion.AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2", f = "AICompanionLocalDataSource.kt", l = {60}, m = "invokeSuspend", v = 2)
final class AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Preferences>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f43748b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AICompanionLocalDataSource f43749c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: com.vuitton.android.data.datasource.aicompanion.AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "preferences", "Landroidx/datastore/preferences/core/MutablePreferences;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.data.datasource.aicompanion.AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2$1", f = "AICompanionLocalDataSource.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<MutablePreferences, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f43750b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ boolean f43751c;
        public final /* synthetic */ AICompanionLocalDataSource d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(AICompanionLocalDataSource aICompanionLocalDataSource, Continuation continuation, boolean z) {
            super(2, continuation);
            this.f43751c = z;
            this.d = aICompanionLocalDataSource;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, continuation, this.f43751c);
            anonymousClass1.f43750b = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((MutablePreferences) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            MutablePreferences mutablePreferences = (MutablePreferences) this.f43750b;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            if (this.f43751c) {
                Preferences.Key key = AICompanionLocalDataSource.g;
                LocalDate localDate = Instant.ofEpochMilli(System.currentTimeMillis()).atZone(ZoneId.systemDefault()).toLocalDate();
                localDate.getClass();
                mutablePreferences.e(key, localDate.toString());
            } else {
                mutablePreferences.d(AICompanionLocalDataSource.g);
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2(AICompanionLocalDataSource aICompanionLocalDataSource, Continuation continuation, boolean z) {
        super(2, continuation);
        this.f43749c = aICompanionLocalDataSource;
        this.d = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2(this.f43749c, continuation, this.d);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f43748b;
        if (i2 != 0) {
            if (i2 == 1) {
                ResultKt.b(obj);
                return obj;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        AICompanionLocalDataSource aICompanionLocalDataSource = this.f43749c;
        DataStore dataStore = aICompanionLocalDataSource.f43692a;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(aICompanionLocalDataSource, null, this.d);
        this.f43748b = 1;
        Object objA = PreferencesKt.a(dataStore, anonymousClass1, this);
        return objA == coroutineSingletons ? coroutineSingletons : objA;
    }
}
