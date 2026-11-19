package com.dynatrace.android.agent.data;

import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.PreferencesKt;
import com.dynatrace.android.agent.util.Utility;
import defpackage.md;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.android.agent.data.CrossPlatformScreenshotStore$persistLatest$1", f = "CrossPlatformScreenshotStore.kt", l = {106}, m = "invokeSuspend")
final class CrossPlatformScreenshotStore$persistLatest$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f27466b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CrossPlatformScreenshotStore f27467c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f27468e;

    /* JADX INFO: renamed from: com.dynatrace.android.agent.data.CrossPlatformScreenshotStore$persistLatest$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Landroidx/datastore/preferences/core/MutablePreferences;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.dynatrace.android.agent.data.CrossPlatformScreenshotStore$persistLatest$1$1", f = "CrossPlatformScreenshotStore.kt", l = {}, m = "invokeSuspend")
    final class AnonymousClass1 extends SuspendLambda implements Function2<MutablePreferences, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f27469b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f27470c;
        public final /* synthetic */ String d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(int i2, String str, Continuation continuation) {
            super(2, continuation);
            this.f27470c = i2;
            this.d = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f27470c, this.d, continuation);
            anonymousClass1.f27469b = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((MutablePreferences) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            MutablePreferences mutablePreferences = (MutablePreferences) this.f27469b;
            mutablePreferences.e(CrossPlatformScreenshotStore.g, new Integer(this.f27470c));
            mutablePreferences.e(CrossPlatformScreenshotStore.f27456h, this.d);
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CrossPlatformScreenshotStore$persistLatest$1(CrossPlatformScreenshotStore crossPlatformScreenshotStore, int i2, String str, Continuation continuation) {
        super(2, continuation);
        this.f27467c = crossPlatformScreenshotStore;
        this.d = i2;
        this.f27468e = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CrossPlatformScreenshotStore$persistLatest$1(this.f27467c, this.d, this.f27468e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CrossPlatformScreenshotStore$persistLatest$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f27466b;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                DataStore dataStore = this.f27467c.f27457a;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f27468e, null);
                this.f27466b = 1;
                if (PreferencesKt.a(dataStore, anonymousClass1, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
        } catch (IOException unused) {
            Utility.a();
        }
        return Unit.f71739a;
    }
}
