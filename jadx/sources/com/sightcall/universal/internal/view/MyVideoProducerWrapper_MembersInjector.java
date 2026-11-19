package com.sightcall.universal.internal.view;

import com.sightcall.advancedannotations.AdvancedAnnotationsWrapper;
import dagger.MembersInjector;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class MyVideoProducerWrapper_MembersInjector implements MembersInjector<MyVideoProducerWrapper> {
    private final Provider<AdvancedAnnotationsWrapper> advancedAnnotationsWrapperProvider;

    private MyVideoProducerWrapper_MembersInjector(Provider<AdvancedAnnotationsWrapper> provider) {
        this.advancedAnnotationsWrapperProvider = provider;
    }

    public static MembersInjector<MyVideoProducerWrapper> create(Provider<AdvancedAnnotationsWrapper> provider) {
        return new MyVideoProducerWrapper_MembersInjector(provider);
    }

    public static void injectAdvancedAnnotationsWrapper(MyVideoProducerWrapper myVideoProducerWrapper, AdvancedAnnotationsWrapper advancedAnnotationsWrapper) {
        myVideoProducerWrapper.advancedAnnotationsWrapper = advancedAnnotationsWrapper;
    }

    public void injectMembers(MyVideoProducerWrapper myVideoProducerWrapper) {
        injectAdvancedAnnotationsWrapper(myVideoProducerWrapper, (AdvancedAnnotationsWrapper) this.advancedAnnotationsWrapperProvider.get());
    }
}
