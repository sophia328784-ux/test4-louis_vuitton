package com.sightcall.advancedannotations;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sightcall.advancedannotations.data.API;
import com.sightcall.advancedannotations.data.AdvancedAnnotationsRepositoryImpl;
import com.sightcall.advancedannotations.domain.AdvancedAnnotationsRepository;
import com.sightcall.advancedannotations.domain.drawer.AnnotationColor;
import com.sightcall.advancedannotations.domain.drawer.AnnotationDrawer;
import com.sightcall.advancedannotations.domain.drawer.AnnotationDrawerImpl;
import com.sightcall.advancedannotations.domain.drawingmode.DrawingModeSelector;
import com.sightcall.advancedannotations.domain.drawingmode.DrawingModeSelectorImpl;
import com.sightcall.advancedannotations.domain.event.EventInterpreter;
import com.sightcall.advancedannotations.domain.event.EventInterpreterImpl;
import com.sightcall.advancedannotations.domain.parser.AdvancedAnnotationsParser;
import com.sightcall.advancedannotations.domain.parser.AdvancedAnnotationsParserImpl;
import com.sightcall.advancedannotations.domain.settings.SettingsInteractor;
import com.sightcall.advancedannotations.domain.settings.SettingsInteractorImpl;
import com.sightcall.libraries.network.NetworkConnector;
import dagger.Module;
import dagger.Provides;
import io.reactivex.rxjava3.core.Scheduler;
import kotlin.Metadata;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000¨\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0001¢\u0006\u0002\b\bJ\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0001¢\u0006\u0002\b\rJ%\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0006\u001a\u00020\u0007H\u0001¢\u0006\u0002\b\u0013J\u0015\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000fH\u0001¢\u0006\u0002\b\u0017JM\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'H\u0001¢\u0006\u0002\b(J\u0015\u0010)\u001a\u00020\u001d2\u0006\u0010*\u001a\u00020+H\u0001¢\u0006\u0002\b,J=\u0010-\u001a\u00020\u001f2\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010.\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020/2\u0006\u0010 \u001a\u0002002\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u00101\u001a\u000202H\u0001¢\u0006\u0002\b3J\u0015\u00104\u001a\u0002052\u0006\u0010\"\u001a\u00020#H\u0001¢\u0006\u0002\b6J\u0015\u00107\u001a\u0002082\u0006\u0010\"\u001a\u00020#H\u0001¢\u0006\u0002\b9J\u0015\u0010:\u001a\u00020/2\u0006\u0010\"\u001a\u00020#H\u0001¢\u0006\u0002\b;J\u001d\u0010<\u001a\u00020#2\u0006\u0010 \u001a\u0002002\u0006\u0010=\u001a\u00020>H\u0001¢\u0006\u0002\b?J-\u0010@\u001a\u00020A2\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010.\u001a\u00020\u00152\u0006\u00101\u001a\u000202H\u0001¢\u0006\u0002\bBJ\u0015\u0010C\u001a\u00020!2\u0006\u0010D\u001a\u00020AH\u0001¢\u0006\u0002\bEJ\u0015\u0010F\u001a\u0002002\u0006\u0010D\u001a\u00020AH\u0001¢\u0006\u0002\bG¨\u0006H"}, d2 = {"Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;", "", "<init>", "()V", "provideContainer", "Landroid/view/ViewGroup;", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "provideContainer$advancedannotations_release", "provideAPI", "Lcom/sightcall/advancedannotations/data/API;", "networkConnector", "Lcom/sightcall/libraries/network/NetworkConnector;", "provideAPI$advancedannotations_release", "provideRepository", "Lcom/sightcall/advancedannotations/domain/AdvancedAnnotationsRepository;", "api", ConfigurationName.DOWNLOAD_PLUGIN_URL, "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;", "provideRepository$advancedannotations_release", "provideSettingsInteractor", "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;", "repository", "provideSettingsInteractor$advancedannotations_release", "provideAdvancedAnnotationAPI", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;", "viewGroup", "interactor", "drawingModeSelector", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;", "drawer", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawer;", "eventInterpreter", "Lcom/sightcall/advancedannotations/domain/event/EventInterpreter;", "parser", "Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;", "messageSender", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;", "stateHandler", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;", "provideAdvancedAnnotationAPI$advancedannotations_release", "provideDrawingModeSelector", "color", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;", "provideDrawingModeSelector$advancedannotations_release", "provideDrawer", "settingsInteractor", "Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParser$Out;", "Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;", "mainScheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "provideDrawer$advancedannotations_release", "provideParser", "Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParser;", "provideParser$advancedannotations_release", "provideParserIn", "Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParser$In;", "provideParserIn$advancedannotations_release", "provideParserOut", "provideParserOut$advancedannotations_release", "provideParserImpl", "senderIdGetter", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;", "provideParserImpl$advancedannotations_release", "provideEventInterpreterImpl", "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;", "provideEventInterpreterImpl$advancedannotations_release", "provideEventInterpreter", "interpreter", "provideEventInterpreter$advancedannotations_release", "provideEventInterpreterOut", "provideEventInterpreterOut$advancedannotations_release", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Module
public final class AdvancedAnnotationsModule {
    @Provides
    @AdvancedAnnotationsScope
    public final API provideAPI$advancedannotations_release(NetworkConnector networkConnector) {
        networkConnector.getClass();
        return (API) networkConnector.create(API.class);
    }

    @Provides
    @AdvancedAnnotationsScope
    public final AdvancedAnnotationsAPI provideAdvancedAnnotationAPI$advancedannotations_release(ViewGroup viewGroup, SettingsInteractor interactor, DrawingModeSelector drawingModeSelector, AnnotationDrawer drawer, EventInterpreter eventInterpreter, AdvancedAnnotationsParserImpl parser, AdvancedAnnotationsAPI.MessageSender messageSender, AdvancedAnnotationsAPI.StateHandler stateHandler) {
        viewGroup.getClass();
        interactor.getClass();
        drawingModeSelector.getClass();
        drawer.getClass();
        eventInterpreter.getClass();
        parser.getClass();
        messageSender.getClass();
        stateHandler.getClass();
        return new AdvancedAnnotationsAPIImpl(viewGroup, interactor, messageSender, stateHandler, drawingModeSelector, drawer, eventInterpreter, parser);
    }

    @Provides
    @AdvancedAnnotationsScope
    public final ViewGroup provideContainer$advancedannotations_release(Context context) {
        context.getClass();
        ConstraintLayout constraintLayout = new ConstraintLayout(context);
        constraintLayout.setId(View.generateViewId());
        constraintLayout.setClipChildren(false);
        constraintLayout.setClipToPadding(false);
        return constraintLayout;
    }

    @Provides
    @AdvancedAnnotationsScope
    public final AnnotationDrawer provideDrawer$advancedannotations_release(ViewGroup viewGroup, SettingsInteractor settingsInteractor, AdvancedAnnotationsParser.Out parser, EventInterpreter.Out eventInterpreter, DrawingModeSelector drawingModeSelector, Scheduler mainScheduler) {
        viewGroup.getClass();
        settingsInteractor.getClass();
        parser.getClass();
        eventInterpreter.getClass();
        drawingModeSelector.getClass();
        mainScheduler.getClass();
        return new AnnotationDrawerImpl(viewGroup, settingsInteractor, parser, eventInterpreter, drawingModeSelector, mainScheduler);
    }

    @Provides
    @AdvancedAnnotationsScope
    public final DrawingModeSelector provideDrawingModeSelector$advancedannotations_release(AdvancedAnnotationsAPI.InitialSenderColor color) {
        color.getClass();
        return new DrawingModeSelectorImpl(new AnnotationColor(color.getValue()));
    }

    @Provides
    @AdvancedAnnotationsScope
    public final EventInterpreter provideEventInterpreter$advancedannotations_release(EventInterpreterImpl interpreter) {
        interpreter.getClass();
        return interpreter;
    }

    @Provides
    @AdvancedAnnotationsScope
    public final EventInterpreterImpl provideEventInterpreterImpl$advancedannotations_release(ViewGroup viewGroup, DrawingModeSelector drawingModeSelector, SettingsInteractor settingsInteractor, Scheduler mainScheduler) {
        viewGroup.getClass();
        drawingModeSelector.getClass();
        settingsInteractor.getClass();
        mainScheduler.getClass();
        return new EventInterpreterImpl(viewGroup, mainScheduler, drawingModeSelector, settingsInteractor, false, 16, null);
    }

    @Provides
    @AdvancedAnnotationsScope
    public final EventInterpreter.Out provideEventInterpreterOut$advancedannotations_release(EventInterpreterImpl interpreter) {
        interpreter.getClass();
        return interpreter;
    }

    @Provides
    @AdvancedAnnotationsScope
    public final AdvancedAnnotationsParser provideParser$advancedannotations_release(AdvancedAnnotationsParserImpl parser) {
        parser.getClass();
        return parser;
    }

    @Provides
    @AdvancedAnnotationsScope
    public final AdvancedAnnotationsParserImpl provideParserImpl$advancedannotations_release(EventInterpreter.Out eventInterpreter, AdvancedAnnotationsAPI.SenderIdGetter senderIdGetter) {
        eventInterpreter.getClass();
        senderIdGetter.getClass();
        return new AdvancedAnnotationsParserImpl(eventInterpreter, senderIdGetter);
    }

    @Provides
    @AdvancedAnnotationsScope
    public final AdvancedAnnotationsParser.In provideParserIn$advancedannotations_release(AdvancedAnnotationsParserImpl parser) {
        parser.getClass();
        return parser;
    }

    @Provides
    @AdvancedAnnotationsScope
    public final AdvancedAnnotationsParser.Out provideParserOut$advancedannotations_release(AdvancedAnnotationsParserImpl parser) {
        parser.getClass();
        return parser;
    }

    @Provides
    @AdvancedAnnotationsScope
    public final AdvancedAnnotationsRepository provideRepository$advancedannotations_release(API api, AdvancedAnnotationsAPI.AdvancedAnnotationsSettingsUrl url, Context context) {
        api.getClass();
        url.getClass();
        context.getClass();
        return new AdvancedAnnotationsRepositoryImpl(api, url, context);
    }

    @Provides
    @AdvancedAnnotationsScope
    public final SettingsInteractor provideSettingsInteractor$advancedannotations_release(AdvancedAnnotationsRepository repository) {
        repository.getClass();
        return new SettingsInteractorImpl(repository);
    }
}
