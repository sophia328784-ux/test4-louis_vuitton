package dagger.hilt.android.internal.builders;

import androidx.lifecycle.SavedStateHandle;
import dagger.hilt.android.components.ViewModelComponent;
import dagger.hilt.android.internal.lifecycle.RetainedLifecycleImpl;

/* JADX INFO: loaded from: classes4.dex */
public interface ViewModelComponentBuilder {
    ViewModelComponentBuilder a(SavedStateHandle savedStateHandle);

    ViewModelComponentBuilder b(RetainedLifecycleImpl retainedLifecycleImpl);

    ViewModelComponent build();
}
