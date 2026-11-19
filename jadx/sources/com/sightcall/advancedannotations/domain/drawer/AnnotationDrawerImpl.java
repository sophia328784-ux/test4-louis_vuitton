package com.sightcall.advancedannotations.domain.drawer;

import android.view.ViewGroup;
import com.batch.android.s.b;
import com.sightcall.advancedannotations.domain.drawer.annotation.AddPosition;
import com.sightcall.advancedannotations.domain.drawer.annotation.Annotation;
import com.sightcall.advancedannotations.domain.drawer.annotation.LineAnnotation;
import com.sightcall.advancedannotations.domain.drawer.annotation.PointerAnnotation;
import com.sightcall.advancedannotations.domain.drawer.annotation.ResourceAnnotation;
import com.sightcall.advancedannotations.domain.drawer.annotation.SetColor;
import com.sightcall.advancedannotations.domain.drawer.annotation.SetPosition;
import com.sightcall.advancedannotations.domain.drawer.annotation.SetRotation;
import com.sightcall.advancedannotations.domain.drawer.annotation.SetScale;
import com.sightcall.advancedannotations.domain.drawer.annotation.SetSetting;
import com.sightcall.advancedannotations.domain.drawer.annotation.SetText;
import com.sightcall.advancedannotations.domain.drawer.annotation.TextAnnotation;
import com.sightcall.advancedannotations.domain.drawingmode.DrawingModeSelector;
import com.sightcall.advancedannotations.domain.event.EventInterpreter;
import com.sightcall.advancedannotations.domain.parser.AdvancedAnnotationsParser;
import com.sightcall.advancedannotations.domain.settings.Setting;
import com.sightcall.advancedannotations.domain.settings.SettingKt;
import com.sightcall.advancedannotations.domain.settings.SettingsInteractor;
import com.sightcall.libraries.ui.ViewLayoutSizeChangeEvent;
import com.sightcall.libraries.ui.Views;
import com.sightcall.universal.util.RealWearUtilsKt;
import defpackage.fc;
import defpackage.o60;
import defpackage.v40;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.kotlin.ObservablesKt;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u00002\u00020\u0001:\u000223B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0004\b\u000e\u0010\u000fJ\b\u0010\u001a\u001a\u00020\u001bH\u0002J\u0016\u0010\u001c\u001a\u00020\u001d*\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0002J0\u0010!\u001a\u00020\u001b2\u0016\u0010\"\u001a\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011j\u0002`\u00142\u0006\u0010#\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\u001dH\u0002J\u0014\u0010%\u001a\u00020\u001b*\u00020\u00132\u0006\u0010$\u001a\u00020\u001dH\u0002J(\u0010&\u001a\u00020\u001b2\u0016\u0010\"\u001a\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011j\u0002`\u00142\u0006\u0010'\u001a\u00020(H\u0002J6\u0010)\u001a\u00020\u001b2\u0016\u0010\"\u001a\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011j\u0002`\u00142\u0006\u0010'\u001a\u00020(2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u001b0+H\u0002J\b\u0010,\u001a\u00020\u001bH\u0002J \u0010,\u001a\u00020\u001b2\u0016\u0010-\u001a\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011j\u0002`\u0014H\u0002J/\u0010.\u001a\u0004\u0018\u00010\u001b2\u0016\u0010-\u001a\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011j\u0002`\u00142\u0006\u0010'\u001a\u00020\u0012H\u0002¢\u0006\u0002\u0010/J\b\u00100\u001a\u00020\u001bH\u0002J\b\u00101\u001a\u00020\u001bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011j\u0002`\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R.\u0010\u0015\u001a\"\u0012\u0004\u0012\u00020\u0016\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011j\u0002`\u00140\u0011j\u0002`\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00064"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawer;", "view", "Landroid/view/ViewGroup;", "settingsInteractor", "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;", "parser", "Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParser$Out;", "eventInterpreter", "Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;", "drawingModeSelector", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;", "mainScheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "<init>", "(Landroid/view/ViewGroup;Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParser$Out;Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;Lio/reactivex/rxjava3/core/Scheduler;)V", "localAnnotationList", "", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;", "Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationList;", "remoteAnnotationList", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;", "Lcom/sightcall/advancedannotations/domain/drawer/SenderList;", "disposables", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "updateAnnotationsLayout", "", "createConfiguration", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;", "setting", "Lcom/sightcall/advancedannotations/domain/settings/Setting;", "createAnnotation", "list", b.a.f24015b, RealWearUtilsKt.EXTRA_RESULT, "update", "handleDeleteAnnotationCommand", "annotationId", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;", "handleFadeOutAnnotationCommand", "completion", "Lkotlin/Function0;", "movePointerToFront", "map", "moveAnnotationToFront", "(Ljava/util/Map;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;)Lkotlin/Unit;", "deleteAllAnnotations", "clear", "Instruction", "AnnotationConfiguration", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AnnotationDrawerImpl implements AnnotationDrawer {
    private final CompositeDisposable disposables;
    private final Map<AnnotationId.Specific, Annotation> localAnnotationList;
    private final Scheduler mainScheduler;
    private final Map<AnnotationSenderId, Map<AnnotationId.Specific, Annotation>> remoteAnnotationList;
    private final ViewGroup view;

    @Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b(\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0080\b\u0018\u00002\u00020\u0001B{\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018¢\u0006\u0004\b\u0019\u0010\u001aJ\t\u00101\u001a\u00020\u0003HÆ\u0003J\t\u00102\u001a\u00020\u0005HÆ\u0003J\t\u00103\u001a\u00020\u0007HÆ\u0003J\t\u00104\u001a\u00020\u0007HÆ\u0003J\u000f\u00105\u001a\b\u0012\u0004\u0012\u00020\u000b0\nHÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0012HÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0014HÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0016HÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0018HÆ\u0003J\u0095\u0001\u0010=\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÆ\u0001J\u0014\u0010>\u001a\u00020\u00072\b\u0010?\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010@\u001a\u00020AHÖ\u0081\u0004J\n\u0010B\u001a\u00020CHÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0011\u0010\b\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b!\u0010 R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\b\n\u0000\u001a\u0004\b&\u0010'R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\b\n\u0000\u001a\u0004\b(\u0010'R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0014¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0016¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u0018¢\u0006\b\n\u0000\u001a\u0004\b/\u00100¨\u0006D"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;", "", "senderId", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;", "annotationId", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;", "delete", "", "fadeOut", "fadeOutCompletion", "Lkotlin/Function0;", "", "setting", "Lcom/sightcall/advancedannotations/domain/settings/Setting;", "position", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;", "line", "scale", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;", "rotation", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;", "color", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;", "text", "Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;", "<init>", "(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;ZZLkotlin/jvm/functions/Function0;Lcom/sightcall/advancedannotations/domain/settings/Setting;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;)V", "getSenderId", "()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;", "getAnnotationId", "()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;", "getDelete", "()Z", "getFadeOut", "getFadeOutCompletion", "()Lkotlin/jvm/functions/Function0;", "getSetting", "()Lcom/sightcall/advancedannotations/domain/settings/Setting;", "getPosition", "()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;", "getLine", "getScale", "()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;", "getRotation", "()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;", "getColor", "()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;", "getText", "()Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "copy", "equals", "other", "hashCode", "", "toString", "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AnnotationConfiguration {
        private final AnnotationId annotationId;
        private final AnnotationColor color;
        private final boolean delete;
        private final boolean fadeOut;
        private final Function0<Unit> fadeOutCompletion;
        private final AnnotationPosition line;
        private final AnnotationPosition position;
        private final AnnotationRotation rotation;
        private final AnnotationScale scale;
        private final AnnotationSenderId senderId;
        private final Setting setting;
        private final TextParameters text;

        public AnnotationConfiguration(AnnotationSenderId annotationSenderId, AnnotationId annotationId, boolean z, boolean z2, Function0<Unit> function0, Setting setting, AnnotationPosition annotationPosition, AnnotationPosition annotationPosition2, AnnotationScale annotationScale, AnnotationRotation annotationRotation, AnnotationColor annotationColor, TextParameters textParameters) {
            annotationSenderId.getClass();
            annotationId.getClass();
            function0.getClass();
            this.senderId = annotationSenderId;
            this.annotationId = annotationId;
            this.delete = z;
            this.fadeOut = z2;
            this.fadeOutCompletion = function0;
            this.setting = setting;
            this.position = annotationPosition;
            this.line = annotationPosition2;
            this.scale = annotationScale;
            this.rotation = annotationRotation;
            this.color = annotationColor;
            this.text = textParameters;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ AnnotationConfiguration copy$default(AnnotationConfiguration annotationConfiguration, AnnotationSenderId annotationSenderId, AnnotationId annotationId, boolean z, boolean z2, Function0 function0, Setting setting, AnnotationPosition annotationPosition, AnnotationPosition annotationPosition2, AnnotationScale annotationScale, AnnotationRotation annotationRotation, AnnotationColor annotationColor, TextParameters textParameters, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                annotationSenderId = annotationConfiguration.senderId;
            }
            if ((i2 & 2) != 0) {
                annotationId = annotationConfiguration.annotationId;
            }
            if ((i2 & 4) != 0) {
                z = annotationConfiguration.delete;
            }
            if ((i2 & 8) != 0) {
                z2 = annotationConfiguration.fadeOut;
            }
            if ((i2 & 16) != 0) {
                function0 = annotationConfiguration.fadeOutCompletion;
            }
            if ((i2 & 32) != 0) {
                setting = annotationConfiguration.setting;
            }
            if ((i2 & 64) != 0) {
                annotationPosition = annotationConfiguration.position;
            }
            if ((i2 & 128) != 0) {
                annotationPosition2 = annotationConfiguration.line;
            }
            if ((i2 & 256) != 0) {
                annotationScale = annotationConfiguration.scale;
            }
            if ((i2 & 512) != 0) {
                annotationRotation = annotationConfiguration.rotation;
            }
            if ((i2 & 1024) != 0) {
                annotationColor = annotationConfiguration.color;
            }
            if ((i2 & 2048) != 0) {
                textParameters = annotationConfiguration.text;
            }
            AnnotationColor annotationColor2 = annotationColor;
            TextParameters textParameters2 = textParameters;
            AnnotationScale annotationScale2 = annotationScale;
            AnnotationRotation annotationRotation2 = annotationRotation;
            AnnotationPosition annotationPosition3 = annotationPosition;
            AnnotationPosition annotationPosition4 = annotationPosition2;
            Function0 function1 = function0;
            Setting setting2 = setting;
            return annotationConfiguration.copy(annotationSenderId, annotationId, z, z2, function1, setting2, annotationPosition3, annotationPosition4, annotationScale2, annotationRotation2, annotationColor2, textParameters2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final AnnotationSenderId getSenderId() {
            return this.senderId;
        }

        /* JADX INFO: renamed from: component10, reason: from getter */
        public final AnnotationRotation getRotation() {
            return this.rotation;
        }

        /* JADX INFO: renamed from: component11, reason: from getter */
        public final AnnotationColor getColor() {
            return this.color;
        }

        /* JADX INFO: renamed from: component12, reason: from getter */
        public final TextParameters getText() {
            return this.text;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final AnnotationId getAnnotationId() {
            return this.annotationId;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final boolean getDelete() {
            return this.delete;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final boolean getFadeOut() {
            return this.fadeOut;
        }

        public final Function0<Unit> component5() {
            return this.fadeOutCompletion;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final Setting getSetting() {
            return this.setting;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final AnnotationPosition getPosition() {
            return this.position;
        }

        /* JADX INFO: renamed from: component8, reason: from getter */
        public final AnnotationPosition getLine() {
            return this.line;
        }

        /* JADX INFO: renamed from: component9, reason: from getter */
        public final AnnotationScale getScale() {
            return this.scale;
        }

        public final AnnotationConfiguration copy(AnnotationSenderId senderId, AnnotationId annotationId, boolean delete, boolean fadeOut, Function0<Unit> fadeOutCompletion, Setting setting, AnnotationPosition position, AnnotationPosition line, AnnotationScale scale, AnnotationRotation rotation, AnnotationColor color, TextParameters text) {
            senderId.getClass();
            annotationId.getClass();
            fadeOutCompletion.getClass();
            return new AnnotationConfiguration(senderId, annotationId, delete, fadeOut, fadeOutCompletion, setting, position, line, scale, rotation, color, text);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof AnnotationConfiguration)) {
                return false;
            }
            AnnotationConfiguration annotationConfiguration = (AnnotationConfiguration) other;
            return Intrinsics.c(this.senderId, annotationConfiguration.senderId) && Intrinsics.c(this.annotationId, annotationConfiguration.annotationId) && this.delete == annotationConfiguration.delete && this.fadeOut == annotationConfiguration.fadeOut && Intrinsics.c(this.fadeOutCompletion, annotationConfiguration.fadeOutCompletion) && Intrinsics.c(this.setting, annotationConfiguration.setting) && Intrinsics.c(this.position, annotationConfiguration.position) && Intrinsics.c(this.line, annotationConfiguration.line) && Intrinsics.c(this.scale, annotationConfiguration.scale) && Intrinsics.c(this.rotation, annotationConfiguration.rotation) && Intrinsics.c(this.color, annotationConfiguration.color) && Intrinsics.c(this.text, annotationConfiguration.text);
        }

        public final AnnotationId getAnnotationId() {
            return this.annotationId;
        }

        public final AnnotationColor getColor() {
            return this.color;
        }

        public final boolean getDelete() {
            return this.delete;
        }

        public final boolean getFadeOut() {
            return this.fadeOut;
        }

        public final Function0<Unit> getFadeOutCompletion() {
            return this.fadeOutCompletion;
        }

        public final AnnotationPosition getLine() {
            return this.line;
        }

        public final AnnotationPosition getPosition() {
            return this.position;
        }

        public final AnnotationRotation getRotation() {
            return this.rotation;
        }

        public final AnnotationScale getScale() {
            return this.scale;
        }

        public final AnnotationSenderId getSenderId() {
            return this.senderId;
        }

        public final Setting getSetting() {
            return this.setting;
        }

        public final TextParameters getText() {
            return this.text;
        }

        public int hashCode() {
            int iHashCode = (this.fadeOutCompletion.hashCode() + o60.b(o60.b((this.annotationId.hashCode() + (this.senderId.hashCode() * 31)) * 31, 31, this.delete), 31, this.fadeOut)) * 31;
            Setting setting = this.setting;
            int iHashCode2 = (iHashCode + (setting == null ? 0 : setting.hashCode())) * 31;
            AnnotationPosition annotationPosition = this.position;
            int iHashCode3 = (iHashCode2 + (annotationPosition == null ? 0 : annotationPosition.hashCode())) * 31;
            AnnotationPosition annotationPosition2 = this.line;
            int iHashCode4 = (iHashCode3 + (annotationPosition2 == null ? 0 : annotationPosition2.hashCode())) * 31;
            AnnotationScale annotationScale = this.scale;
            int iHashCode5 = (iHashCode4 + (annotationScale == null ? 0 : annotationScale.hashCode())) * 31;
            AnnotationRotation annotationRotation = this.rotation;
            int iHashCode6 = (iHashCode5 + (annotationRotation == null ? 0 : annotationRotation.hashCode())) * 31;
            AnnotationColor annotationColor = this.color;
            int iHashCode7 = (iHashCode6 + (annotationColor == null ? 0 : annotationColor.hashCode())) * 31;
            TextParameters textParameters = this.text;
            return iHashCode7 + (textParameters != null ? textParameters.hashCode() : 0);
        }

        public String toString() {
            AnnotationSenderId annotationSenderId = this.senderId;
            AnnotationId annotationId = this.annotationId;
            boolean z = this.delete;
            boolean z2 = this.fadeOut;
            Function0<Unit> function0 = this.fadeOutCompletion;
            Setting setting = this.setting;
            AnnotationPosition annotationPosition = this.position;
            AnnotationPosition annotationPosition2 = this.line;
            AnnotationScale annotationScale = this.scale;
            AnnotationRotation annotationRotation = this.rotation;
            AnnotationColor annotationColor = this.color;
            TextParameters textParameters = this.text;
            StringBuilder sb = new StringBuilder("AnnotationConfiguration(senderId=");
            sb.append(annotationSenderId);
            sb.append(", annotationId=");
            sb.append(annotationId);
            sb.append(", delete=");
            fc.y(sb, z, ", fadeOut=", z2, ", fadeOutCompletion=");
            sb.append(function0);
            sb.append(", setting=");
            sb.append(setting);
            sb.append(", position=");
            sb.append(annotationPosition);
            sb.append(", line=");
            sb.append(annotationPosition2);
            sb.append(", scale=");
            sb.append(annotationScale);
            sb.append(", rotation=");
            sb.append(annotationRotation);
            sb.append(", color=");
            sb.append(annotationColor);
            sb.append(", text=");
            sb.append(textParameters);
            sb.append(")");
            return sb.toString();
        }
    }

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B'\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006HÆ\u0003J\t\u0010\u0010\u001a\u00020\bHÆ\u0003J-\u0010\u0011\u001a\u00020\u00002\u0018\b\u0002\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0014\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0015\u001a\u00020\u0016HÖ\u0081\u0004J\n\u0010\u0017\u001a\u00020\u0018HÖ\u0081\u0004R!\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;", "", "map", "", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;", "Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationList;", RealWearUtilsKt.EXTRA_RESULT, "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;", "<init>", "(Ljava/util/Map;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;)V", "getMap", "()Ljava/util/Map;", "getCommand", "()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Instruction {
        private final AnnotationParameters command;
        private final Map<AnnotationId.Specific, Annotation> map;

        public Instruction(Map<AnnotationId.Specific, Annotation> map, AnnotationParameters annotationParameters) {
            map.getClass();
            annotationParameters.getClass();
            this.map = map;
            this.command = annotationParameters;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Instruction copy$default(Instruction instruction, Map map, AnnotationParameters annotationParameters, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                map = instruction.map;
            }
            if ((i2 & 2) != 0) {
                annotationParameters = instruction.command;
            }
            return instruction.copy(map, annotationParameters);
        }

        public final Map<AnnotationId.Specific, Annotation> component1() {
            return this.map;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final AnnotationParameters getCommand() {
            return this.command;
        }

        public final Instruction copy(Map<AnnotationId.Specific, Annotation> map, AnnotationParameters command) {
            map.getClass();
            command.getClass();
            return new Instruction(map, command);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Instruction)) {
                return false;
            }
            Instruction instruction = (Instruction) other;
            return Intrinsics.c(this.map, instruction.map) && Intrinsics.c(this.command, instruction.command);
        }

        public final AnnotationParameters getCommand() {
            return this.command;
        }

        public final Map<AnnotationId.Specific, Annotation> getMap() {
            return this.map;
        }

        public int hashCode() {
            return this.command.hashCode() + (this.map.hashCode() * 31);
        }

        public String toString() {
            return "Instruction(map=" + this.map + ", command=" + this.command + ")";
        }
    }

    public AnnotationDrawerImpl(ViewGroup viewGroup, SettingsInteractor settingsInteractor, AdvancedAnnotationsParser.Out out, EventInterpreter.Out out2, DrawingModeSelector drawingModeSelector, Scheduler scheduler) {
        viewGroup.getClass();
        settingsInteractor.getClass();
        out.getClass();
        out2.getClass();
        drawingModeSelector.getClass();
        scheduler.getClass();
        this.view = viewGroup;
        this.mainScheduler = scheduler;
        this.localAnnotationList = new LinkedHashMap();
        this.remoteAnnotationList = new LinkedHashMap();
        CompositeDisposable compositeDisposable = new CompositeDisposable();
        this.disposables = compositeDisposable;
        Observable map = Observable.merge(out.getAnnotationParameters(), out2.getAnnotationCommands().filter(new Predicate() { // from class: com.sightcall.advancedannotations.domain.drawer.AnnotationDrawerImpl$annotationParameters$1
            @Override // io.reactivex.rxjava3.functions.Predicate
            public final boolean test(AnnotationCommand annotationCommand) {
                annotationCommand.getClass();
                return annotationCommand.getDisplayed();
            }
        }).map(new Function() { // from class: com.sightcall.advancedannotations.domain.drawer.AnnotationDrawerImpl$annotationParameters$2
            @Override // io.reactivex.rxjava3.functions.Function
            public final AnnotationParameters apply(AnnotationCommand annotationCommand) {
                annotationCommand.getClass();
                return annotationCommand.getParameters();
            }
        })).map(new Function() { // from class: com.sightcall.advancedannotations.domain.drawer.AnnotationDrawerImpl$annotationParameters$3
            @Override // io.reactivex.rxjava3.functions.Function
            public final AnnotationDrawerImpl.Instruction apply(AnnotationParameters annotationParameters) {
                annotationParameters.getClass();
                AnnotationSenderId senderId = annotationParameters.getSenderId();
                if (Intrinsics.c(senderId, AnnotationSenderId.Local.INSTANCE)) {
                    return new AnnotationDrawerImpl.Instruction(this.this$0.localAnnotationList, annotationParameters);
                }
                if (!(senderId instanceof AnnotationSenderId.Remote)) {
                    v40.g();
                    return null;
                }
                Map map2 = this.this$0.remoteAnnotationList;
                AnnotationSenderId senderId2 = annotationParameters.getSenderId();
                Object linkedHashMap = map2.get(senderId2);
                if (linkedHashMap == null) {
                    linkedHashMap = new LinkedHashMap();
                    map2.put(senderId2, linkedHashMap);
                }
                return new AnnotationDrawerImpl.Instruction((Map) linkedHashMap, annotationParameters);
            }
        });
        map.getClass();
        Observable observableFilter = map.filter(new Predicate() { // from class: com.sightcall.advancedannotations.domain.drawer.AnnotationDrawerImpl$annotationConfiguration$1
            @Override // io.reactivex.rxjava3.functions.Predicate
            public final boolean test(AnnotationDrawerImpl.Instruction instruction) {
                instruction.getClass();
                return (instruction.getCommand().getResourceId() == null || instruction.getCommand().getResourceId().getValue() == 0) ? false : true;
            }
        });
        observableFilter.getClass();
        Observable<U> observableCast = settingsInteractor.getState().filter(new Predicate() { // from class: com.sightcall.advancedannotations.domain.drawer.AnnotationDrawerImpl$special$$inlined$filterByCasting$1
            @Override // io.reactivex.rxjava3.functions.Predicate
            public final boolean test(T t) {
                t.getClass();
                return t instanceof SettingsInteractor.State.Ready;
            }
        }).cast(SettingsInteractor.State.Ready.class);
        observableCast.getClass();
        Observable map2 = observableCast.map(new Function() { // from class: com.sightcall.advancedannotations.domain.drawer.AnnotationDrawerImpl$special$$inlined$filterByCasting$2
            @Override // io.reactivex.rxjava3.functions.Function
            public final List<? extends Setting> apply(SettingsInteractor.State.Ready ready) {
                ready.getClass();
                return ready.getSettings();
            }
        });
        map2.getClass();
        Observable observableFilter2 = ObservablesKt.a(observableFilter, map2).filter(new Predicate() { // from class: com.sightcall.advancedannotations.domain.drawer.AnnotationDrawerImpl$annotationConfiguration$3
            @Override // io.reactivex.rxjava3.functions.Predicate
            public final boolean test(Pair<AnnotationDrawerImpl.Instruction, ? extends List<Setting>> pair) {
                pair.getClass();
                Object obj = pair.f71705b;
                obj.getClass();
                List list = (List) pair.f71706c;
                ResourceId resourceId = ((AnnotationDrawerImpl.Instruction) obj).getCommand().getResourceId();
                return resourceId != null && list.size() > resourceId.getValue();
            }
        });
        observableFilter2.getClass();
        Observable observableMerge = Observable.merge(ObservablesKt.a(observableFilter2, drawingModeSelector.getState()).map(new Function() { // from class: com.sightcall.advancedannotations.domain.drawer.AnnotationDrawerImpl$annotationConfiguration$4
            @Override // io.reactivex.rxjava3.functions.Function
            public final Pair<Map<AnnotationId.Specific, Annotation>, AnnotationDrawerImpl.AnnotationConfiguration> apply(Pair<? extends Pair<AnnotationDrawerImpl.Instruction, ? extends List<Setting>>, DrawingModeSelector.Mode> pair) {
                pair.getClass();
                Object obj = pair.f71705b;
                obj.getClass();
                Pair pair2 = (Pair) obj;
                Object obj2 = pair.f71706c;
                obj2.getClass();
                Object obj3 = pair2.f71705b;
                obj3.getClass();
                AnnotationDrawerImpl.Instruction instructionCopy$default = (AnnotationDrawerImpl.Instruction) obj3;
                List list = (List) pair2.f71706c;
                if (((DrawingModeSelector.Mode) obj2).getWriteMode() == DrawingModeSelector.UpdateCapability.Standalone) {
                    instructionCopy$default = AnnotationDrawerImpl.Instruction.copy$default(instructionCopy$default, null, AnnotationParameters.copy$default(instructionCopy$default.getCommand(), null, false, null, false, false, null, null, null, null, new AnnotationScale(45), null, null, null, 7679, null), 1, null);
                }
                Map<AnnotationId.Specific, Annotation> map3 = instructionCopy$default.getMap();
                AnnotationDrawerImpl annotationDrawerImpl = this.this$0;
                AnnotationParameters command = instructionCopy$default.getCommand();
                ResourceId resourceId = instructionCopy$default.getCommand().getResourceId();
                return new Pair<>(map3, annotationDrawerImpl.createConfiguration(command, resourceId != null ? (Setting) list.get(resourceId.getValue()) : null));
            }
        }), map.filter(new Predicate() { // from class: com.sightcall.advancedannotations.domain.drawer.AnnotationDrawerImpl$annotationConfiguration$5
            @Override // io.reactivex.rxjava3.functions.Predicate
            public final boolean test(AnnotationDrawerImpl.Instruction instruction) {
                instruction.getClass();
                return instruction.getCommand().getResourceId() == null || instruction.getCommand().getResourceId().getValue() == 0;
            }
        }).map(new Function() { // from class: com.sightcall.advancedannotations.domain.drawer.AnnotationDrawerImpl$annotationConfiguration$6
            @Override // io.reactivex.rxjava3.functions.Function
            public final Pair<Map<AnnotationId.Specific, Annotation>, AnnotationDrawerImpl.AnnotationConfiguration> apply(AnnotationDrawerImpl.Instruction instruction) {
                instruction.getClass();
                ResourceId resourceId = instruction.getCommand().getResourceId();
                return new Pair<>(instruction.getMap(), this.this$0.createConfiguration(instruction.getCommand(), (resourceId == null || resourceId.getValue() != 0) ? null : SettingKt.getPointerSetting()));
            }
        }));
        observableMerge.getClass();
        Disposable disposableSubscribe = observableMerge.observeOn(scheduler).subscribe(new Consumer() { // from class: com.sightcall.advancedannotations.domain.drawer.AnnotationDrawerImpl.1
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Pair<? extends Map<AnnotationId.Specific, Annotation>, AnnotationConfiguration> pair) {
                pair.getClass();
                Map map3 = (Map) pair.f71705b;
                AnnotationConfiguration annotationConfiguration = (AnnotationConfiguration) pair.f71706c;
                if (annotationConfiguration.getDelete()) {
                    AnnotationDrawerImpl.this.handleDeleteAnnotationCommand(map3, annotationConfiguration.getAnnotationId());
                    return;
                }
                if (annotationConfiguration.getFadeOut()) {
                    AnnotationDrawerImpl.this.handleFadeOutAnnotationCommand(map3, annotationConfiguration.getAnnotationId(), annotationConfiguration.getFadeOutCompletion());
                    return;
                }
                if (annotationConfiguration.getAnnotationId() instanceof AnnotationId.Specific) {
                    Annotation annotation = (Annotation) map3.get(annotationConfiguration.getAnnotationId());
                    AnnotationDrawerImpl annotationDrawerImpl = AnnotationDrawerImpl.this;
                    if (annotation != null) {
                        annotationDrawerImpl.update(annotation, annotationConfiguration);
                    } else {
                        annotationDrawerImpl.createAnnotation(map3, (AnnotationId.Specific) annotationConfiguration.getAnnotationId(), annotationConfiguration);
                    }
                }
            }
        });
        disposableSubscribe.getClass();
        compositeDisposable.b(disposableSubscribe);
        Disposable disposableSubscribe2 = Views.layoutSizeChangedEvents(viewGroup).observeOn(scheduler).subscribe(new Consumer() { // from class: com.sightcall.advancedannotations.domain.drawer.AnnotationDrawerImpl.2
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(ViewLayoutSizeChangeEvent viewLayoutSizeChangeEvent) {
                viewLayoutSizeChangeEvent.getClass();
                AnnotationDrawerImpl.this.updateAnnotationsLayout();
            }
        });
        disposableSubscribe2.getClass();
        compositeDisposable.b(disposableSubscribe2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void createAnnotation(Map<AnnotationId.Specific, Annotation> list, AnnotationId.Specific id, AnnotationConfiguration command) {
        if (command.getSetting() != null && command.getPosition() != null && command.getColor() != null) {
            if (Intrinsics.c(command.getSetting(), SettingKt.getPointerSetting())) {
                list.put(id, new PointerAnnotation(this.view, command.getPosition(), command.getColor()));
                return;
            } else {
                list.put(id, new ResourceAnnotation(this.view, command.getPosition(), command.getColor(), command.getScale(), command.getRotation(), command.getSetting(), this.mainScheduler));
                movePointerToFront();
                return;
            }
        }
        if (command.getLine() != null && command.getColor() != null) {
            list.put(id, new LineAnnotation(this.view, command.getLine(), command.getColor()));
            movePointerToFront();
        } else {
            if (command.getPosition() == null || command.getColor() == null || command.getText() == null) {
                return;
            }
            list.put(id, new TextAnnotation(this.view, command.getPosition(), command.getColor(), command.getScale(), command.getText()));
            movePointerToFront();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AnnotationConfiguration createConfiguration(AnnotationParameters annotationParameters, Setting setting) {
        return new AnnotationConfiguration(annotationParameters.getSenderId(), annotationParameters.getAnnotationId(), annotationParameters.getDelete(), annotationParameters.getFadeOut(), annotationParameters.getFadeOutCompletion(), setting, annotationParameters.getPosition(), annotationParameters.getLine(), annotationParameters.getScale(), annotationParameters.getRotation(), annotationParameters.getColor(), annotationParameters.getText());
    }

    private final void deleteAllAnnotations() {
        Iterator<Map.Entry<AnnotationId.Specific, Annotation>> it = this.localAnnotationList.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().delete();
        }
        this.localAnnotationList.clear();
        Iterator<T> it2 = this.remoteAnnotationList.values().iterator();
        while (it2.hasNext()) {
            Iterator it3 = ((Map) it2.next()).values().iterator();
            while (it3.hasNext()) {
                ((Annotation) it3.next()).delete();
            }
        }
        this.remoteAnnotationList.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleDeleteAnnotationCommand(Map<AnnotationId.Specific, Annotation> list, AnnotationId annotationId) {
        if (Intrinsics.c(annotationId, AnnotationId.All.INSTANCE)) {
            deleteAllAnnotations();
            return;
        }
        if (!(annotationId instanceof AnnotationId.Specific)) {
            v40.g();
            return;
        }
        Annotation annotation = list.get(annotationId);
        if (annotation != null) {
            annotation.delete();
        }
        list.remove(annotationId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleFadeOutAnnotationCommand(Map<AnnotationId.Specific, Annotation> list, AnnotationId annotationId, Function0<Unit> completion) {
        if (Intrinsics.c(annotationId, AnnotationId.All.INSTANCE)) {
            return;
        }
        if (!(annotationId instanceof AnnotationId.Specific)) {
            v40.g();
            return;
        }
        Annotation annotation = list.get(annotationId);
        if (annotation != null) {
            annotation.fadeOut(completion);
        }
    }

    private final Unit moveAnnotationToFront(Map<AnnotationId.Specific, Annotation> map, AnnotationId.Specific annotationId) {
        Annotation annotation = map.get(annotationId);
        if (annotation == null) {
            return null;
        }
        annotation.moveToFront();
        return Unit.f71739a;
    }

    private final void movePointerToFront() {
        movePointerToFront(this.localAnnotationList);
        Iterator<T> it = this.remoteAnnotationList.values().iterator();
        while (it.hasNext()) {
            movePointerToFront((Map) it.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void update(Annotation annotation, AnnotationConfiguration annotationConfiguration) {
        AnnotationPosition line = annotationConfiguration.getLine();
        if (line != null) {
            AddPosition addPosition = annotation instanceof AddPosition ? (AddPosition) annotation : null;
            if (addPosition != null) {
                addPosition.add(line);
            }
        }
        AnnotationColor color = annotationConfiguration.getColor();
        if (color != null) {
            SetColor setColor = annotation instanceof SetColor ? (SetColor) annotation : null;
            if (setColor != null) {
                setColor.set(color);
            }
        }
        AnnotationScale scale = annotationConfiguration.getScale();
        if (scale != null) {
            SetScale setScale = annotation instanceof SetScale ? (SetScale) annotation : null;
            if (setScale != null) {
                setScale.set(scale);
            }
        }
        AnnotationPosition position = annotationConfiguration.getPosition();
        if (position != null) {
            SetPosition setPosition = annotation instanceof SetPosition ? (SetPosition) annotation : null;
            if (setPosition != null) {
                setPosition.set(position);
            }
        }
        AnnotationRotation rotation = annotationConfiguration.getRotation();
        if (rotation != null) {
            SetRotation setRotation = annotation instanceof SetRotation ? (SetRotation) annotation : null;
            if (setRotation != null) {
                setRotation.set(rotation);
            }
        }
        Setting setting = annotationConfiguration.getSetting();
        if (setting != null) {
            SetSetting setSetting = annotation instanceof SetSetting ? (SetSetting) annotation : null;
            if (setSetting != null) {
                setSetting.set(setting);
            }
        }
        TextParameters text = annotationConfiguration.getText();
        if (text != null) {
            SetText setText = annotation instanceof SetText ? (SetText) annotation : null;
            if (setText != null) {
                setText.set(text);
            }
        }
        annotation.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateAnnotationsLayout() {
        Iterator<Map.Entry<AnnotationId.Specific, Annotation>> it = this.localAnnotationList.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().reloadLayout();
        }
        Iterator<T> it2 = this.remoteAnnotationList.values().iterator();
        while (it2.hasNext()) {
            Iterator it3 = ((Map) it2.next()).values().iterator();
            while (it3.hasNext()) {
                ((Annotation) it3.next()).reloadLayout();
            }
        }
    }

    @Override // com.sightcall.advancedannotations.domain.drawer.AnnotationDrawer
    public void clear() {
        deleteAllAnnotations();
        this.disposables.d();
    }

    private final void movePointerToFront(Map<AnnotationId.Specific, Annotation> map) {
        moveAnnotationToFront(map, new AnnotationId.Specific(0));
    }
}
