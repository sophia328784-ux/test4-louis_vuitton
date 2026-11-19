package com.vuitton.android.presentation;

import androidx.lifecycle.SavedStateHandle;
import dagger.hilt.android.ViewModelLifecycle;
import dagger.hilt.android.components.ViewModelComponent;
import dagger.hilt.android.internal.builders.ViewModelComponentBuilder;
import dagger.hilt.android.internal.lifecycle.RetainedLifecycleImpl;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
final class DaggerLVApplication_HiltComponents_SingletonC$ViewModelCBuilder implements LVApplication_HiltComponents$ViewModelC.Builder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl f50508a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl f50509b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SavedStateHandle f50510c;
    public RetainedLifecycleImpl d;

    public DaggerLVApplication_HiltComponents_SingletonC$ViewModelCBuilder(DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl, DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl daggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl) {
        this.f50508a = daggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;
        this.f50509b = daggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;
    }

    @Override // dagger.hilt.android.internal.builders.ViewModelComponentBuilder
    public final ViewModelComponentBuilder a(SavedStateHandle savedStateHandle) {
        this.f50510c = savedStateHandle;
        return this;
    }

    @Override // dagger.hilt.android.internal.builders.ViewModelComponentBuilder
    public final ViewModelComponentBuilder b(RetainedLifecycleImpl retainedLifecycleImpl) {
        this.d = retainedLifecycleImpl;
        return this;
    }

    @Override // dagger.hilt.android.internal.builders.ViewModelComponentBuilder
    public final ViewModelComponent build() {
        Preconditions.a(SavedStateHandle.class, this.f50510c);
        Preconditions.a(ViewModelLifecycle.class, this.d);
        return new DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl(this.f50508a, this.f50509b, this.f50510c);
    }
}
