package com.sightcall.advancedannotations.domain.parser;

import com.sightcall.advancedannotations.AdvancedAnnotationsAPI;
import com.sightcall.advancedannotations.domain.drawer.AnnotationColor;
import com.sightcall.advancedannotations.domain.drawer.AnnotationCommand;
import com.sightcall.advancedannotations.domain.drawer.AnnotationId;
import com.sightcall.advancedannotations.domain.drawer.AnnotationParameters;
import com.sightcall.advancedannotations.domain.drawer.AnnotationPosition;
import com.sightcall.advancedannotations.domain.drawer.AnnotationRotation;
import com.sightcall.advancedannotations.domain.drawer.AnnotationScale;
import com.sightcall.advancedannotations.domain.drawer.AnnotationSenderId;
import com.sightcall.advancedannotations.domain.drawer.ResourceId;
import com.sightcall.advancedannotations.domain.drawer.TextParameters;
import com.sightcall.advancedannotations.domain.event.EventInterpreter;
import com.sightcall.libraries.rx.Optional;
import com.sightcall.libraries.rx.SubscriptionsKt;
import defpackage.tr;
import defpackage.v40;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.observables.ConnectableObservable;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0010H\u0016J\b\u0010\u001f\u001a\u00020\u0016H\u0016J\u000e\u0010 \u001a\u0004\u0018\u00010\u001a*\u00020\u0010H\u0002J\f\u0010!\u001a\u00020\"*\u00020\u001aH\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR!\u0010\u000e\u001a\u0015\u0012\f\u0012\n \u0011*\u0004\u0018\u00010\u00100\u00100\u000f¢\u0006\u0002\b\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00100\u0019X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001c¨\u0006#"}, d2 = {"Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;", "Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParser;", "Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParser$In;", "Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParser$Out;", "eventInterpreter", "Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;", "senderIdGetter", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;", "<init>", "(Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;)V", "localSenderId", "", "getLocalSenderId", "()I", "inBandMessages", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;", "kotlin.jvm.PlatformType", "Lio/reactivex/rxjava3/annotations/NonNull;", "disposables", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "parseMessage", "", "message", "annotationParameters", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;", "getAnnotationParameters", "()Lio/reactivex/rxjava3/core/Observable;", "messageCommands", "getMessageCommands", "clear", "unSerialize", "serialize", "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AdvancedAnnotationsParserImpl implements AdvancedAnnotationsParser, AdvancedAnnotationsParser.In, AdvancedAnnotationsParser.Out {
    private final Observable<AnnotationParameters> annotationParameters;
    private final CompositeDisposable disposables;
    private final PublishSubject<AdvancedAnnotationsAPI.InbandMessageAnnotation> inBandMessages;
    private final Observable<AdvancedAnnotationsAPI.InbandMessageAnnotation> messageCommands;
    private final AdvancedAnnotationsAPI.SenderIdGetter senderIdGetter;

    public AdvancedAnnotationsParserImpl(EventInterpreter.Out out, AdvancedAnnotationsAPI.SenderIdGetter senderIdGetter) {
        out.getClass();
        senderIdGetter.getClass();
        this.senderIdGetter = senderIdGetter;
        PublishSubject<AdvancedAnnotationsAPI.InbandMessageAnnotation> publishSubject = new PublishSubject<>();
        this.inBandMessages = publishSubject;
        this.disposables = new CompositeDisposable();
        Observable<R> map = publishSubject.map(new Function() { // from class: com.sightcall.advancedannotations.domain.parser.AdvancedAnnotationsParserImpl$annotationParameters$1
            @Override // io.reactivex.rxjava3.functions.Function
            public final Optional<AnnotationParameters> apply(AdvancedAnnotationsAPI.InbandMessageAnnotation inbandMessageAnnotation) {
                Optional.Companion companion = Optional.INSTANCE;
                AdvancedAnnotationsParserImpl advancedAnnotationsParserImpl = this.this$0;
                inbandMessageAnnotation.getClass();
                return companion.ofNullable(advancedAnnotationsParserImpl.unSerialize(inbandMessageAnnotation));
            }
        });
        map.getClass();
        ConnectableObservable connectableObservableReplay = SubscriptionsKt.filterIfPresent(map).replay(1);
        connectableObservableReplay.c(new Consumer() { // from class: com.sightcall.advancedannotations.domain.parser.AdvancedAnnotationsParserImpl$annotationParameters$2
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Disposable disposable) {
                disposable.getClass();
                this.this$0.disposables.b(disposable);
            }
        });
        this.annotationParameters = connectableObservableReplay;
        Observable map2 = out.getAnnotationCommands().filter(new Predicate() { // from class: com.sightcall.advancedannotations.domain.parser.AdvancedAnnotationsParserImpl$messageCommands$1
            @Override // io.reactivex.rxjava3.functions.Predicate
            public final boolean test(AnnotationCommand annotationCommand) {
                annotationCommand.getClass();
                return annotationCommand.getTransmittable();
            }
        }).map(new Function() { // from class: com.sightcall.advancedannotations.domain.parser.AdvancedAnnotationsParserImpl$messageCommands$2
            @Override // io.reactivex.rxjava3.functions.Function
            public final AdvancedAnnotationsAPI.InbandMessageAnnotation apply(AnnotationCommand annotationCommand) {
                annotationCommand.getClass();
                return new AdvancedAnnotationsAPI.InbandMessageAnnotation(this.this$0.serialize(annotationCommand.getParameters()));
            }
        });
        map2.getClass();
        this.messageCommands = map2;
    }

    private final int getLocalSenderId() {
        return this.senderIdGetter.getUserId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String serialize(AnnotationParameters annotationParameters) {
        int id;
        Object objValueOf;
        int value;
        AnnotationSenderId senderId = annotationParameters.getSenderId();
        if (Intrinsics.c(senderId, AnnotationSenderId.Local.INSTANCE)) {
            id = getLocalSenderId();
        } else {
            if (!(senderId instanceof AnnotationSenderId.Remote)) {
                v40.g();
                return null;
            }
            id = ((AnnotationSenderId.Remote) annotationParameters.getSenderId()).getId();
        }
        String string = Integer.toString(id, CharsKt.checkRadix(16));
        string.getClass();
        String strG = tr.g("@", string);
        AnnotationId annotationId = annotationParameters.getAnnotationId();
        if (Intrinsics.c(annotationId, AnnotationId.All.INSTANCE)) {
            objValueOf = '*';
        } else {
            if (!(annotationId instanceof AnnotationId.Specific)) {
                v40.g();
                return null;
            }
            objValueOf = String.valueOf(((AnnotationId.Specific) annotationParameters.getAnnotationId()).getId());
        }
        StringBuilder sb = new StringBuilder();
        sb.append((Object) strG);
        sb.append(objValueOf);
        String string2 = sb.toString();
        if (annotationParameters.getDelete()) {
            return ((Object) string2) + "D";
        }
        ResourceId resourceId = annotationParameters.getResourceId();
        if (resourceId != null) {
            string2 = ((Object) string2) + tr.g("N", String.valueOf(resourceId.getValue()));
        }
        AnnotationPosition line = annotationParameters.getLine();
        if (line != null) {
            string2 = ((Object) string2) + tr.g("L", InstructionParserKt.serialize(line));
        }
        AnnotationPosition position = annotationParameters.getPosition();
        if (position != null) {
            string2 = ((Object) string2) + tr.g("P", InstructionParserKt.serialize(position));
        }
        AnnotationScale scale = annotationParameters.getScale();
        if (scale != null && !scale.isHundred()) {
            string2 = ((Object) string2) + tr.g("S", scale.getPercentString());
        }
        AnnotationRotation rotation = annotationParameters.getRotation();
        if (rotation != null && (value = rotation.getValue()) != 0) {
            if (value < 0) {
                value += 360;
            }
            string2 = ((Object) string2) + tr.g("R", String.valueOf(value));
        }
        AnnotationColor color = annotationParameters.getColor();
        if (color != null) {
            string2 = ((Object) string2) + tr.g("C", color.getValue());
        }
        TextParameters text = annotationParameters.getText();
        if (text == null) {
            return string2;
        }
        return ((Object) string2) + tr.g("T", InstructionParserKt.serialize(text.getPosition())) + "_" + text.getMessage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2, types: [com.sightcall.advancedannotations.domain.drawer.AnnotationSenderId] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [com.sightcall.advancedannotations.domain.drawer.AnnotationId] */
    /* JADX WARN: Type inference failed for: r15v2 */
    public final AnnotationParameters unSerialize(AdvancedAnnotationsAPI.InbandMessageAnnotation inbandMessageAnnotation) {
        AnnotationParameters annotationParameters;
        Object next;
        String strG = inbandMessageAnnotation.getMessage().charAt(0) != '@' ? tr.g("@", inbandMessageAnnotation.getMessage()) : inbandMessageAnnotation.getMessage();
        ArrayList arrayList = new ArrayList();
        AnnotationParser annotationParser = new AnnotationParser();
        arrayList.add(annotationParser);
        ResourceParser resourceParser = new ResourceParser();
        arrayList.add(resourceParser);
        DeleteParser deleteParser = new DeleteParser();
        arrayList.add(deleteParser);
        PositionParser positionParser = new PositionParser();
        arrayList.add(positionParser);
        LineParser lineParser = new LineParser();
        arrayList.add(lineParser);
        ScaleParser scaleParser = new ScaleParser();
        arrayList.add(scaleParser);
        RotationParser rotationParser = new RotationParser();
        arrayList.add(rotationParser);
        ColorParser colorParser = new ColorParser();
        arrayList.add(colorParser);
        TextParser textParser = new TextParser();
        arrayList.add(textParser);
        while (true) {
            try {
                if (!StringsKt.w(strG)) {
                    Iterator it = arrayList.iterator();
                    do {
                        if (!it.hasNext()) {
                            annotationParameters = null;
                            next = null;
                            break;
                        }
                        next = it.next();
                        annotationParameters = null;
                        try {
                        } catch (Exception unused) {
                            return null;
                        }
                    } while (strG.charAt(0) != ((InstructionParser) next).getDelimiter());
                    InstructionParser instructionParser = (InstructionParser) next;
                    if (instructionParser == null) {
                        break;
                    }
                    strG = instructionParser.parse(strG);
                } else {
                    annotationParameters = null;
                    break;
                }
            } catch (Exception unused2) {
                return null;
            }
        }
        Pair<? extends AnnotationSenderId, ? extends AnnotationId> parsedValue = annotationParser.getParsedValue();
        ?? r13 = parsedValue != null ? (AnnotationSenderId) parsedValue.f71705b : annotationParameters;
        Pair<? extends AnnotationSenderId, ? extends AnnotationId> parsedValue2 = annotationParser.getParsedValue();
        ?? r15 = parsedValue2 != null ? (AnnotationId) parsedValue2.f71706c : annotationParameters;
        if (r13 == 0 || r15 == 0) {
            return annotationParameters;
        }
        ResourceId parsedValue3 = resourceParser.getParsedValue();
        Boolean parsedValue4 = deleteParser.getParsedValue();
        return new AnnotationParameters(r13, false, r15, parsedValue4 != null ? parsedValue4.booleanValue() : false, false, null, parsedValue3, positionParser.getParsedValue(), lineParser.getParsedValue(), scaleParser.getParsedValue(), rotationParser.getParsedValue(), colorParser.getParsedValue(), textParser.getParsedValue(), 50, null);
    }

    @Override // com.sightcall.advancedannotations.domain.parser.AdvancedAnnotationsParser
    public void clear() {
        this.disposables.d();
    }

    @Override // com.sightcall.advancedannotations.domain.parser.AdvancedAnnotationsParser.Out
    public Observable<AnnotationParameters> getAnnotationParameters() {
        return this.annotationParameters;
    }

    @Override // com.sightcall.advancedannotations.domain.parser.AdvancedAnnotationsParser.Out
    public Observable<AdvancedAnnotationsAPI.InbandMessageAnnotation> getMessageCommands() {
        return this.messageCommands;
    }

    @Override // com.sightcall.advancedannotations.domain.parser.AdvancedAnnotationsParser.In
    public void parseMessage(AdvancedAnnotationsAPI.InbandMessageAnnotation message) {
        message.getClass();
        this.inBandMessages.onNext(message);
    }
}
