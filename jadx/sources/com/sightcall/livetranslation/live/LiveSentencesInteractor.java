package com.sightcall.livetranslation.live;

import com.sightcall.livetranslation.domain.LiveTranslationSettings;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/sightcall/livetranslation/live/LiveSentencesInteractor;", "", "State", "LiveSentence", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface LiveSentencesInteractor {

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0007HÆ\u0003J'\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0014\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0017\u001a\u00020\u0018HÖ\u0081\u0004J\n\u0010\u0019\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;", "", "message", "", "color", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;", "fontSize", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;", "<init>", "(Ljava/lang/String;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;)V", "getMessage", "()Ljava/lang/String;", "getColor", "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;", "getFontSize", "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LiveSentence {
        private final LiveTranslationSettings.Enabled.Color color;
        private final LiveTranslationSettings.Enabled.FontSize fontSize;
        private final String message;

        public LiveSentence(String str, LiveTranslationSettings.Enabled.Color color, LiveTranslationSettings.Enabled.FontSize fontSize) {
            str.getClass();
            color.getClass();
            fontSize.getClass();
            this.message = str;
            this.color = color;
            this.fontSize = fontSize;
        }

        public static /* synthetic */ LiveSentence copy$default(LiveSentence liveSentence, String str, LiveTranslationSettings.Enabled.Color color, LiveTranslationSettings.Enabled.FontSize fontSize, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = liveSentence.message;
            }
            if ((i2 & 2) != 0) {
                color = liveSentence.color;
            }
            if ((i2 & 4) != 0) {
                fontSize = liveSentence.fontSize;
            }
            return liveSentence.copy(str, color, fontSize);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getMessage() {
            return this.message;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final LiveTranslationSettings.Enabled.Color getColor() {
            return this.color;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final LiveTranslationSettings.Enabled.FontSize getFontSize() {
            return this.fontSize;
        }

        public final LiveSentence copy(String message, LiveTranslationSettings.Enabled.Color color, LiveTranslationSettings.Enabled.FontSize fontSize) {
            message.getClass();
            color.getClass();
            fontSize.getClass();
            return new LiveSentence(message, color, fontSize);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof LiveSentence)) {
                return false;
            }
            LiveSentence liveSentence = (LiveSentence) other;
            return Intrinsics.c(this.message, liveSentence.message) && Intrinsics.c(this.color, liveSentence.color) && this.fontSize == liveSentence.fontSize;
        }

        public final LiveTranslationSettings.Enabled.Color getColor() {
            return this.color;
        }

        public final LiveTranslationSettings.Enabled.FontSize getFontSize() {
            return this.fontSize;
        }

        public final String getMessage() {
            return this.message;
        }

        public int hashCode() {
            return this.fontSize.hashCode() + ((this.color.hashCode() + (this.message.hashCode() * 31)) * 31);
        }

        public String toString() {
            return "LiveSentence(message=" + this.message + ", color=" + this.color + ", fontSize=" + this.fontSize + ")";
        }
    }

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0006HÆ\u0003J#\u0010\u000f\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0014\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0013\u001a\u00020\u0014HÖ\u0081\u0004J\n\u0010\u0015\u001a\u00020\u0016HÖ\u0081\u0004R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, d2 = {"Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;", "", "liveSentences", "", "Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;", "containerHeight", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Height;", "<init>", "(Ljava/util/List;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Height;)V", "getLiveSentences", "()Ljava/util/List;", "getContainerHeight", "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Height;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class State {
        private final LiveTranslationSettings.Enabled.Height containerHeight;
        private final List<LiveSentence> liveSentences;

        public State(List<LiveSentence> list, LiveTranslationSettings.Enabled.Height height) {
            list.getClass();
            height.getClass();
            this.liveSentences = list;
            this.containerHeight = height;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ State copy$default(State state, List list, LiveTranslationSettings.Enabled.Height height, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                list = state.liveSentences;
            }
            if ((i2 & 2) != 0) {
                height = state.containerHeight;
            }
            return state.copy(list, height);
        }

        public final List<LiveSentence> component1() {
            return this.liveSentences;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final LiveTranslationSettings.Enabled.Height getContainerHeight() {
            return this.containerHeight;
        }

        public final State copy(List<LiveSentence> liveSentences, LiveTranslationSettings.Enabled.Height containerHeight) {
            liveSentences.getClass();
            containerHeight.getClass();
            return new State(liveSentences, containerHeight);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof State)) {
                return false;
            }
            State state = (State) other;
            return Intrinsics.c(this.liveSentences, state.liveSentences) && Intrinsics.c(this.containerHeight, state.containerHeight);
        }

        public final LiveTranslationSettings.Enabled.Height getContainerHeight() {
            return this.containerHeight;
        }

        public final List<LiveSentence> getLiveSentences() {
            return this.liveSentences;
        }

        public int hashCode() {
            return this.containerHeight.hashCode() + (this.liveSentences.hashCode() * 31);
        }

        public String toString() {
            return "State(liveSentences=" + this.liveSentences + ", containerHeight=" + this.containerHeight + ")";
        }
    }
}
