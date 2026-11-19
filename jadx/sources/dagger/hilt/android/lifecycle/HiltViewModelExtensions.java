package dagger.hilt.android.lifecycle;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import dagger.hilt.android.internal.lifecycle.HiltViewModelFactory;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"hilt-android_main_java_dagger_hilt_android_lifecycle-hilt_view_model_extensions"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class HiltViewModelExtensions {
    public static final MutableCreationExtras a(CreationExtras creationExtras, final Function1 function1) {
        creationExtras.getClass();
        function1.getClass();
        MutableCreationExtras mutableCreationExtras = new MutableCreationExtras(creationExtras);
        mutableCreationExtras.f13577a.put(HiltViewModelFactory.d, new Function1<Object, ViewModel>() { // from class: dagger.hilt.android.lifecycle.HiltViewModelExtensions$addCreationCallback$1$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return (ViewModel) function1.invoke(obj);
            }
        });
        return mutableCreationExtras;
    }
}
