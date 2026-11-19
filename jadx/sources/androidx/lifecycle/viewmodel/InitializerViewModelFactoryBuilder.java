package androidx.lifecycle.viewmodel;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.b21;
import defpackage.fc;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;", "", "<init>", "()V", "lifecycle-viewmodel"}, k = 1, mv = {2, 1, 0}, xi = 48)
@ViewModelFactoryDsl
public final class InitializerViewModelFactoryBuilder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f13580a = new LinkedHashMap();

    public final void a(KClass kClass, Function1 function1) {
        kClass.getClass();
        function1.getClass();
        LinkedHashMap linkedHashMap = this.f13580a;
        if (linkedHashMap.containsKey(kClass)) {
            b21.n(fc.h("A `initializer` with the same `clazz` has already been added: ", kClass.getF74431c(), FileUtils.HIDDEN_PREFIX));
        } else {
            linkedHashMap.put(kClass, new ViewModelInitializer(kClass, function1));
        }
    }

    public final InitializerViewModelFactory b() {
        Collection collectionValues = this.f13580a.values();
        collectionValues.getClass();
        ViewModelInitializer[] viewModelInitializerArr = (ViewModelInitializer[]) collectionValues.toArray(new ViewModelInitializer[0]);
        return new InitializerViewModelFactory((ViewModelInitializer[]) Arrays.copyOf(viewModelInitializerArr, viewModelInitializerArr.length));
    }
}
