package com.vuitton.android.data.datasource.audioguide;

import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import java.util.ArrayList;
import java.util.List;
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
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "preferences", "Landroidx/datastore/preferences/core/MutablePreferences;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.audioguide.AudioGuideLocalDataSource$saveCompletedTrack$2$1$1", f = "AudioGuideLocalDataSource.kt", l = {}, m = "invokeSuspend", v = 2)
final class AudioGuideLocalDataSource$saveCompletedTrack$2$1$1 extends SuspendLambda implements Function2<MutablePreferences, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43794b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AudioGuideLocalDataSource f43795c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioGuideLocalDataSource$saveCompletedTrack$2$1$1(AudioGuideLocalDataSource audioGuideLocalDataSource, String str, Continuation continuation) {
        super(2, continuation);
        this.f43795c = audioGuideLocalDataSource;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        AudioGuideLocalDataSource$saveCompletedTrack$2$1$1 audioGuideLocalDataSource$saveCompletedTrack$2$1$1 = new AudioGuideLocalDataSource$saveCompletedTrack$2$1$1(this.f43795c, this.d, continuation);
        audioGuideLocalDataSource$saveCompletedTrack$2$1$1.f43794b = obj;
        return audioGuideLocalDataSource$saveCompletedTrack$2$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AudioGuideLocalDataSource$saveCompletedTrack$2$1$1) create((MutablePreferences) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        List list;
        Json json = this.f43795c.f43768b;
        MutablePreferences mutablePreferences = (MutablePreferences) this.f43794b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        Preferences.Key key = AudioGuideLocalDataSource.g;
        String str = (String) mutablePreferences.b(key);
        if (str == null || str.length() == 0) {
            list = EmptyList.f71768b;
        } else {
            json.getClass();
            list = (List) json.b(new ArrayListSerializer(StringSerializer.f75684a), str);
        }
        String str2 = this.d;
        if (!list.contains(str2)) {
            ArrayList arrayListX = CollectionsKt.X(str2, list);
            json.getClass();
            mutablePreferences.f(key, json.c(new ArrayListSerializer(StringSerializer.f75684a), arrayListX));
        }
        return Unit.f71739a;
    }
}
