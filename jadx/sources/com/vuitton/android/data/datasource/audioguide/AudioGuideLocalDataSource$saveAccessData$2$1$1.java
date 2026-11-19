package com.vuitton.android.data.datasource.audioguide;

import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import com.vuitton.foundation.model.domain.model.audioguide.AudioGuideAccessData;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "preferences", "Landroidx/datastore/preferences/core/MutablePreferences;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.audioguide.AudioGuideLocalDataSource$saveAccessData$2$1$1", f = "AudioGuideLocalDataSource.kt", l = {}, m = "invokeSuspend", v = 2)
final class AudioGuideLocalDataSource$saveAccessData$2$1$1 extends SuspendLambda implements Function2<MutablePreferences, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43788b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AudioGuideAccessData f43789c;
    public final /* synthetic */ AudioGuideLocalDataSource d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioGuideLocalDataSource$saveAccessData$2$1$1(AudioGuideLocalDataSource audioGuideLocalDataSource, AudioGuideAccessData audioGuideAccessData, Continuation continuation) {
        super(2, continuation);
        this.f43789c = audioGuideAccessData;
        this.d = audioGuideLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        AudioGuideLocalDataSource$saveAccessData$2$1$1 audioGuideLocalDataSource$saveAccessData$2$1$1 = new AudioGuideLocalDataSource$saveAccessData$2$1$1(this.d, this.f43789c, continuation);
        audioGuideLocalDataSource$saveAccessData$2$1$1.f43788b = obj;
        return audioGuideLocalDataSource$saveAccessData$2$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AudioGuideLocalDataSource$saveAccessData$2$1$1) create((MutablePreferences) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Json json = this.d.f43768b;
        MutablePreferences mutablePreferences = (MutablePreferences) this.f43788b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        Preferences.Key key = AudioGuideLocalDataSource.f43766f;
        String str = (String) mutablePreferences.b(key);
        String str2 = null;
        if (str != null) {
            if (str.length() <= 0) {
                str = null;
            }
            if (str != null) {
                json.getClass();
                str2 = ((AudioGuideAccessData) json.b(AudioGuideAccessData.INSTANCE.serializer(), str)).f66571a;
            }
        }
        AudioGuideAccessData audioGuideAccessData = this.f43789c;
        if (str2 == null || !str2.equals(audioGuideAccessData.f66571a)) {
            json.getClass();
            mutablePreferences.f(key, json.c(AudioGuideAccessData.INSTANCE.serializer(), audioGuideAccessData));
        }
        return Unit.f71739a;
    }
}
