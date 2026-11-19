package com.sightcall.livetranslation.domain;

import com.sightcall.libraries.archi.nucleus.Action;
import com.sightcall.libraries.archi.nucleus.Command;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.operators.single.SingleTimer;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Lcom/sightcall/livetranslation/domain/TimeOutSentence;", "Lcom/sightcall/libraries/archi/nucleus/Command;", "sentence", "Lcom/sightcall/livetranslation/domain/Sentence;", "sentenceTimeOut", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$SentenceTimeOut;", "<init>", "(Lcom/sightcall/livetranslation/domain/Sentence;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$SentenceTimeOut;)V", "getSentence", "()Lcom/sightcall/livetranslation/domain/Sentence;", "getSentenceTimeOut", "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$SentenceTimeOut;", "execute", "Lio/reactivex/rxjava3/core/Single;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TimeOutSentence implements Command {
    private final Sentence sentence;
    private final LiveTranslationSettings.Enabled.SentenceTimeOut sentenceTimeOut;

    public TimeOutSentence(Sentence sentence, LiveTranslationSettings.Enabled.SentenceTimeOut sentenceTimeOut) {
        sentence.getClass();
        sentenceTimeOut.getClass();
        this.sentence = sentence;
        this.sentenceTimeOut = sentenceTimeOut;
    }

    @Override // com.sightcall.libraries.archi.nucleus.Command
    public Single<Action> execute() {
        long value = this.sentenceTimeOut.getValue();
        Scheduler scheduler = Schedulers.f71155a;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return new SingleTimer(value, timeUnit, scheduler).d(new Function() { // from class: com.sightcall.livetranslation.domain.TimeOutSentence.execute.1
            @Override // io.reactivex.rxjava3.functions.Function
            public final Action apply(Long l) {
                l.getClass();
                return new LiveTranslationInteractor.SentenceTimedOut(TimeOutSentence.this.getSentence());
            }
        });
    }

    public final Sentence getSentence() {
        return this.sentence;
    }

    public final LiveTranslationSettings.Enabled.SentenceTimeOut getSentenceTimeOut() {
        return this.sentenceTimeOut;
    }
}
