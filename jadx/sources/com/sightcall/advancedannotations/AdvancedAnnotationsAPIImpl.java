package com.sightcall.advancedannotations;

import android.view.View;
import android.view.ViewGroup;
import com.sightcall.advancedannotations.domain.drawer.AnnotationDrawer;
import com.sightcall.advancedannotations.domain.drawingmode.DrawingModeSelector;
import com.sightcall.advancedannotations.domain.event.EventInterpreter;
import com.sightcall.advancedannotations.domain.parser.AdvancedAnnotationsParserImpl;
import com.sightcall.advancedannotations.domain.settings.SettingsInteractor;
import defpackage.v40;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.kotlin.DisposableKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b\u0000\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013J\b\u0010\u001c\u001a\u00020\u001dH\u0016J\b\u0010\u001e\u001a\u00020\u001dH\u0016J\b\u0010\u001f\u001a\u00020\u001dH\u0016J\b\u0010 \u001a\u00020\u001dH\u0016J\b\u0010!\u001a\u00020\u001dH\u0002J\u0010\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020$H\u0002J\u0010\u0010%\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020'H\u0016J\u0010\u0010(\u001a\u00020\u001d2\u0006\u0010)\u001a\u00020*H\u0016J\u0010\u0010+\u001a\u00020\u001d2\u0006\u0010,\u001a\u00020-H\u0016J\u0010\u0010.\u001a\u00020\u001d2\u0006\u0010/\u001a\u000200H\u0016J\u0018\u00101\u001a\u00020\u00192\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u000205H\u0016J\b\u00106\u001a\u00020\u001dH\u0016J\b\u00107\u001a\u00020\u001dH\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u00108\u001a\u00020\u00198VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b9\u0010:R$\u0010<\u001a\u00020\u00192\u0006\u0010;\u001a\u00020\u00198V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b<\u0010:\"\u0004\b=\u0010>¨\u0006?"}, d2 = {"Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPIImpl;", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;", "container", "Landroid/view/ViewGroup;", "interactor", "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;", "messageSender", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;", "stateHandler", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;", "drawingModeSelector", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;", "drawer", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawer;", "eventInterpreter", "Lcom/sightcall/advancedannotations/domain/event/EventInterpreter;", "parser", "Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;", "<init>", "(Landroid/view/ViewGroup;Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawer;Lcom/sightcall/advancedannotations/domain/event/EventInterpreter;Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;)V", "getContainer", "()Landroid/view/ViewGroup;", "disposables", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "internalReady", "", "isPaused", "isLocalTouchEnabled", "pauseAnnotations", "", "resumeAnnotations", "enableLocalTouch", "disableLocalTouch", "handleReadiness", "handleError", "throwable", "", "processAnnotation", "annotation", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;", "selectDrivenMode", "request", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;", "selectUpdateCapability", "capability", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$UpdateCapability;", "selectStandaloneMode", "mode", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;", "processTouch", "touch", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$Touch;", "fromView", "Landroid/view/View;", "clear", "processDeleteAll", "ready", "getReady", "()Z", "value", "isEphemeral", "setEphemeral", "(Z)V", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AdvancedAnnotationsAPIImpl implements AdvancedAnnotationsAPI {
    private final ViewGroup container;
    private final CompositeDisposable disposables;
    private final AnnotationDrawer drawer;
    private final DrawingModeSelector drawingModeSelector;
    private final EventInterpreter eventInterpreter;
    private final SettingsInteractor interactor;
    private boolean internalReady;
    private boolean isLocalTouchEnabled;
    private boolean isPaused;
    private final AdvancedAnnotationsAPI.MessageSender messageSender;
    private final AdvancedAnnotationsParserImpl parser;
    private final AdvancedAnnotationsAPI.StateHandler stateHandler;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[AdvancedAnnotationsAPI.UpdateCapability.values().length];
            try {
                iArr[AdvancedAnnotationsAPI.UpdateCapability.Driven.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AdvancedAnnotationsAPI.UpdateCapability.Standalone.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[AdvancedAnnotationsAPI.StandaloneMode.values().length];
            try {
                iArr2[AdvancedAnnotationsAPI.StandaloneMode.Pointer.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[AdvancedAnnotationsAPI.StandaloneMode.DrawDrop.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public AdvancedAnnotationsAPIImpl(ViewGroup viewGroup, SettingsInteractor settingsInteractor, AdvancedAnnotationsAPI.MessageSender messageSender, AdvancedAnnotationsAPI.StateHandler stateHandler, DrawingModeSelector drawingModeSelector, AnnotationDrawer annotationDrawer, EventInterpreter eventInterpreter, AdvancedAnnotationsParserImpl advancedAnnotationsParserImpl) {
        viewGroup.getClass();
        settingsInteractor.getClass();
        messageSender.getClass();
        stateHandler.getClass();
        drawingModeSelector.getClass();
        annotationDrawer.getClass();
        eventInterpreter.getClass();
        advancedAnnotationsParserImpl.getClass();
        this.container = viewGroup;
        this.interactor = settingsInteractor;
        this.messageSender = messageSender;
        this.stateHandler = stateHandler;
        this.drawingModeSelector = drawingModeSelector;
        this.drawer = annotationDrawer;
        this.eventInterpreter = eventInterpreter;
        this.parser = advancedAnnotationsParserImpl;
        CompositeDisposable compositeDisposable = new CompositeDisposable();
        this.disposables = compositeDisposable;
        this.isLocalTouchEnabled = true;
        settingsInteractor.getActions().onNext(SettingsInteractor.Start.INSTANCE);
        Disposable disposableSubscribe = settingsInteractor.getState().subscribe(new Consumer() { // from class: com.sightcall.advancedannotations.AdvancedAnnotationsAPIImpl.1
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(SettingsInteractor.State state) {
                state.getClass();
                if (Intrinsics.c(state, SettingsInteractor.State.Loading.INSTANCE)) {
                    return;
                }
                if (state instanceof SettingsInteractor.State.Ready) {
                    AdvancedAnnotationsAPIImpl.this.handleReadiness();
                } else if (state instanceof SettingsInteractor.State.Failure) {
                    AdvancedAnnotationsAPIImpl.this.handleError(((SettingsInteractor.State.Failure) state).getThrowable());
                } else {
                    v40.g();
                }
            }
        });
        disposableSubscribe.getClass();
        DisposableKt.a(compositeDisposable, disposableSubscribe);
        Disposable disposableSubscribe2 = advancedAnnotationsParserImpl.getMessageCommands().subscribe(new Consumer() { // from class: com.sightcall.advancedannotations.AdvancedAnnotationsAPIImpl.2
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(AdvancedAnnotationsAPI.InbandMessageAnnotation inbandMessageAnnotation) {
                inbandMessageAnnotation.getClass();
                AdvancedAnnotationsAPIImpl.this.messageSender.processMessage(inbandMessageAnnotation);
            }
        });
        disposableSubscribe2.getClass();
        DisposableKt.a(compositeDisposable, disposableSubscribe2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleError(Throwable throwable) {
        this.internalReady = false;
        this.stateHandler.onError(throwable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleReadiness() {
        this.internalReady = true;
        this.stateHandler.onReady();
    }

    @Override // com.sightcall.advancedannotations.AdvancedAnnotationsAPI
    public void clear() {
        getContainer().setOnTouchListener(null);
        this.interactor.clear();
        this.eventInterpreter.clear();
        this.drawer.clear();
        this.parser.clear();
        this.disposables.d();
    }

    @Override // com.sightcall.advancedannotations.AdvancedAnnotationsAPI
    public void disableLocalTouch() {
        this.isLocalTouchEnabled = false;
    }

    @Override // com.sightcall.advancedannotations.AdvancedAnnotationsAPI
    public void enableLocalTouch() {
        this.isLocalTouchEnabled = true;
    }

    @Override // com.sightcall.advancedannotations.AdvancedAnnotationsAPI
    public ViewGroup getContainer() {
        return this.container;
    }

    @Override // com.sightcall.advancedannotations.AdvancedAnnotationsAPI
    /* JADX INFO: renamed from: getReady, reason: from getter */
    public boolean getInternalReady() {
        return this.internalReady;
    }

    @Override // com.sightcall.advancedannotations.AdvancedAnnotationsAPI
    public boolean isEphemeral() {
        return this.eventInterpreter.getIsEphemeral();
    }

    @Override // com.sightcall.advancedannotations.AdvancedAnnotationsAPI
    public void pauseAnnotations() {
        this.isPaused = true;
    }

    @Override // com.sightcall.advancedannotations.AdvancedAnnotationsAPI
    public void processAnnotation(AdvancedAnnotationsAPI.InbandMessageAnnotation annotation) {
        annotation.getClass();
        if (this.isPaused) {
            return;
        }
        this.parser.parseMessage(annotation);
    }

    @Override // com.sightcall.advancedannotations.AdvancedAnnotationsAPI
    public void processDeleteAll() {
        this.eventInterpreter.processDeleteAll();
    }

    @Override // com.sightcall.advancedannotations.AdvancedAnnotationsAPI
    public boolean processTouch(AdvancedAnnotationsAPI.Touch touch, View fromView) {
        touch.getClass();
        fromView.getClass();
        if (this.isPaused || !this.isLocalTouchEnabled) {
            return true;
        }
        return this.eventInterpreter.processEvent(touch.getMotionEvent(), fromView);
    }

    @Override // com.sightcall.advancedannotations.AdvancedAnnotationsAPI
    public void resumeAnnotations() {
        this.isPaused = false;
    }

    @Override // com.sightcall.advancedannotations.AdvancedAnnotationsAPI
    public void selectDrivenMode(AdvancedAnnotationsAPI.AnnotationRequest request) {
        request.getClass();
        this.drawingModeSelector.selectDrivenMode(request);
    }

    @Override // com.sightcall.advancedannotations.AdvancedAnnotationsAPI
    public void selectStandaloneMode(AdvancedAnnotationsAPI.StandaloneMode mode) {
        DrawingModeSelector.StandaloneMode standaloneMode;
        mode.getClass();
        DrawingModeSelector drawingModeSelector = this.drawingModeSelector;
        int i2 = WhenMappings.$EnumSwitchMapping$1[mode.ordinal()];
        if (i2 == 1) {
            standaloneMode = DrawingModeSelector.StandaloneMode.Pointer;
        } else {
            if (i2 != 2) {
                v40.g();
                return;
            }
            standaloneMode = DrawingModeSelector.StandaloneMode.DrawDrop;
        }
        drawingModeSelector.selectStandaloneMode(standaloneMode);
    }

    @Override // com.sightcall.advancedannotations.AdvancedAnnotationsAPI
    public void selectUpdateCapability(AdvancedAnnotationsAPI.UpdateCapability capability) {
        DrawingModeSelector.UpdateCapability updateCapability;
        capability.getClass();
        DrawingModeSelector drawingModeSelector = this.drawingModeSelector;
        int i2 = WhenMappings.$EnumSwitchMapping$0[capability.ordinal()];
        if (i2 == 1) {
            updateCapability = DrawingModeSelector.UpdateCapability.Driven;
        } else {
            if (i2 != 2) {
                v40.g();
                return;
            }
            updateCapability = DrawingModeSelector.UpdateCapability.Standalone;
        }
        drawingModeSelector.selectUpdateCapability(updateCapability);
    }

    @Override // com.sightcall.advancedannotations.AdvancedAnnotationsAPI
    public void setEphemeral(boolean z) {
        this.eventInterpreter.setEphemeral(z);
    }
}
