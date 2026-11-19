package androidx.lifecycle;

import androidx.arch.core.util.Function;
import defpackage.m21;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"lifecycle-livedata"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class Transformations {
    public static final /* synthetic */ MediatorLiveData a(MutableLiveData mutableLiveData, Function function) {
        MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.b(mutableLiveData, new Transformations$sam$androidx_lifecycle_Observer$0(new m21(mediatorLiveData, function, 14)));
        return mediatorLiveData;
    }
}
