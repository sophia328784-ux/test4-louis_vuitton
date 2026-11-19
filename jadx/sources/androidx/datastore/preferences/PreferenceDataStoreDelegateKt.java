package androidx.datastore.preferences;

import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import defpackage.l00;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"datastore-preferences_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public abstract class PreferenceDataStoreDelegateKt {
    public static PreferenceDataStoreSingletonDelegate a(String str, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, l00 l00Var, CoroutineScope coroutineScope, int i2) {
        if ((i2 & 2) != 0) {
            replaceFileCorruptionHandler = null;
        }
        Function1 function1 = l00Var;
        if ((i2 & 4) != 0) {
            function1 = PreferenceDataStoreDelegateKt$preferencesDataStore$1.f12862c;
        }
        if ((i2 & 8) != 0) {
            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
            coroutineScope = CoroutineScopeKt.a(DefaultIoScheduler.f75161b.plus(SupervisorKt.b()));
        }
        str.getClass();
        function1.getClass();
        coroutineScope.getClass();
        return new PreferenceDataStoreSingletonDelegate(str, replaceFileCorruptionHandler, function1, coroutineScope);
    }
}
