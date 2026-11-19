package com.sightcall.advancedannotations.domain.parser;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\f\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b \u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH&J\u000e\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\fR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001e\u0010\u000e\u001a\u0004\u0018\u00018\u0000X\u0084\u000e¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0014\u001a\u0004\u0018\u00018\u00008F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0010¨\u0006\u0016"}, d2 = {"Lcom/sightcall/advancedannotations/domain/parser/InstructionParser;", "T", "", "delimiter", "", "<init>", "(C)V", "getDelimiter", "()C", "parseComponent", "", "string", "", "parse", "value", "getValue", "()Ljava/lang/Object;", "setValue", "(Ljava/lang/Object;)V", "Ljava/lang/Object;", "parsedValue", "getParsedValue", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class InstructionParser<T> {
    private final char delimiter;
    private T value;

    public InstructionParser(char c2) {
        this.delimiter = c2;
    }

    public final char getDelimiter() {
        return this.delimiter;
    }

    public final T getParsedValue() {
        return this.value;
    }

    public final T getValue() {
        return this.value;
    }

    public final String parse(String string) {
        string.getClass();
        return string.substring(parseComponent(string));
    }

    public abstract int parseComponent(String string);

    public final void setValue(T t) {
        this.value = t;
    }
}
