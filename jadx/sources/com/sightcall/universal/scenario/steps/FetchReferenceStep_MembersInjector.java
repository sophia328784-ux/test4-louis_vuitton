package com.sightcall.universal.scenario.steps;

import com.sightcall.session.SessionRepository;
import dagger.MembersInjector;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class FetchReferenceStep_MembersInjector implements MembersInjector<FetchReferenceStep> {
    private final Provider<SessionRepository> sessionRepositoryProvider;

    private FetchReferenceStep_MembersInjector(Provider<SessionRepository> provider) {
        this.sessionRepositoryProvider = provider;
    }

    public static MembersInjector<FetchReferenceStep> create(Provider<SessionRepository> provider) {
        return new FetchReferenceStep_MembersInjector(provider);
    }

    public static void injectSessionRepository(FetchReferenceStep fetchReferenceStep, SessionRepository sessionRepository) {
        fetchReferenceStep.sessionRepository = sessionRepository;
    }

    public void injectMembers(FetchReferenceStep fetchReferenceStep) {
        injectSessionRepository(fetchReferenceStep, (SessionRepository) this.sessionRepositoryProvider.get());
    }
}
