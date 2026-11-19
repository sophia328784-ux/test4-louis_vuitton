package com.sightcall.advancedannotations;

import com.sightcall.advancedannotations.domain.parser.AdvancedAnnotationsParser;
import com.sightcall.advancedannotations.domain.parser.AdvancedAnnotationsParserImpl;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class AdvancedAnnotationsModule_ProvideParser$advancedannotations_releaseFactory implements Factory<AdvancedAnnotationsParser> {
    private final AdvancedAnnotationsModule module;
    private final Provider<AdvancedAnnotationsParserImpl> parserProvider;

    private AdvancedAnnotationsModule_ProvideParser$advancedannotations_releaseFactory(AdvancedAnnotationsModule advancedAnnotationsModule, Provider<AdvancedAnnotationsParserImpl> provider) {
        this.module = advancedAnnotationsModule;
        this.parserProvider = provider;
    }

    public static AdvancedAnnotationsModule_ProvideParser$advancedannotations_releaseFactory create(AdvancedAnnotationsModule advancedAnnotationsModule, Provider<AdvancedAnnotationsParserImpl> provider) {
        return new AdvancedAnnotationsModule_ProvideParser$advancedannotations_releaseFactory(advancedAnnotationsModule, provider);
    }

    public static AdvancedAnnotationsParser provideParser$advancedannotations_release(AdvancedAnnotationsModule advancedAnnotationsModule, AdvancedAnnotationsParserImpl advancedAnnotationsParserImpl) {
        AdvancedAnnotationsParser advancedAnnotationsParserProvideParser$advancedannotations_release = advancedAnnotationsModule.provideParser$advancedannotations_release(advancedAnnotationsParserImpl);
        Preconditions.c(advancedAnnotationsParserProvideParser$advancedannotations_release);
        return advancedAnnotationsParserProvideParser$advancedannotations_release;
    }

    @Override // javax.inject.Provider
    public AdvancedAnnotationsParser get() {
        return provideParser$advancedannotations_release(this.module, (AdvancedAnnotationsParserImpl) this.parserProvider.get());
    }
}
