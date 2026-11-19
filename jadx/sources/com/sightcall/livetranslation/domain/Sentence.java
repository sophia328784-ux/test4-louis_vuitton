package com.sightcall.livetranslation.domain;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0012\u001a\u00020\u0013HÖ\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/sightcall/livetranslation/domain/Sentence;", "", "text", "", "color", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;", "<init>", "(Ljava/lang/String;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;)V", "getText", "()Ljava/lang/String;", "getColor", "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Sentence {
    private final LiveTranslationSettings.Enabled.Color color;
    private final String text;

    public Sentence(String str, LiveTranslationSettings.Enabled.Color color) {
        str.getClass();
        color.getClass();
        this.text = str;
        this.color = color;
    }

    public static /* synthetic */ Sentence copy$default(Sentence sentence, String str, LiveTranslationSettings.Enabled.Color color, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = sentence.text;
        }
        if ((i2 & 2) != 0) {
            color = sentence.color;
        }
        return sentence.copy(str, color);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getText() {
        return this.text;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final LiveTranslationSettings.Enabled.Color getColor() {
        return this.color;
    }

    public final Sentence copy(String text, LiveTranslationSettings.Enabled.Color color) {
        text.getClass();
        color.getClass();
        return new Sentence(text, color);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Sentence)) {
            return false;
        }
        Sentence sentence = (Sentence) other;
        return Intrinsics.c(this.text, sentence.text) && Intrinsics.c(this.color, sentence.color);
    }

    public final LiveTranslationSettings.Enabled.Color getColor() {
        return this.color;
    }

    public final String getText() {
        return this.text;
    }

    public int hashCode() {
        return this.color.hashCode() + (this.text.hashCode() * 31);
    }

    public String toString() {
        return "Sentence(text=" + this.text + ", color=" + this.color + ")";
    }
}
