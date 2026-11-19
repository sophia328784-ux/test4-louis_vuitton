package com.dynatrace.android.agent.data;

import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesFactory;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.FlowCollector;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Landroidx/datastore/preferences/core/Preferences;", "it", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.android.agent.data.CrossPlatformScreenshotStore$preload$1$prefs$1", f = "CrossPlatformScreenshotStore.kt", l = {EACTags.PIN_USAGE_POLICY}, m = "invokeSuspend")
final class CrossPlatformScreenshotStore$preload$1$prefs$1 extends SuspendLambda implements Function3<FlowCollector<? super Preferences>, Throwable, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f27473b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ FlowCollector f27474c;

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        CrossPlatformScreenshotStore$preload$1$prefs$1 crossPlatformScreenshotStore$preload$1$prefs$1 = new CrossPlatformScreenshotStore$preload$1$prefs$1(3, (Continuation) obj3);
        crossPlatformScreenshotStore$preload$1$prefs$1.f27474c = (FlowCollector) obj;
        return crossPlatformScreenshotStore$preload$1$prefs$1.invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f27473b;
        if (i2 == 0) {
            ResultKt.b(obj);
            FlowCollector flowCollector = this.f27474c;
            MutablePreferences mutablePreferencesA = PreferencesFactory.a();
            this.f27473b = 1;
            if (flowCollector.emit(mutablePreferencesA, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
