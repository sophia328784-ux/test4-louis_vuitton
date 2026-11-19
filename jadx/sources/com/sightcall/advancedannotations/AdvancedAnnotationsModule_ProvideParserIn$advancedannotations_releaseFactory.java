package com.sightcall.advancedannotations;

import com.sightcall.advancedannotations.domain.parser.AdvancedAnnotationsParser;
import com.sightcall.advancedannotations.domain.parser.AdvancedAnnotationsParserImpl;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class AdvancedAnnotationsModule_ProvideParserIn$advancedannotations_releaseFactory implements Factory<AdvancedAnnotationsParser.In> {
    private final AdvancedAnnotationsModule module;
    private final Provider<AdvancedAnnotationsParserImpl> parserProvider;

    private AdvancedAnnotationsModule_ProvideParserIn$advancedannotations_releaseFactory(AdvancedAnnotationsModule advancedAnnotationsModule, Provider<AdvancedAnnotationsParserImpl> provider) {
        this.module = advancedAnnotationsModule;
        this.parserProvider = provider;
    }

    public static AdvancedAnnotationsModule_ProvideParserIn$advancedannotations_releaseFactory create(AdvancedAnnotationsModule advancedAnnotationsModule, Provider<AdvancedAnnotationsParserImpl> provider) {
        return new AdvancedAnnotationsModule_ProvideParserIn$advancedannotations_releaseFactory(advancedAnnotationsModule, provider);
    }

    public static AdvancedAnnotationsParser.In provideParserIn$advancedannotations_release(AdvancedAnnotationsModule advancedAnnotationsModule, AdvancedAnnotationsParserImpl advancedAnnotationsParserImpl) {
        AdvancedAnnotationsParser.In inProvideParserIn$advancedannotations_release = advancedAnnotationsModule.provideParserIn$advancedannotations_release(advancedAnnotationsParserImpl);
        Preconditions.c(inProvideParserIn$advancedannotations_release);
        return inProvideParserIn$advancedannotations_release;
    }

    @Override // javax.inject.Provider
    public AdvancedAnnotationsParser.In get() {
        return provideParserIn$advancedannotations_release(this.module, (AdvancedAnnotationsParserImpl) this.parserProvider.get());
    }
}
