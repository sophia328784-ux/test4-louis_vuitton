package com.sightcall.getmedia.di;

import android.content.ContentResolver;
import android.content.Context;
import com.sightcall.core.di.SightCallComponent;
import com.sightcall.getmedia.MediaRepository;
import dagger.internal.DoubleCheck;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class DaggerMediaComponent {

    public static final class MediaComponentImpl implements MediaComponent {
        Provider<Context> contextProvider;
        Provider<ContentResolver> getContentResolverProvider;
        private final MediaComponentImpl mediaComponentImpl = this;
        Provider<MediaRepository> provideMediaRepositoryProvider;

        public static final class ContextProvider implements Provider<Context> {
            private final SightCallComponent sightCallComponent;

            public ContextProvider(SightCallComponent sightCallComponent) {
                this.sightCallComponent = sightCallComponent;
            }

            @Override // javax.inject.Provider
            public Context get() {
                Context context = this.sightCallComponent.context();
                Preconditions.b(context);
                return context;
            }
        }

        public MediaComponentImpl(MediaModule mediaModule, SightCallComponent sightCallComponent) {
            initialize(mediaModule, sightCallComponent);
        }

        private void initialize(MediaModule mediaModule, SightCallComponent sightCallComponent) {
            ContextProvider contextProvider = new ContextProvider(sightCallComponent);
            this.contextProvider = contextProvider;
            Provider<ContentResolver> providerB = DoubleCheck.b(MediaModule_GetContentResolverFactory.create(mediaModule, contextProvider));
            this.getContentResolverProvider = providerB;
            this.provideMediaRepositoryProvider = DoubleCheck.b(MediaModule_ProvideMediaRepositoryFactory.create(mediaModule, providerB));
        }

        @Override // com.sightcall.getmedia.di.MediaComponent
        public MediaRepository mediaRepository() {
            return (MediaRepository) this.provideMediaRepositoryProvider.get();
        }
    }

    private DaggerMediaComponent() {
    }

    public static Builder builder() {
        return new Builder(0);
    }

    public static final class Builder {
        private MediaModule mediaModule;
        private SightCallComponent sightCallComponent;

        public /* synthetic */ Builder(int i2) {
            this();
        }

        public MediaComponent build() {
            if (this.mediaModule == null) {
                this.mediaModule = new MediaModule();
            }
            Preconditions.a(SightCallComponent.class, this.sightCallComponent);
            return new MediaComponentImpl(this.mediaModule, this.sightCallComponent);
        }

        public Builder mediaModule(MediaModule mediaModule) {
            mediaModule.getClass();
            this.mediaModule = mediaModule;
            return this;
        }

        public Builder sightCallComponent(SightCallComponent sightCallComponent) {
            sightCallComponent.getClass();
            this.sightCallComponent = sightCallComponent;
            return this;
        }

        private Builder() {
        }
    }
}
