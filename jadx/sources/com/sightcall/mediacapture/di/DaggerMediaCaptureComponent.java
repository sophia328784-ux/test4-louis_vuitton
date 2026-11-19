package com.sightcall.mediacapture.di;

import android.content.ContentResolver;
import android.content.Context;
import com.sightcall.core.di.SightCallComponent;
import com.sightcall.getmedia.MediaRepository;
import com.sightcall.getmedia.di.MediaComponent;
import com.sightcall.mediacapture.domain.MediaCaptureUseCase;
import com.sightcall.mediacapture.presenter.MediaCaptureFragment;
import com.sightcall.mediacapture.presenter.MediaCaptureFragment_MembersInjector;
import com.sightcall.mediacapture.presenter.MediaCaptureViewModel;
import com.sightcall.mediacapture.repo.MediaCaptureRepository;
import com.sightcall.mediacapture.repo.converter.VideoConverter;
import com.sightcall.mediacapture.repo.di.RepositoryModule;
import com.sightcall.mediacapture.repo.di.RepositoryModule_GetCacheDirFactory;
import com.sightcall.mediacapture.repo.di.RepositoryModule_GetContentResolverFactory;
import com.sightcall.mediacapture.repo.di.RepositoryModule_GetMediaCaptureRepositoryFactory;
import com.sightcall.mediacapture.repo.di.RepositoryModule_GetStorageDirFactory;
import com.sightcall.mediacapture.repo.di.RepositoryModule_GetVideoConverterFactory;
import com.sightcall.mediacapture.repo.di.RepositoryModule_ProvidesExecutorFactory;
import dagger.internal.DoubleCheck;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import java.io.File;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public final class DaggerMediaCaptureComponent {

    public static final class MediaCaptureComponentImpl implements MediaCaptureComponent {
        Provider<Context> contextProvider;
        Provider<File> getCacheDirProvider;
        Provider<ContentResolver> getContentResolverProvider;
        Provider<MediaCaptureRepository> getMediaCaptureRepositoryProvider;
        Provider<File> getStorageDirProvider;
        Provider<VideoConverter> getVideoConverterProvider;
        private final MediaCaptureComponentImpl mediaCaptureComponentImpl = this;
        Provider<MediaRepository> mediaRepositoryProvider;
        Provider<Executor> providesExecutorProvider;

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

        public static final class MediaRepositoryProvider implements Provider<MediaRepository> {
            private final MediaComponent mediaComponent;

            public MediaRepositoryProvider(MediaComponent mediaComponent) {
                this.mediaComponent = mediaComponent;
            }

            @Override // javax.inject.Provider
            public MediaRepository get() {
                MediaRepository mediaRepository = this.mediaComponent.mediaRepository();
                Preconditions.b(mediaRepository);
                return mediaRepository;
            }
        }

        public MediaCaptureComponentImpl(RepositoryModule repositoryModule, SightCallComponent sightCallComponent, MediaComponent mediaComponent) {
            initialize(repositoryModule, sightCallComponent, mediaComponent);
        }

        private void initialize(RepositoryModule repositoryModule, SightCallComponent sightCallComponent, MediaComponent mediaComponent) {
            this.mediaRepositoryProvider = new MediaRepositoryProvider(mediaComponent);
            ContextProvider contextProvider = new ContextProvider(sightCallComponent);
            this.contextProvider = contextProvider;
            this.getContentResolverProvider = DoubleCheck.b(RepositoryModule_GetContentResolverFactory.create(repositoryModule, contextProvider));
            this.providesExecutorProvider = DoubleCheck.b(RepositoryModule_ProvidesExecutorFactory.create(repositoryModule, this.contextProvider));
            this.getCacheDirProvider = DoubleCheck.b(RepositoryModule_GetCacheDirFactory.create(repositoryModule, this.contextProvider));
            this.getStorageDirProvider = DoubleCheck.b(RepositoryModule_GetStorageDirFactory.create(repositoryModule, this.contextProvider));
            Provider<VideoConverter> providerB = DoubleCheck.b(RepositoryModule_GetVideoConverterFactory.create(repositoryModule, this.contextProvider));
            this.getVideoConverterProvider = providerB;
            this.getMediaCaptureRepositoryProvider = DoubleCheck.b(RepositoryModule_GetMediaCaptureRepositoryFactory.create(repositoryModule, this.mediaRepositoryProvider, this.getContentResolverProvider, this.contextProvider, this.providesExecutorProvider, this.getCacheDirProvider, this.getStorageDirProvider, providerB));
        }

        private MediaCaptureFragment injectMediaCaptureFragment(MediaCaptureFragment mediaCaptureFragment) {
            MediaCaptureFragment_MembersInjector.injectViewModelFactory(mediaCaptureFragment, mediaCaptureViewModelFactory());
            return mediaCaptureFragment;
        }

        @Override // com.sightcall.mediacapture.di.MediaCaptureComponent
        public void inject(MediaCaptureFragment mediaCaptureFragment) {
            injectMediaCaptureFragment(mediaCaptureFragment);
        }

        public MediaCaptureUseCase mediaCaptureUseCase() {
            return new MediaCaptureUseCase((MediaCaptureRepository) this.getMediaCaptureRepositoryProvider.get());
        }

        public MediaCaptureViewModel.Factory mediaCaptureViewModelFactory() {
            return new MediaCaptureViewModel.Factory(mediaCaptureUseCase());
        }
    }

    private DaggerMediaCaptureComponent() {
    }

    public static Builder builder() {
        return new Builder(0);
    }

    public static final class Builder {
        private MediaComponent mediaComponent;
        private RepositoryModule repositoryModule;
        private SightCallComponent sightCallComponent;

        public /* synthetic */ Builder(int i2) {
            this();
        }

        public MediaCaptureComponent build() {
            if (this.repositoryModule == null) {
                this.repositoryModule = new RepositoryModule();
            }
            Preconditions.a(SightCallComponent.class, this.sightCallComponent);
            Preconditions.a(MediaComponent.class, this.mediaComponent);
            return new MediaCaptureComponentImpl(this.repositoryModule, this.sightCallComponent, this.mediaComponent);
        }

        public Builder mediaComponent(MediaComponent mediaComponent) {
            mediaComponent.getClass();
            this.mediaComponent = mediaComponent;
            return this;
        }

        public Builder repositoryModule(RepositoryModule repositoryModule) {
            repositoryModule.getClass();
            this.repositoryModule = repositoryModule;
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
