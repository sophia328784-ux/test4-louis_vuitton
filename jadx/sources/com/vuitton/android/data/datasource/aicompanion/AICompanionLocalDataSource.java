package com.vuitton.android.data.datasource.aicompanion;

import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.core.Preferences;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.foundation.model.domain.model.aicompanion.ChatHistory;
import defpackage.md;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0017\u0018\u00002\u00020\u0001:\u0001\u000bB'\b\u0007\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;", "", "Landroidx/datastore/core/DataStore;", "Landroidx/datastore/preferences/core/Preferences;", "dataStore", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "coroutinesDispatchers", "Lkotlinx/serialization/json/Json;", "json", "<init>", "(Landroidx/datastore/core/DataStore;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lkotlinx/serialization/json/Json;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public class AICompanionLocalDataSource {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Preferences.Key f43690e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Preferences.Key f43691f;
    public static final Preferences.Key g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DataStore f43692a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoroutineDispatchers f43693b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Json f43694c;
    public final MutableStateFlow d;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0005R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0005R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource$Companion;", "", "Landroidx/datastore/preferences/core/Preferences$Key;", "", "CONNECTED_SESSION_HISTORY_KEY", "Landroidx/datastore/preferences/core/Preferences$Key;", "GUEST_SESSION_HISTORY_KEY", "VIDEO_LAST_DISPLAYED_DATE_KEY", "", "SESSION_HISTORY_RETENTION_MONTHS", "J", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f43690e = new Preferences.Key("data_store_ai_companion_connected_session_history");
        f43691f = new Preferences.Key("data_store_ai_companion_guest_session_history");
        g = new Preferences.Key("data_store_ai_companion_video_last_displayed_date");
    }

    @Inject
    public AICompanionLocalDataSource(DataStore<Preferences> dataStore, CoroutineDispatchers coroutineDispatchers, Json json) {
        dataStore.getClass();
        coroutineDispatchers.getClass();
        json.getClass();
        this.f43692a = dataStore;
        this.f43693b = coroutineDispatchers;
        this.f43694c = json;
        this.d = StateFlowKt.a(Boolean.FALSE);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, ContinuationImpl continuationImpl) {
        AICompanionLocalDataSource$deleteSessionHistoryEntry$1 aICompanionLocalDataSource$deleteSessionHistoryEntry$1;
        if (continuationImpl instanceof AICompanionLocalDataSource$deleteSessionHistoryEntry$1) {
            aICompanionLocalDataSource$deleteSessionHistoryEntry$1 = (AICompanionLocalDataSource$deleteSessionHistoryEntry$1) continuationImpl;
            int i2 = aICompanionLocalDataSource$deleteSessionHistoryEntry$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                aICompanionLocalDataSource$deleteSessionHistoryEntry$1.d = i2 - Integer.MIN_VALUE;
            } else {
                aICompanionLocalDataSource$deleteSessionHistoryEntry$1 = new AICompanionLocalDataSource$deleteSessionHistoryEntry$1(this, continuationImpl);
            }
        } else {
            aICompanionLocalDataSource$deleteSessionHistoryEntry$1 = new AICompanionLocalDataSource$deleteSessionHistoryEntry$1(this, continuationImpl);
        }
        Object objF = aICompanionLocalDataSource$deleteSessionHistoryEntry$1.f43695b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = aICompanionLocalDataSource$deleteSessionHistoryEntry$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f43693b.getF43530b();
            AICompanionLocalDataSource$deleteSessionHistoryEntry$2 aICompanionLocalDataSource$deleteSessionHistoryEntry$2 = new AICompanionLocalDataSource$deleteSessionHistoryEntry$2(this, str, null);
            aICompanionLocalDataSource$deleteSessionHistoryEntry$1.d = 1;
            objF = BuildersKt.f(f43530b, aICompanionLocalDataSource$deleteSessionHistoryEntry$2, aICompanionLocalDataSource$deleteSessionHistoryEntry$1);
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
    public final Object b(String str, ContinuationImpl continuationImpl) {
        AICompanionLocalDataSource$getConnectedSessionHistoryList$1 aICompanionLocalDataSource$getConnectedSessionHistoryList$1;
        if (continuationImpl instanceof AICompanionLocalDataSource$getConnectedSessionHistoryList$1) {
            aICompanionLocalDataSource$getConnectedSessionHistoryList$1 = (AICompanionLocalDataSource$getConnectedSessionHistoryList$1) continuationImpl;
            int i2 = aICompanionLocalDataSource$getConnectedSessionHistoryList$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                aICompanionLocalDataSource$getConnectedSessionHistoryList$1.d = i2 - Integer.MIN_VALUE;
            } else {
                aICompanionLocalDataSource$getConnectedSessionHistoryList$1 = new AICompanionLocalDataSource$getConnectedSessionHistoryList$1(this, continuationImpl);
            }
        } else {
            aICompanionLocalDataSource$getConnectedSessionHistoryList$1 = new AICompanionLocalDataSource$getConnectedSessionHistoryList$1(this, continuationImpl);
        }
        Object objF = aICompanionLocalDataSource$getConnectedSessionHistoryList$1.f43701b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = aICompanionLocalDataSource$getConnectedSessionHistoryList$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f43693b.getF43530b();
            AICompanionLocalDataSource$getConnectedSessionHistoryList$2 aICompanionLocalDataSource$getConnectedSessionHistoryList$2 = new AICompanionLocalDataSource$getConnectedSessionHistoryList$2(this, str, null);
            aICompanionLocalDataSource$getConnectedSessionHistoryList$1.d = 1;
            objF = BuildersKt.f(f43530b, aICompanionLocalDataSource$getConnectedSessionHistoryList$2, aICompanionLocalDataSource$getConnectedSessionHistoryList$1);
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
    public final Object c(String str, ContinuationImpl continuationImpl) {
        AICompanionLocalDataSource$getGuestSessionHistoryList$1 aICompanionLocalDataSource$getGuestSessionHistoryList$1;
        if (continuationImpl instanceof AICompanionLocalDataSource$getGuestSessionHistoryList$1) {
            aICompanionLocalDataSource$getGuestSessionHistoryList$1 = (AICompanionLocalDataSource$getGuestSessionHistoryList$1) continuationImpl;
            int i2 = aICompanionLocalDataSource$getGuestSessionHistoryList$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                aICompanionLocalDataSource$getGuestSessionHistoryList$1.d = i2 - Integer.MIN_VALUE;
            } else {
                aICompanionLocalDataSource$getGuestSessionHistoryList$1 = new AICompanionLocalDataSource$getGuestSessionHistoryList$1(this, continuationImpl);
            }
        } else {
            aICompanionLocalDataSource$getGuestSessionHistoryList$1 = new AICompanionLocalDataSource$getGuestSessionHistoryList$1(this, continuationImpl);
        }
        Object objF = aICompanionLocalDataSource$getGuestSessionHistoryList$1.f43712b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = aICompanionLocalDataSource$getGuestSessionHistoryList$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f43693b.getF43530b();
            AICompanionLocalDataSource$getGuestSessionHistoryList$2 aICompanionLocalDataSource$getGuestSessionHistoryList$2 = new AICompanionLocalDataSource$getGuestSessionHistoryList$2(this, str, null);
            aICompanionLocalDataSource$getGuestSessionHistoryList$1.d = 1;
            objF = BuildersKt.f(f43530b, aICompanionLocalDataSource$getGuestSessionHistoryList$2, aICompanionLocalDataSource$getGuestSessionHistoryList$1);
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

    public final Object d(Continuation continuation) {
        return BuildersKt.f(this.f43693b.getF43530b(), new AICompanionLocalDataSource$hasVideoBeenDisplayed$2(this, null), continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(ChatHistory chatHistory, String str, ContinuationImpl continuationImpl) {
        AICompanionLocalDataSource$saveConnectedSessionHistoryEntry$1 aICompanionLocalDataSource$saveConnectedSessionHistoryEntry$1;
        if (continuationImpl instanceof AICompanionLocalDataSource$saveConnectedSessionHistoryEntry$1) {
            aICompanionLocalDataSource$saveConnectedSessionHistoryEntry$1 = (AICompanionLocalDataSource$saveConnectedSessionHistoryEntry$1) continuationImpl;
            int i2 = aICompanionLocalDataSource$saveConnectedSessionHistoryEntry$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                aICompanionLocalDataSource$saveConnectedSessionHistoryEntry$1.d = i2 - Integer.MIN_VALUE;
            } else {
                aICompanionLocalDataSource$saveConnectedSessionHistoryEntry$1 = new AICompanionLocalDataSource$saveConnectedSessionHistoryEntry$1(this, continuationImpl);
            }
        } else {
            aICompanionLocalDataSource$saveConnectedSessionHistoryEntry$1 = new AICompanionLocalDataSource$saveConnectedSessionHistoryEntry$1(this, continuationImpl);
        }
        Object objF = aICompanionLocalDataSource$saveConnectedSessionHistoryEntry$1.f43724b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = aICompanionLocalDataSource$saveConnectedSessionHistoryEntry$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f43693b.getF43530b();
            AICompanionLocalDataSource$saveConnectedSessionHistoryEntry$2 aICompanionLocalDataSource$saveConnectedSessionHistoryEntry$2 = new AICompanionLocalDataSource$saveConnectedSessionHistoryEntry$2(this, chatHistory, str, null);
            aICompanionLocalDataSource$saveConnectedSessionHistoryEntry$1.d = 1;
            objF = BuildersKt.f(f43530b, aICompanionLocalDataSource$saveConnectedSessionHistoryEntry$2, aICompanionLocalDataSource$saveConnectedSessionHistoryEntry$1);
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
    public final Object f(ChatHistory chatHistory, String str, ContinuationImpl continuationImpl) {
        AICompanionLocalDataSource$saveGuestSessionHistoryEntry$1 aICompanionLocalDataSource$saveGuestSessionHistoryEntry$1;
        if (continuationImpl instanceof AICompanionLocalDataSource$saveGuestSessionHistoryEntry$1) {
            aICompanionLocalDataSource$saveGuestSessionHistoryEntry$1 = (AICompanionLocalDataSource$saveGuestSessionHistoryEntry$1) continuationImpl;
            int i2 = aICompanionLocalDataSource$saveGuestSessionHistoryEntry$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                aICompanionLocalDataSource$saveGuestSessionHistoryEntry$1.d = i2 - Integer.MIN_VALUE;
            } else {
                aICompanionLocalDataSource$saveGuestSessionHistoryEntry$1 = new AICompanionLocalDataSource$saveGuestSessionHistoryEntry$1(this, continuationImpl);
            }
        } else {
            aICompanionLocalDataSource$saveGuestSessionHistoryEntry$1 = new AICompanionLocalDataSource$saveGuestSessionHistoryEntry$1(this, continuationImpl);
        }
        Object objF = aICompanionLocalDataSource$saveGuestSessionHistoryEntry$1.f43732b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = aICompanionLocalDataSource$saveGuestSessionHistoryEntry$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f43693b.getF43530b();
            AICompanionLocalDataSource$saveGuestSessionHistoryEntry$2 aICompanionLocalDataSource$saveGuestSessionHistoryEntry$2 = new AICompanionLocalDataSource$saveGuestSessionHistoryEntry$2(this, chatHistory, str, null);
            aICompanionLocalDataSource$saveGuestSessionHistoryEntry$1.d = 1;
            objF = BuildersKt.f(f43530b, aICompanionLocalDataSource$saveGuestSessionHistoryEntry$2, aICompanionLocalDataSource$saveGuestSessionHistoryEntry$1);
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
    public final Object g(String str, String str2, ContinuationImpl continuationImpl) {
        AICompanionLocalDataSource$updateSessionIdHistoryEntry$1 aICompanionLocalDataSource$updateSessionIdHistoryEntry$1;
        if (continuationImpl instanceof AICompanionLocalDataSource$updateSessionIdHistoryEntry$1) {
            aICompanionLocalDataSource$updateSessionIdHistoryEntry$1 = (AICompanionLocalDataSource$updateSessionIdHistoryEntry$1) continuationImpl;
            int i2 = aICompanionLocalDataSource$updateSessionIdHistoryEntry$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                aICompanionLocalDataSource$updateSessionIdHistoryEntry$1.d = i2 - Integer.MIN_VALUE;
            } else {
                aICompanionLocalDataSource$updateSessionIdHistoryEntry$1 = new AICompanionLocalDataSource$updateSessionIdHistoryEntry$1(this, continuationImpl);
            }
        } else {
            aICompanionLocalDataSource$updateSessionIdHistoryEntry$1 = new AICompanionLocalDataSource$updateSessionIdHistoryEntry$1(this, continuationImpl);
        }
        Object objF = aICompanionLocalDataSource$updateSessionIdHistoryEntry$1.f43740b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = aICompanionLocalDataSource$updateSessionIdHistoryEntry$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f43693b.getF43530b();
            AICompanionLocalDataSource$updateSessionIdHistoryEntry$2 aICompanionLocalDataSource$updateSessionIdHistoryEntry$2 = new AICompanionLocalDataSource$updateSessionIdHistoryEntry$2(this, str, str2, null);
            aICompanionLocalDataSource$updateSessionIdHistoryEntry$1.d = 1;
            objF = BuildersKt.f(f43530b, aICompanionLocalDataSource$updateSessionIdHistoryEntry$2, aICompanionLocalDataSource$updateSessionIdHistoryEntry$1);
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

    public final Object h(boolean z, Continuation continuation) throws Throwable {
        Object objF = BuildersKt.f(this.f43693b.getF43530b(), new AICompanionLocalDataSource$updateVideoHasBeenDisplayed$2(this, null, z), continuation);
        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
    }
}
