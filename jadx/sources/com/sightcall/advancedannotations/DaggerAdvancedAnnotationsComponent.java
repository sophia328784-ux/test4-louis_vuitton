package com.sightcall.advancedannotations;

import android.content.Context;
import android.view.ViewGroup;
import com.sightcall.advancedannotations.data.API;
import com.sightcall.advancedannotations.domain.AdvancedAnnotationsRepository;
import com.sightcall.advancedannotations.domain.drawer.AnnotationDrawer;
import com.sightcall.advancedannotations.domain.drawingmode.DrawingModeSelector;
import com.sightcall.advancedannotations.domain.event.EventInterpreter;
import com.sightcall.advancedannotations.domain.event.EventInterpreterImpl;
import com.sightcall.advancedannotations.domain.parser.AdvancedAnnotationsParser;
import com.sightcall.advancedannotations.domain.parser.AdvancedAnnotationsParserImpl;
import com.sightcall.advancedannotations.domain.settings.SettingsInteractor;
import com.sightcall.libraries.network.NetworkConnector;
import dagger.internal.DoubleCheck;
import dagger.internal.InstanceFactory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import io.reactivex.rxjava3.core.Scheduler;

/* JADX INFO: loaded from: classes3.dex */
public final class DaggerAdvancedAnnotationsComponent {

    public static final class AdvancedAnnotationsComponentImpl implements AdvancedAnnotationsComponent {
        private final AdvancedAnnotationsComponentImpl advancedAnnotationsComponentImpl = this;
        Provider<Context> contextProvider;
        Provider<AdvancedAnnotationsAPI.InitialSenderColor> initialSenderColorProvider;
        Provider<Scheduler> mainSchedulerProvider;
        Provider<AdvancedAnnotationsAPI.MessageSender> messageSenderProvider;
        Provider<NetworkConnector> networkConnectorProvider;
        Provider<API> provideAPI$advancedannotations_releaseProvider;
        Provider<AdvancedAnnotationsAPI> provideAdvancedAnnotationAPI$advancedannotations_releaseProvider;
        Provider<ViewGroup> provideContainer$advancedannotations_releaseProvider;
        Provider<AnnotationDrawer> provideDrawer$advancedannotations_releaseProvider;
        Provider<DrawingModeSelector> provideDrawingModeSelector$advancedannotations_releaseProvider;
        Provider<EventInterpreter> provideEventInterpreter$advancedannotations_releaseProvider;
        Provider<EventInterpreterImpl> provideEventInterpreterImpl$advancedannotations_releaseProvider;
        Provider<EventInterpreter.Out> provideEventInterpreterOut$advancedannotations_releaseProvider;
        Provider<AdvancedAnnotationsParserImpl> provideParserImpl$advancedannotations_releaseProvider;
        Provider<AdvancedAnnotationsParser.Out> provideParserOut$advancedannotations_releaseProvider;
        Provider<AdvancedAnnotationsRepository> provideRepository$advancedannotations_releaseProvider;
        Provider<SettingsInteractor> provideSettingsInteractor$advancedannotations_releaseProvider;
        Provider<AdvancedAnnotationsAPI.SenderIdGetter> senderIdGetterProvider;
        Provider<AdvancedAnnotationsAPI.StateHandler> stateHandlerProvider;
        Provider<AdvancedAnnotationsAPI.AdvancedAnnotationsSettingsUrl> urlProvider;

        public AdvancedAnnotationsComponentImpl(AdvancedAnnotationsModule advancedAnnotationsModule, Context context, Scheduler scheduler, AdvancedAnnotationsAPI.AdvancedAnnotationsSettingsUrl advancedAnnotationsSettingsUrl, NetworkConnector networkConnector, AdvancedAnnotationsAPI.MessageSender messageSender, AdvancedAnnotationsAPI.StateHandler stateHandler, AdvancedAnnotationsAPI.SenderIdGetter senderIdGetter, AdvancedAnnotationsAPI.InitialSenderColor initialSenderColor) {
            initialize(advancedAnnotationsModule, context, scheduler, advancedAnnotationsSettingsUrl, networkConnector, messageSender, stateHandler, senderIdGetter, initialSenderColor);
        }

        private void initialize(AdvancedAnnotationsModule advancedAnnotationsModule, Context context, Scheduler scheduler, AdvancedAnnotationsAPI.AdvancedAnnotationsSettingsUrl advancedAnnotationsSettingsUrl, NetworkConnector networkConnector, AdvancedAnnotationsAPI.MessageSender messageSender, AdvancedAnnotationsAPI.StateHandler stateHandler, AdvancedAnnotationsAPI.SenderIdGetter senderIdGetter, AdvancedAnnotationsAPI.InitialSenderColor initialSenderColor) {
            InstanceFactory instanceFactoryA = InstanceFactory.a(context);
            this.contextProvider = instanceFactoryA;
            this.provideContainer$advancedannotations_releaseProvider = DoubleCheck.b(AdvancedAnnotationsModule_ProvideContainer$advancedannotations_releaseFactory.create(advancedAnnotationsModule, instanceFactoryA));
            InstanceFactory instanceFactoryA2 = InstanceFactory.a(networkConnector);
            this.networkConnectorProvider = instanceFactoryA2;
            this.provideAPI$advancedannotations_releaseProvider = DoubleCheck.b(AdvancedAnnotationsModule_ProvideAPI$advancedannotations_releaseFactory.create(advancedAnnotationsModule, instanceFactoryA2));
            InstanceFactory instanceFactoryA3 = InstanceFactory.a(advancedAnnotationsSettingsUrl);
            this.urlProvider = instanceFactoryA3;
            Provider<AdvancedAnnotationsRepository> providerB = DoubleCheck.b(AdvancedAnnotationsModule_ProvideRepository$advancedannotations_releaseFactory.create(advancedAnnotationsModule, this.provideAPI$advancedannotations_releaseProvider, instanceFactoryA3, this.contextProvider));
            this.provideRepository$advancedannotations_releaseProvider = providerB;
            this.provideSettingsInteractor$advancedannotations_releaseProvider = DoubleCheck.b(AdvancedAnnotationsModule_ProvideSettingsInteractor$advancedannotations_releaseFactory.create(advancedAnnotationsModule, providerB));
            InstanceFactory instanceFactoryA4 = InstanceFactory.a(initialSenderColor);
            this.initialSenderColorProvider = instanceFactoryA4;
            this.provideDrawingModeSelector$advancedannotations_releaseProvider = DoubleCheck.b(AdvancedAnnotationsModule_ProvideDrawingModeSelector$advancedannotations_releaseFactory.create(advancedAnnotationsModule, instanceFactoryA4));
            InstanceFactory instanceFactoryA5 = InstanceFactory.a(scheduler);
            this.mainSchedulerProvider = instanceFactoryA5;
            Provider<EventInterpreterImpl> providerB2 = DoubleCheck.b(AdvancedAnnotationsModule_ProvideEventInterpreterImpl$advancedannotations_releaseFactory.create(advancedAnnotationsModule, this.provideContainer$advancedannotations_releaseProvider, this.provideDrawingModeSelector$advancedannotations_releaseProvider, this.provideSettingsInteractor$advancedannotations_releaseProvider, instanceFactoryA5));
            this.provideEventInterpreterImpl$advancedannotations_releaseProvider = providerB2;
            this.provideEventInterpreterOut$advancedannotations_releaseProvider = DoubleCheck.b(AdvancedAnnotationsModule_ProvideEventInterpreterOut$advancedannotations_releaseFactory.create(advancedAnnotationsModule, providerB2));
            InstanceFactory instanceFactoryA6 = InstanceFactory.a(senderIdGetter);
            this.senderIdGetterProvider = instanceFactoryA6;
            Provider<AdvancedAnnotationsParserImpl> providerB3 = DoubleCheck.b(AdvancedAnnotationsModule_ProvideParserImpl$advancedannotations_releaseFactory.create(advancedAnnotationsModule, this.provideEventInterpreterOut$advancedannotations_releaseProvider, instanceFactoryA6));
            this.provideParserImpl$advancedannotations_releaseProvider = providerB3;
            Provider<AdvancedAnnotationsParser.Out> providerB4 = DoubleCheck.b(AdvancedAnnotationsModule_ProvideParserOut$advancedannotations_releaseFactory.create(advancedAnnotationsModule, providerB3));
            this.provideParserOut$advancedannotations_releaseProvider = providerB4;
            this.provideDrawer$advancedannotations_releaseProvider = DoubleCheck.b(AdvancedAnnotationsModule_ProvideDrawer$advancedannotations_releaseFactory.create(advancedAnnotationsModule, this.provideContainer$advancedannotations_releaseProvider, this.provideSettingsInteractor$advancedannotations_releaseProvider, providerB4, this.provideEventInterpreterOut$advancedannotations_releaseProvider, this.provideDrawingModeSelector$advancedannotations_releaseProvider, this.mainSchedulerProvider));
            this.provideEventInterpreter$advancedannotations_releaseProvider = DoubleCheck.b(AdvancedAnnotationsModule_ProvideEventInterpreter$advancedannotations_releaseFactory.create(advancedAnnotationsModule, this.provideEventInterpreterImpl$advancedannotations_releaseProvider));
            this.messageSenderProvider = InstanceFactory.a(messageSender);
            InstanceFactory instanceFactoryA7 = InstanceFactory.a(stateHandler);
            this.stateHandlerProvider = instanceFactoryA7;
            this.provideAdvancedAnnotationAPI$advancedannotations_releaseProvider = DoubleCheck.b(AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory.create(advancedAnnotationsModule, this.provideContainer$advancedannotations_releaseProvider, this.provideSettingsInteractor$advancedannotations_releaseProvider, this.provideDrawingModeSelector$advancedannotations_releaseProvider, this.provideDrawer$advancedannotations_releaseProvider, this.provideEventInterpreter$advancedannotations_releaseProvider, this.provideParserImpl$advancedannotations_releaseProvider, this.messageSenderProvider, instanceFactoryA7));
        }

        @Override // com.sightcall.advancedannotations.AdvancedAnnotationsComponent
        public AdvancedAnnotationsAPI getApi() {
            return (AdvancedAnnotationsAPI) this.provideAdvancedAnnotationAPI$advancedannotations_releaseProvider.get();
        }
    }

    private DaggerAdvancedAnnotationsComponent() {
    }

    public static AdvancedAnnotationsComponent.Builder builder() {
        return new Builder(0);
    }

    public static final class Builder implements AdvancedAnnotationsComponent.Builder {
        private Context context;
        private AdvancedAnnotationsAPI.InitialSenderColor initialSenderColor;
        private Scheduler mainScheduler;
        private AdvancedAnnotationsAPI.MessageSender messageSender;
        private NetworkConnector networkConnector;
        private AdvancedAnnotationsAPI.SenderIdGetter senderIdGetter;
        private AdvancedAnnotationsAPI.StateHandler stateHandler;
        private AdvancedAnnotationsAPI.AdvancedAnnotationsSettingsUrl url;

        public /* synthetic */ Builder(int i2) {
            this();
        }

        @Override // com.sightcall.advancedannotations.AdvancedAnnotationsComponent.Builder
        public AdvancedAnnotationsComponent build() {
            Preconditions.a(Context.class, this.context);
            Preconditions.a(Scheduler.class, this.mainScheduler);
            Preconditions.a(AdvancedAnnotationsAPI.AdvancedAnnotationsSettingsUrl.class, this.url);
            Preconditions.a(NetworkConnector.class, this.networkConnector);
            Preconditions.a(AdvancedAnnotationsAPI.MessageSender.class, this.messageSender);
            Preconditions.a(AdvancedAnnotationsAPI.StateHandler.class, this.stateHandler);
            Preconditions.a(AdvancedAnnotationsAPI.SenderIdGetter.class, this.senderIdGetter);
            Preconditions.a(AdvancedAnnotationsAPI.InitialSenderColor.class, this.initialSenderColor);
            return new AdvancedAnnotationsComponentImpl(new AdvancedAnnotationsModule(), this.context, this.mainScheduler, this.url, this.networkConnector, this.messageSender, this.stateHandler, this.senderIdGetter, this.initialSenderColor);
        }

        @Override // com.sightcall.advancedannotations.AdvancedAnnotationsComponent.Builder
        public Builder context(Context context) {
            context.getClass();
            this.context = context;
            return this;
        }

        @Override // com.sightcall.advancedannotations.AdvancedAnnotationsComponent.Builder
        public Builder initialSenderColor(AdvancedAnnotationsAPI.InitialSenderColor initialSenderColor) {
            initialSenderColor.getClass();
            this.initialSenderColor = initialSenderColor;
            return this;
        }

        @Override // com.sightcall.advancedannotations.AdvancedAnnotationsComponent.Builder
        public Builder mainScheduler(Scheduler scheduler) {
            scheduler.getClass();
            this.mainScheduler = scheduler;
            return this;
        }

        @Override // com.sightcall.advancedannotations.AdvancedAnnotationsComponent.Builder
        public Builder messageSender(AdvancedAnnotationsAPI.MessageSender messageSender) {
            messageSender.getClass();
            this.messageSender = messageSender;
            return this;
        }

        @Override // com.sightcall.advancedannotations.AdvancedAnnotationsComponent.Builder
        public Builder networkConnector(NetworkConnector networkConnector) {
            networkConnector.getClass();
            this.networkConnector = networkConnector;
            return this;
        }

        @Override // com.sightcall.advancedannotations.AdvancedAnnotationsComponent.Builder
        public Builder senderIdGetter(AdvancedAnnotationsAPI.SenderIdGetter senderIdGetter) {
            senderIdGetter.getClass();
            this.senderIdGetter = senderIdGetter;
            return this;
        }

        @Override // com.sightcall.advancedannotations.AdvancedAnnotationsComponent.Builder
        public Builder stateHandler(AdvancedAnnotationsAPI.StateHandler stateHandler) {
            stateHandler.getClass();
            this.stateHandler = stateHandler;
            return this;
        }

        @Override // com.sightcall.advancedannotations.AdvancedAnnotationsComponent.Builder
        public Builder url(AdvancedAnnotationsAPI.AdvancedAnnotationsSettingsUrl advancedAnnotationsSettingsUrl) {
            advancedAnnotationsSettingsUrl.getClass();
            this.url = advancedAnnotationsSettingsUrl;
            return this;
        }

        private Builder() {
        }
    }
}
