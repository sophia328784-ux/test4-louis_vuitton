package com.vuitton.android.data.datasource.audioguide;

import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.core.Preferences;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.audioguide.AudioGuideAccessData;
import defpackage.md;
import java.util.ArrayList;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\rB/\b\u0007\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;", "", "Landroidx/datastore/core/DataStore;", "Landroidx/datastore/preferences/core/Preferences;", "dataStore", "Lkotlinx/serialization/json/Json;", "json", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "coroutinesDispatchers", "Lcom/vuitton/foundation/logger/Logger;", "logger", "<init>", "(Landroidx/datastore/core/DataStore;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/foundation/logger/Logger;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AudioGuideLocalDataSource {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Preferences.Key f43766f;
    public static final Preferences.Key g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DataStore f43767a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Json f43768b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CoroutineDispatchers f43769c;
    public final Logger d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ArrayList f43770e;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$Companion;", "", "", "TAG", "Ljava/lang/String;", "Landroidx/datastore/preferences/core/Preferences$Key;", "AUDIOGUIDE_DATASTORE_ACCESSDATA_KEY", "Landroidx/datastore/preferences/core/Preferences$Key;", "AUDIOGUIDE_DATASTORE_TRACKS_KEY", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f43766f = new Preferences.Key("data_store_audioguide_access_data_key");
        g = new Preferences.Key("data_store_audioguide_completed_tracks_key");
    }

    @Inject
    public AudioGuideLocalDataSource(DataStore<Preferences> dataStore, Json json, CoroutineDispatchers coroutineDispatchers, Logger logger) {
        dataStore.getClass();
        json.getClass();
        coroutineDispatchers.getClass();
        logger.getClass();
        this.f43767a = dataStore;
        this.f43768b = json;
        this.f43769c = coroutineDispatchers;
        this.d = logger;
        this.f43770e = new ArrayList();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        AudioGuideLocalDataSource$clearAccessData$1 audioGuideLocalDataSource$clearAccessData$1;
        if (continuationImpl instanceof AudioGuideLocalDataSource$clearAccessData$1) {
            audioGuideLocalDataSource$clearAccessData$1 = (AudioGuideLocalDataSource$clearAccessData$1) continuationImpl;
            int i2 = audioGuideLocalDataSource$clearAccessData$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                audioGuideLocalDataSource$clearAccessData$1.d = i2 - Integer.MIN_VALUE;
            } else {
                audioGuideLocalDataSource$clearAccessData$1 = new AudioGuideLocalDataSource$clearAccessData$1(this, continuationImpl);
            }
        } else {
            audioGuideLocalDataSource$clearAccessData$1 = new AudioGuideLocalDataSource$clearAccessData$1(this, continuationImpl);
        }
        Object objF = audioGuideLocalDataSource$clearAccessData$1.f43771b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = audioGuideLocalDataSource$clearAccessData$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f43769c.getF43530b();
            AudioGuideLocalDataSource$clearAccessData$2 audioGuideLocalDataSource$clearAccessData$2 = new AudioGuideLocalDataSource$clearAccessData$2(this, null);
            audioGuideLocalDataSource$clearAccessData$1.d = 1;
            objF = BuildersKt.f(f43530b, audioGuideLocalDataSource$clearAccessData$2, audioGuideLocalDataSource$clearAccessData$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        return ((Result) objF).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(ContinuationImpl continuationImpl) throws Throwable {
        AudioGuideLocalDataSource$getAccessData$1 audioGuideLocalDataSource$getAccessData$1;
        if (continuationImpl instanceof AudioGuideLocalDataSource$getAccessData$1) {
            audioGuideLocalDataSource$getAccessData$1 = (AudioGuideLocalDataSource$getAccessData$1) continuationImpl;
            int i2 = audioGuideLocalDataSource$getAccessData$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                audioGuideLocalDataSource$getAccessData$1.d = i2 - Integer.MIN_VALUE;
            } else {
                audioGuideLocalDataSource$getAccessData$1 = new AudioGuideLocalDataSource$getAccessData$1(this, continuationImpl);
            }
        } else {
            audioGuideLocalDataSource$getAccessData$1 = new AudioGuideLocalDataSource$getAccessData$1(this, continuationImpl);
        }
        Object objF = audioGuideLocalDataSource$getAccessData$1.f43776b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = audioGuideLocalDataSource$getAccessData$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f43769c.getF43530b();
            AudioGuideLocalDataSource$getAccessData$2 audioGuideLocalDataSource$getAccessData$2 = new AudioGuideLocalDataSource$getAccessData$2(this, null);
            audioGuideLocalDataSource$getAccessData$1.d = 1;
            objF = BuildersKt.f(f43530b, audioGuideLocalDataSource$getAccessData$2, audioGuideLocalDataSource$getAccessData$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        return ((Result) objF).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(ContinuationImpl continuationImpl) throws Throwable {
        AudioGuideLocalDataSource$getCompletedTracks$1 audioGuideLocalDataSource$getCompletedTracks$1;
        if (continuationImpl instanceof AudioGuideLocalDataSource$getCompletedTracks$1) {
            audioGuideLocalDataSource$getCompletedTracks$1 = (AudioGuideLocalDataSource$getCompletedTracks$1) continuationImpl;
            int i2 = audioGuideLocalDataSource$getCompletedTracks$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                audioGuideLocalDataSource$getCompletedTracks$1.d = i2 - Integer.MIN_VALUE;
            } else {
                audioGuideLocalDataSource$getCompletedTracks$1 = new AudioGuideLocalDataSource$getCompletedTracks$1(this, continuationImpl);
            }
        } else {
            audioGuideLocalDataSource$getCompletedTracks$1 = new AudioGuideLocalDataSource$getCompletedTracks$1(this, continuationImpl);
        }
        Object objF = audioGuideLocalDataSource$getCompletedTracks$1.f43780b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = audioGuideLocalDataSource$getCompletedTracks$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f43769c.getF43530b();
            AudioGuideLocalDataSource$getCompletedTracks$2 audioGuideLocalDataSource$getCompletedTracks$2 = new AudioGuideLocalDataSource$getCompletedTracks$2(this, null);
            audioGuideLocalDataSource$getCompletedTracks$1.d = 1;
            objF = BuildersKt.f(f43530b, audioGuideLocalDataSource$getCompletedTracks$2, audioGuideLocalDataSource$getCompletedTracks$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        return ((Result) objF).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(AudioGuideAccessData audioGuideAccessData, ContinuationImpl continuationImpl) throws Throwable {
        AudioGuideLocalDataSource$saveAccessData$1 audioGuideLocalDataSource$saveAccessData$1;
        if (continuationImpl instanceof AudioGuideLocalDataSource$saveAccessData$1) {
            audioGuideLocalDataSource$saveAccessData$1 = (AudioGuideLocalDataSource$saveAccessData$1) continuationImpl;
            int i2 = audioGuideLocalDataSource$saveAccessData$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                audioGuideLocalDataSource$saveAccessData$1.d = i2 - Integer.MIN_VALUE;
            } else {
                audioGuideLocalDataSource$saveAccessData$1 = new AudioGuideLocalDataSource$saveAccessData$1(this, continuationImpl);
            }
        } else {
            audioGuideLocalDataSource$saveAccessData$1 = new AudioGuideLocalDataSource$saveAccessData$1(this, continuationImpl);
        }
        Object objF = audioGuideLocalDataSource$saveAccessData$1.f43784b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = audioGuideLocalDataSource$saveAccessData$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f43769c.getF43530b();
            AudioGuideLocalDataSource$saveAccessData$2 audioGuideLocalDataSource$saveAccessData$2 = new AudioGuideLocalDataSource$saveAccessData$2(this, audioGuideAccessData, null);
            audioGuideLocalDataSource$saveAccessData$1.d = 1;
            objF = BuildersKt.f(f43530b, audioGuideLocalDataSource$saveAccessData$2, audioGuideLocalDataSource$saveAccessData$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        return ((Result) objF).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(String str, ContinuationImpl continuationImpl) throws Throwable {
        AudioGuideLocalDataSource$saveCompletedTrack$1 audioGuideLocalDataSource$saveCompletedTrack$1;
        if (continuationImpl instanceof AudioGuideLocalDataSource$saveCompletedTrack$1) {
            audioGuideLocalDataSource$saveCompletedTrack$1 = (AudioGuideLocalDataSource$saveCompletedTrack$1) continuationImpl;
            int i2 = audioGuideLocalDataSource$saveCompletedTrack$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                audioGuideLocalDataSource$saveCompletedTrack$1.d = i2 - Integer.MIN_VALUE;
            } else {
                audioGuideLocalDataSource$saveCompletedTrack$1 = new AudioGuideLocalDataSource$saveCompletedTrack$1(this, continuationImpl);
            }
        } else {
            audioGuideLocalDataSource$saveCompletedTrack$1 = new AudioGuideLocalDataSource$saveCompletedTrack$1(this, continuationImpl);
        }
        Object objF = audioGuideLocalDataSource$saveCompletedTrack$1.f43790b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = audioGuideLocalDataSource$saveCompletedTrack$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f43769c.getF43530b();
            AudioGuideLocalDataSource$saveCompletedTrack$2 audioGuideLocalDataSource$saveCompletedTrack$2 = new AudioGuideLocalDataSource$saveCompletedTrack$2(this, str, null);
            audioGuideLocalDataSource$saveCompletedTrack$1.d = 1;
            objF = BuildersKt.f(f43530b, audioGuideLocalDataSource$saveCompletedTrack$2, audioGuideLocalDataSource$saveCompletedTrack$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        return ((Result) objF).f71708b;
    }
}
