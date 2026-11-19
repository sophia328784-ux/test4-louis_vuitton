package com.sightcall.advancedannotations.domain.parser;

import com.sightcall.advancedannotations.AdvancedAnnotationsAPI;
import com.sightcall.advancedannotations.domain.drawer.AnnotationParameters;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b`\u0018\u00002\u00020\u0001:\u0002\u0004\u0005J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParser;", "", "clear", "", "In", "Out", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AdvancedAnnotationsParser {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParser$In;", "", "parseMessage", "", "message", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface In {
        void parseMessage(AdvancedAnnotationsAPI.InbandMessageAnnotation message);
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001R\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\u0006¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParser$Out;", "", "annotationParameters", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;", "getAnnotationParameters", "()Lio/reactivex/rxjava3/core/Observable;", "messageCommands", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;", "getMessageCommands", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Out {
        Observable<AnnotationParameters> getAnnotationParameters();

        Observable<AdvancedAnnotationsAPI.InbandMessageAnnotation> getMessageCommands();
    }

    void clear();
}
